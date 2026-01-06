# Project Scope - Template

## Description
- Brief description of the project and its intended purpose.

## In Scope
- Features or functionality included in this project

## Out of Scope
- Features or functionality explicitly not included

## Assumptions
- Key assumptions made during development

## Constraints
- Known technical, time, or resource constraints

---
### Entry Added on 2026-01-06 19:31:27

## Update of Project Scope for ROS2 C++ Package

### TODAY'S DATE: 2026-01-06
# Project Scope 

## Description
- This project is a pure C++ ROS2 package named `project_1`. It is designed to demonstrate basic publisher and subscriber functionality using ROS2. The package includes a minimal publisher that sends "Hello, World!" messages with an incrementing counter and a minimal subscriber that listens to these messages.

## In Scope
- Implementation of a ROS2 publisher node (`MinimalPublisher`) that publishes messages to the topic `/project_1_example_topic` at a frequency of 2Hz.
- Implementation of a ROS2 subscriber node (`MinimalSubscriber`) that subscribes to the topic `/project_1_example_topic` and processes incoming messages.
- Unit tests for the publisher to verify node name, publisher count, message content, and counter increment functionality.
- Unit tests for the subscriber to verify callback triggering and message processing.

## Out of Scope
- Integration with other ROS2 packages or systems.
- Advanced message types or complex data processing.
- Real-time performance optimizations or deployment on hardware.

## Assumptions
- The ROS2 environment is properly set up and configured to run C++ nodes.
- The package dependencies (`rclcpp`, `std_msgs`, `ament_cmake`, `ament_cmake_gtest`) are correctly installed and available.

## Constraints
- The project is constrained to using the Apache License 2.0.
- The implementation is limited to the use of C++ and the ROS2 framework.
- The publisher and subscriber are designed to communicate over a single topic with a fixed Quality of Service (QoS) setting.