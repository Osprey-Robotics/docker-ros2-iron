FROM ros:iron-ros-core-jammy

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
	python3-colcon-package-selection \
	python3-colcon-ros \
	ros-iron-desktop \
	ros-iron-controller-manager \
	ros-iron-joint-limits \
	ros-iron-joint-state-publisher \
	ros-iron-joy-linux \
	ros-iron-joy-teleop \
	ros-iron-ros2-controllers \
	ros-iron-rplidar-ros \
	ros-iron-slam-toolbox \
	ros-iron-teleop-twist-keyboard \
	ros-iron-xacro \
	&& rm -rf /var/lib/apt/lists/*

mkdir -p /opt/ros_ws/src