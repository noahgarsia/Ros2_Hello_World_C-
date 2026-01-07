#!/usr/bin/env bash
set -e

# Run publisher in BACKGROUND
echo "Starting publisher in background..."

ros2 run project_1 cpp_minimal_publisher &
PUBLISHER_PID=$!

echo "Starting subscriber in foreground..."
echo "Running for 5 seconds..."

# Run subscriber in FOREGROUND for 5 seconds
timeout 5 ros2 run project_1 cpp_minimal_subscriber || true

echo "Subscriber finished, cleaning up publisher..."
kill $PUBLISHER_PID 2>/dev/null || true

sleep 1
# Run tests
echo "Running tests..."
colcon test --packages-select project_1
colcon test-result --verbose

echo "Shutdown complete"

