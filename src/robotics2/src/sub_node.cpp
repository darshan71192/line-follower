#include <iostream>
#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <sensor_msgs/Range.h>
#include <sensor_msgs/Illuminance.h>
#include <sensor_msgs/JointState.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <sensor_msgs/Imu.h>
#include <tf/LinearMath/Quaternion.h>
#include <tf/LinearMath/Matrix3x3.h>
#include <tf/transform_datatypes.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <termios.h>
#include <stdio.h>
#include <ctime>
#include <math.h>
#include <time.h>
#include <fstream>

using namespace sensor_msgs;
using namespace geometry_msgs;
using namespace message_filters;
using namespace std;

class Alignment
{
  private:
	ros::NodeHandle nh_;
	ros::Publisher pub;
	ros::Publisher pub1;

	message_filters::Subscriber<sensor_msgs::Range> range_1;
	message_filters::Subscriber<sensor_msgs::Illuminance> color_2;
	message_filters::Subscriber<sensor_msgs::Imu> gyro_3;
	message_filters::Subscriber<sensor_msgs::JointState> jointState_4;

	typedef sync_policies::ApproximateTime<sensor_msgs::Range, sensor_msgs::Illuminance, sensor_msgs::Imu, sensor_msgs::JointState> MySyncPolicy;
	Synchronizer<MySyncPolicy> sync;

  public:
	Alignment(ros::NodeHandle &nh) : range_1(nh_, "/ultrasonic", 10),
									 color_2(nh_, "/color", 10),
									 gyro_3(nh_, "/gyro", 10),
									 jointState_4(nh_, "/ev3dev/joint_states", 10),
									 sync(MySyncPolicy(10), range_1, color_2, gyro_3, jointState_4)
	{
		nh_ = nh;
		sync.registerCallback(boost::bind(&Alignment::callback, this, _1, _2, _3, _4));
		pub = nh_.advertise<std_msgs::Float64>("/ev3dev/OutPortA/command", 1);
		pub1 = nh_.advertise<std_msgs::Float64>("/ev3dev/OutPortB/command", 1);
	}

	void callback(const sensor_msgs::RangeConstPtr &msg1, const sensor_msgs::IlluminanceConstPtr &msg2, const sensor_msgs::ImuConstPtr &msg3, const sensor_msgs::JointStateConstPtr &msg4)
	{
		std_msgs::Float64 motor_a;
		motor_a.data = 5.0;
		std_msgs::Float64 motor_b;
		motor_b.data = 10.0;

		cout << "obstcale=: " << msg1->range << endl
			 << "reflection: " << msg2->illuminance << endl
			 << "oriantation=: " << msg3->orientation << endl
			 << "position=: " << msg4->position[0] << endl;

		pub.publish(motor_a);
		pub1.publish(motor_b);
	}
};

int main(int argc, char **argv)
{
	ros::init(argc, argv, "Subscriber_Node");

	ros::NodeHandle nh;

	Alignment matching(nh);

	ros::spin();

	return 0;
}
