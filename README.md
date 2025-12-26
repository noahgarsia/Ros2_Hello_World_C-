## ROS2 C++ Hello World
Freelancing
This repository is part of my robotics portfolio. I’m open to freelance, contract, and collaborative work involving ROS 2 and robotics software development.

## Overview
This repository contains a minimal ROS2 C++ project demonstrating the C++ publisher and subscriber. The publisher operates from a counter in a indefinate loop. The subsriber users the counter and for every increment of it pulbish the "hello world + increment".

## Project Structure
.
├── Dockerfile
├── README.md
└── src
    └── project_1
        ├── CMakeLists.txt
        ├── cpp
        │   ├── cpp_minimal_publisher.cpp
        │   ├── cpp_minimal_subscriber.cpp
        │   ├── publisher_main.cpp
        │   └── subscriber_main.cpp
        ├── include
        │   └── project_1
        ├── launch
        │   └── cpp_launcher.sh
        ├── package.xml
        └── test
            └── gtest

## Build the Workspace
All required dependencies for this package are listed in the package.xml file. After installing the dependencies, run colcon build to build the workspace.

When the build completes successfully, the executables are placed in the install/ directory by colcon. This step is required before the nodes can be executed.

The publisher can then be started using the provided launch script: ros2 launcher pub.sh.

Expected Results
The expected result is an indefinite loop in which a counter starts at 1 and increments by 1 at a fixed interval of 0.5 milliseconds.

On each increment, the publisher outputs the message: Hello World + counter

## Nodes
Publisher Node

The publisher node generates an incrementing counter and publishes its value to a topic at a fixed interval. It continuously logs the current counter value to the console and updates the count on each publish cycle. This node runs indefinitely until the user terminates execution (Ctrl + C).

## Subscriber Node

The subscriber node listens to the topic /project_1_example_topic. For each message received, it appends the counter value to a "Hello World" string and prints the result to the console. The subscriber runs continuously until manually stopped by the user.

## Topics & Message Types

Topic name: /project_1_example_topic 
Message type: std_msgs/msg/String

## How to Clone it
This project is released under the MIT License and can be cloned directly into a ROS 2 workspace. To get started, create or navigate to a fresh ROS 2 workspace and move into the src directory. Clone the repository into this directory, then return to the root of the workspace and build the project using colcon build. Once the build completes successfully, source the workspace with source install/setup.bash so ROS 2 can locate the package. After sourcing, the nodes can be launched using the provided launch file and will continue running until the user terminates execution with Ctrl + C.