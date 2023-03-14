FROM ros:humble-ros-core

RUN apt-get update && apt-get install -y \
    ros-humble-dynamixel-sdk \
    ros-humble-turtlebot3-msgs \
    ros-humble-turtlebot3 

SHELL ["/bin/bash", "-c"] 

ENV LDS_MODEL=LDS-01
ENV TURTLEBOT3_MODEL=burger
CMD ros2 launch turtlebot3_bringup robot.launch.py