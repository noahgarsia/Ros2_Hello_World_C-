# Issues

This file tracks known issues, limitations, and blockers that affect system behaviour, reliability, or development progress.

---

## Issue

### Description
Brief description of the issue.

### Impact
Describe how this issue affects system behaviour or development.

### Conditions
When and where the issue 

### Current Status
Open / Mitigated / Deferred

### Workaround - Optional
Describe any temporary mitigation options

### Notes
Additional context or observations.


---
### Entry Added on 2026-01-06 20:07:20

## Update to ROS2 Engineering Log Book with Known Issues

### TODAY'S DATE: 2026-01-06

# Issues

This file tracks known issues, limitations, and blockers that affect system behaviour, reliability, or development progress.

---

## Issue

### Description
There are no known issues identified in the current implementation of the ROS2 package `project_1`. The package includes a minimal publisher and subscriber, both of which have been tested using Google Test. The tests verify the correct operation of the publisher and subscriber, including message publishing, subscriber callback triggering, and message content processing.

### Impact
No impact on system behaviour or development progress as no issues have been identified.

### Conditions
N/A

### Current Status
Open

### Workaround - Optional
N/A

### Notes
The package is a pure C++ ROS2 package using `ament_cmake` as the build tool. It includes dependencies on `rclcpp` and `std_msgs`, and the tests confirm the expected functionality of the publisher and subscriber nodes.