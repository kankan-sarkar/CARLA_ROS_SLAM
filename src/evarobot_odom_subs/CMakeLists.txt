cmake_minimum_required(VERSION 2.8.3)
project(evarobot_odom_subs)

find_package(catkin REQUIRED COMPONENTS
  nav_msgs
  roscpp
  rospy
  tf
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(odom_listener src/odom_listener.cpp)
add_dependencies(odom_listener nav_msgs_generate_messages_cpp)
 target_link_libraries(odom_listener
   ${catkin_LIBRARIES}
 )
