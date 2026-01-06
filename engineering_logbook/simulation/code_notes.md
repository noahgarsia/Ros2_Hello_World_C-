# Simulation Notes
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
Additional observations, trade-offs, assumptions, or follow-up 
items.


---
# Entry Added on 2026-01-06 20:02:11

## Update of ROS2 Package with Publisher and Subscriber Nodes

## Date
2026-01-06

## Author
Noah

## Component
ROS2 Package `project_1`

## File_Name
- `package.xml`
- `cpp_minimal_publisher.cpp`
- `cpp_minimal_subscriber.cpp`
- `publisher_main.cpp`
- `subscriber_main.cpp`
- `minimal_publisher.hpp`
- `minimal_subscriber.hpp`
- `test_publisher.cpp`
- `test_subscriber.cpp`

## Change
- Implemented a minimal publisher node (`MinimalPublisher`) that publishes "Hello, World!" messages with an incrementing counter to the topic `/project_1_example_topic`.
- Implemented a minimal subscriber node (`MinimalSubscriber`) that listens to the same topic and logs received messages.
- Added unit tests for both publisher and subscriber using Google Test framework to verify functionality:
  - Publisher node name and number of publishers.
  - Publisher message content.
  - Publisher message counter increment.
  - Subscriber callback trigger and message processing.

## Reason
To create a basic ROS2 package with a publisher and subscriber for demonstration and testing purposes. The unit tests ensure that the nodes function correctly and meet expected behaviors.

## Validation
- The publisher and subscriber nodes were tested using Google Test.
- Tests verified the correct node name, single publisher existence, message content, and counter increment for the publisher.
- Tests verified the subscriber callback was triggered and processed messages correctly.

## Notes
- The publisher publishes messages at a rate of 2Hz.
- The subscriber does not use intra-process communication to avoid unnecessary overhead.
- The tests ensure isolation by creating fresh instances of nodes for each test case.