#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include <tf/transform_broadcaster.h>

/**
 * This tutorial demonstrates simple receipt of position and speed of the Evarobot over the ROS system.
 */

/**
 * Callback function executes when new topic data comes.
 * Task of the callback function is to print data to screen.
 */
void updateOdometry(const double , const double , const ros::Time &);
void chatterCallback(const nav_msgs::Odometry::ConstPtr& );

double x;
double y;
double th;
double vx=0.0,vth=0.0;
ros::Time stamp;
ros::Publisher odom_pub;
ros::Subscriber sub;
tf::TransformBroadcaster odom_broadcaster;


int main(int argc, char **argv)
{

  ros::init(argc, argv, "odom_listener");
  ros::NodeHandle n;
  odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
  sub = n.subscribe("/carla/ego_vehicle/odometry", 1000, chatterCallback);
  ros::spin();
  return 0;
}

  void chatterCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
  ROS_INFO("Seq: [%d]", msg->header.seq);
  ROS_INFO("Position-> x: [%f], y: [%f], z: [%f]", msg->pose.pose.position.x,msg->pose.pose.position.y, msg->pose.pose.position.z);
  ROS_INFO("Orientation-> x: [%f], y: [%f], z: [%f], w: [%f]", msg->pose.pose.orientation.x, msg->pose.pose.orientation.y, msg->pose.pose.orientation.z, msg->pose.pose.orientation.w);
  ROS_INFO("Vel-> Lineasr: [%f], Angular: [%f]", msg->twist.twist.linear.x,msg->twist.twist.angular.z);
  geometry_msgs::TransformStamped odom_trans;
  geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(msg->pose.pose.orientation.z);
  odom_trans.header.stamp =  ros::Time::now();;
  odom_trans.header.frame_id = "odom";
  odom_trans.child_frame_id = "base_link";
  odom_trans.transform.translation.x = msg->pose.pose.position.x;
  odom_trans.transform.translation.y = msg->pose.pose.position.y;
  odom_trans.transform.translation.z = msg->pose.pose.position.z;
  odom_trans.transform.rotation = odom_quat;
  //send the transform
  odom_broadcaster.sendTransform(odom_trans);
}