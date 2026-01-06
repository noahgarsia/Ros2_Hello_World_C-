# Notes - Perception Structure
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
# Entry 1
### Entry Added on 2026-01-06 18:44:06
## Date
2026-01-06

## Author
Noah

## Component
MinimalPublisher Node in the project_1 package

## File_Name
- src/project_1/cpp/cpp_minimal_publisher.cpp
- src/project_1/include/project_1/minimal_publisher.hpp
- src/project_1/test/gtest/test_publisher.cpp

## Change
The C++ code for the MinimalPublisher node was organized with a Python MinimalPublisher to ensure there is no crossover with Python components, allowing the launch file to function correctly. The CMakeLists is now clean, within a newworkspace focusing solely on the C++ implementation.

## Reason
The change was made to separate C++ and Python components, ensuring that the launch file works correctly without any conflicts. The focus was on the publisher as it is the component responsible for providing data in the perception system.

## Validation
The changes were validated using Google Test unit tests. The tests confirmed that the node name is correct, there is only one publisher on the topic, the publisher sends "Hello, World!" messages, and the message counter increments as expected.

## Notes
The focus was on the publisher as it is the key component in the perception system becuase it is responsible for publishing the data so the Subsciber can uses it for control decisions. 