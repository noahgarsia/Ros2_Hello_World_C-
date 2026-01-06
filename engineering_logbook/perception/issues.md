# Issues

This file tracks known issues, limitations, and blockers that 
affect system behaviour, reliability, or development progress.

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
# Entry Added on 2026-01-06 19:13:30
## Issue

### Description
There are no known issues identified in the current implementation of the `project_1` package. The package includes a minimal publisher and subscriber, both of which have been tested using Google Test. The tests verify the correct functionality of node naming, message publishing, message content, and subscriber callback triggering.

### Impact
No impact on system behaviour or development as no issues are present.

### Conditions
N/A

### Current Status
Open

### Workaround - Optional
N/A

### Notes
The package is a pure C++ ROS2 package using `rclcpp` and `std_msgs`. It includes unit tests that confirm the publisher sends messages correctly and the subscriber processes them as expected. The tests cover node naming, message content, and counter increments.