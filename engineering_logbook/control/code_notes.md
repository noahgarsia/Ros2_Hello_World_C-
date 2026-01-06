
# Template 
## Date
YYYY-MM-DD

## Author
Name of the person making the change.

## Component
Node, package, or subsystem affected.

## File_Name
Relevant file(s) modified.

## Change
What was added, modified, or removed.

## Reason
Why the change was made.

## Validation
How the change was verified (e.g. logs, simulation, hardware).

## Notes
Additional observations, trade-offs, assumptions, or follow-up items.

---
# Entry Added on 2026-01-06 21:28:15

## Implementation and Testing of MinimalPublisher and MinimalSubscriber Nodes

## Date
2026-01-06

## Author
Noah

## Component
MinimalPublisher and MinimalSubscriber Nodes in the project_1 package.

## File_Name
- `src/project_1/cpp/cpp_minimal_publisher.cpp`
- `src/project_1/include/project_1/minimal_publisher.hpp`
- `src/project_1/cpp/publisher_main.cpp`
- `src/project_1/cpp/cpp_minimal_subscriber.cpp`
- `src/project_1/include/project_1/minimal_subscriber.hpp`
- `src/project_1/cpp/subscriber_main.cpp`
- `src/project_1/test/gtest/test_publisher.cpp`
- `src/project_1/test/gtest/test_subscriber.cpp`

## Change
Implemented the MinimalPublisher and MinimalSubscriber nodes in C++. The publisher node publishes "Hello, World!" messages with an incrementing counter to a specific topic at 2Hz. The subscriber node listens to the same topic and logs the received messages. Unit tests were added to verify the functionality of both nodes.

## Reason
The implementation of these nodes is part of the project's requirement to demonstrate basic ROS2 communication using publishers and subscribers. The unit tests ensure that the nodes function correctly and meet the expected behavior.

## Validation
The changes were validated using Google Test unit tests. The tests confirmed that the publisher node correctly publishes messages and increments the counter, while the subscriber node successfully receives and processes the messages. The tests also verified the correct setup of node names and the number of publishers.

## Notes
- The publisher node uses a timer to publish messages at a fixed rate.
- The subscriber node processes messages and logs the output.
- The unit tests provide a framework for verifying node functionality and can be extended for future testing needs.