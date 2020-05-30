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
double seq;
ros::Time current_time;
double x,y,z,th,vel,thvel;
void chatterCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
ROS_INFO("Seq: [%d]", msg->header.seq);
ROS_INFO("Position-> x: [%f], y: [%f], z: [%f]", msg->pose.pose.position.x,msg->pose.pose.position.y, msg->pose.pose.position.z);
ROS_INFO("Orientation-> x: [%f], y: [%f], z: [%f], w: [%f]", msg->pose.pose.orientation.x, msg->pose.pose.orientation.y, msg->pose.pose.orientation.z, msg->pose.pose.orientation.w);
ROS_INFO("Vel-> Linfear: [%f], Angular: [%f]", msg->twist.twist.linear.x,msg->twist.twist.angular.z);
current_time= msg->header.stamp;
seq=msg->header.seq;
x=msg->pose.pose.position.x;
y=msg->pose.pose.position.y;
z=msg->pose.pose.position.z;
vel= msg->twist.twist.linear.x;
thvel=msg->twist.twist.angular.z;
th=msg->pose.pose.orientation.z;
}

int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "odom_listener");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
ros::NodeHandle n;
ros::Publisher odom_pub;
ros::Subscriber sub;

odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
tf::TransformBroadcaster odom_broadcaster;
/**
   * The subscribe() call is how you tell ROS that you want to receive messages
   * on a given topic.  This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing.  Messages are passed to a callback function, here
   * called chatterCallback.  subscribe() returns a Subscriber object that you
   * must hold on to until you want to unsubscribe.  When all copies of the Subscriber
   * object go out of scope, this callback will automatically be unsubscribed from
   * this topic.
   *
   * The second parameter to the subscribe() function is the size of the message
   * queue.  If messages are arriving faster than they are being processed, this
   * is the number of messages that will be buffered up before beginning to throw
   * away the oldest ones.
   */
    sub = n.subscribe("/carla/ego_vehicle/odometry", 1000, chatterCallback);

  /**
   * ros::spin() will enter a loop, pumping callbacks.  With this version, all
   * callbacks will be called from within this thread (the main one).  ros::spin()
   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
   */
  ros::Rate r(1.0);
  while(n.ok()){

    ros::spinOnce();
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);

    //first, we'll publish the transform over tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = current_time;
    odom_trans.header.seq = seq;
    odom_trans.header.frame_id = "map";
    odom_trans.child_frame_id = "base_link";

    odom_trans.transform.translation.x = x;
    odom_trans.transform.translation.y = y;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    //next, we'll publish the odometry message over ROS
    // nav_msgs::Odometry odom;
    // odom.header.stamp = current_time;
    // odom.header.frame_id = "odom";

    // //set the position
    // odom.pose.pose.position.x = x;
    // odom.pose.pose.position.y = y;
    // odom.pose.pose.position.z = 0.0;
    // odom.pose.pose.orientation = odom_quat;

    // //set the velocity
    // odom.child_frame_id = "base_link";
    // odom.twist.twist.linear.x = vx;
    // odom.twist.twist.linear.y = vy;
    // odom.twist.twist.angular.z = vth;

    //publish the message
    // odom_pub.publish(odom);
    // r.sleep();
  }

  return 0;
}
