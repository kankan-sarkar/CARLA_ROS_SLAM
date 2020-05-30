cmake_minimum_required(VERSION 2.8.3)
project(TfRemapper)

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

add_executable(tfremapper src/tfremapper.cpp)
add_dependencies(tfremapper nav_msgs_generate_messages_cpp)
 target_link_libraries(tfremapper
   ${catkin_LIBRARIES}
 )