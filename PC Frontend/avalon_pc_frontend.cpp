/*
This is the PC Frontend for the Avalon ROV (Remote Operated Vehicle). It's purpose is to facilitate
communication between the PC Control Interface and the ROV itself. This set of functions is designed to
form a library that can be imported and called by the Python script used to generate the interface.
Please visit our website for further details: https://www.facebook.com/AvalonROV/
ORIGINAL DEVELOPER: SAM MAXWELL
VERSION: 0.1
VERSION RELEASE DATE: ENTER DATE HERE
*/

//-------------------------------------------------------------------------------------------------------
//LIBRARIES
//-------------------------------------------------------------------------------------------------------
#include <cstdlib>
#include <ctime>
#include <iostream>

//-------------------------------------------------------------------------------------------------------
//NAMESPACES
//-------------------------------------------------------------------------------------------------------
using namespace std;

//-------------------------------------------------------------------------------------------------------
//DEFINITIONS
//-------------------------------------------------------------------------------------------------------
//ROV PARAMETERS
//Motion Parameters
#define ROV_NUM_AXIS 5    //The Number of Motion Axis available to the ROV
#define ROV_IMU_NUM_AXIS 6  //The Number of Motion Axis detected by the ROV IMU

//-------------------------------------------------------------------------------------------------------
//VARIABLES
//-------------------------------------------------------------------------------------------------------
//ROV VARIABLES
//Motion Variables
int rov_thrust_vals[ROV_NUM_AXIS] = {0};    //The current thrust values for each of the ROV Axis
int rov_imu_vals[ROV_IMU_NUM_AXIS] = {0};   //The current values of each of the IMU Axis
int rov_depth;    //The current depth of the ROV in meters
bool rov_stabilisation_flags[ROV_NUM_AXIS] = {0, 0, 0, 0, 0};   //Flags that set the state of ROV Axis Stabilisation

//-------------------------------------------------------------------------------------------------------
//TEST FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Generates a random float within a given range
INPUTS: int range_min = The minimum value the float can take
		int range_max = The maximum value the float can take
OUTPUTS: (float) The psuedo-randomly generated number
*/
float get_rand_float(int range_min, int range_max){
	float rand_num = rand() % range_max + range_min;
	if(rand() > (RAND_MAX / 2)){
		rand_num = -rand_num;
	}
	return rand_num;
}

//-------------------------------------------------------------------------------------------------------
//MOTION FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Sets thrust values for all ROV Axis
INPUTS: int thrust_vals[5] = An array containing the axis thrust values ==> {surge, sway, heave, pitch, yaw}
OUTPUTS: NONE
*/
void set_thrust_vals(int *thrust_vals[ROV_NUM_AXIS]){
  for(int axis_index = 0; axis_index < ROV_NUM_AXIS; axis_index++){
    set_thrust_val(axis_index; thrust_vals[axis_index]);
  }
}

/*
PURPOSE: Sets a single thrust value for an ROV Axis. Axis Indexes:
         Surge = 0
         Sway = 1
         Heave = 2
         Pitch = 3
         Yaw = 4
INPUTS: int axis_index = The index of the axis the thrust value is for
        int thrust_val = The value of thrust for the selected axis
OUTPUTS: NONE
*/
void set_thrust_val(int axis_index, int thrust_val){
  rov_thrust_vals[axis_index] = thrust_val;
}

/*
PURPOSE: Gets the current readings from the IMU
INPUTS: int *imu_vals = A pointer to an array that stores the IMU values ==> {x_accel, y_accel, z_accel, x_gyro, y_gyro, z_gyro}
OUTPUTS: NONE
*/
void get_imu_vals(int *imu_vals){
  for(int axis_index = 0; axis_index < ROV_IMU_NUM_AXIS; axis_index++){
    imu_vals[axis_index] = rov_imu_vals[axis_index];
  }
}

/*
PURPOSE: Gets the current ROV Depth Measurement
INPUTS: NONE
OUTPUTS: int depth = The current depth of the ROV in meters
*/
void get_depth(void){
  return rov_depth;
}

/*
PURPOSE: Sets the flags for the axis stabilisation settings of the ROV
INPUTS: bool stabilisation_flags = An array of flags that active or deactive axis stabilsation ==> {surge, sway, heave, pitch, yaw}
OUTPUTS: NONE
*/
void set_axis_stabilisation(bool *stabilisation_flags[ROV_NUM_AXIS]){
  for(int axis_index = 0; axis_index < ROV_NUM_AXIS; axis_index++){
    rov_stabilisation_flags[axis_index] = stabilisation_flags[axis_index];
  }
}

/*
PURPOSE: Sets the P, I and D values for a given access control loop
INPUTS: int loop_index = The index of the control loop to set the P, I and D values for
        int pid_vals[3] = The P, I and D values
OUTPUTS: NONE
*/
void set_pid_vals(int loop_index, int *pid_vals){
  //IMPLEMENT ONCE CONTROL LOOPS ARE FINALISED
}

/*
PURPOSE: Resets the Accumulated Integral and Derivative Values of the selected PID loop
INPUTS: int loop_index = The index of the control loop to reset the Accumulated Integral and Derivative Values for
OUTPUTS: NONE
*/
void reset_pid_vals(int loop_index){
  //IMPLEMENT ONCE CONTROL LOOPS ARE FINALISED
}

//-------------------------------------------------------------------------------------------------------
//LIFTING BAG FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Sets the state of the lifting bag release mechanism
INPUTS: char identifier = The unique character that corresponds to the lifting bag to be communicated with
		bool released = The state of the lifting bag release mechanism, TRUE = Released, FALSE = Locked
OUTPUTS: NONE
*/
void set_lift_bag_release(char identifier, bool released){
	
}

/*
PURPOSE: Sets the state of the lifting bag inflation mechanism
INPUTS: bool inflation_active = The state of the lifting bag inflation mechanism, TRUE = Enabled, FALSE = Disabled
OUTPUTS: NONE
*/
void set_lift_bag_inflation(bool inflation_active){
	
}

//-------------------------------------------------------------------------------------------------------
//GRABBING MANIPULATOR FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Sets the state of the grabbing manipulator claw
INPUTS: bool claw_open = The state of the grabbing manipulator claw, TRUE = open, FALSE = closed
OUTPUTS: NONE
*/
void set_grabber(bool claw_open){
	
}

/*
PURPOSE: Control the different degrees of freedom of the grabber
INPUTS: char identifier = The unique character that corresponds to the DOF to control
		int angle = The angle of the DOF
OUTPUTS: NONE
*/
void set_grabber_dof_angle(char identifier, int angle){
	
}

//-------------------------------------------------------------------------------------------------------
//DISTANCE MEASUREMENT FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Get the current distance measurement from the ROV
INPUTS: NONE
OUTPUTS: (float) The distance measured by the ROV in meters
*/
float get_distance_measurement(void){
	float distance = get_rand_float(0, 15);
	return(distance);
}

/*
PURPOSE: Set the state of the distance measurement system
INPUTS: bool distance_active = The state of the distance measurement system, TRUE = Enabled, FALSE = Disabled
OUTPUTS: NONE
*/
void set_distance_active(bool distance_active){
	
}

//-------------------------------------------------------------------------------------------------------
//SESIMOMETER FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Get the current angle measurement from the seismometer for a specifc axis of measurment
INPUTS: char identifier = A unique character that corresponds to the axis to get the angle to the horizontal for
OUTPUTS: int angle = The angle to the horizontal of the axis (RANGE -180 to 180), +VE = Above Horizontal, -VE = Below Horizontal
*/
int get_seismometer_angle(char identifier){
	int angle = get_rand_float(-180, 180);
	return(angle);
}

/*
PURPOSE: Rotate the manipulator for levelling the seismometer mount in a particular direction
INPUTS: int rotation_direction = The direction to rotate the bolt, -1 = Right, 0 = No Rotation, 1 = Left
OUTPUTS: NONE
*/
void set_seismometer_level_rotation(int rotation_direction){
	
}

/*
PURPOSE: Gets the current data from the Seismometer
INPUTS: NONE
OUTPUTS: N/A
*/
void get_seismometer_data(void){
  //IMPLEMENT ONCE SEISMOMETER IS COMPLETE
}

//-------------------------------------------------------------------------------------------------------
//CAMERA FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Selects the currently viewable camera
INPUTS: int camera_index = The index that corresponds to the desired camera
OUTPUTS: NONE
*/
void select_viewable_camera(int camera_index){
  //IMPLEMENT ONCE CAMERA CONTROL SYSTEM IS COMPLETE
}

//-------------------------------------------------------------------------------------------------------
//EMERGENCY STOP FUNCTIONS
//-------------------------------------------------------------------------------------------------------
/*
PURPOSE: Performs an interrupt to Shutoff all Thrusters
INPUTS: NONE
OUTPUTS: NONE
*/
void e_stop_thrust(void){
  //IMPLEMENT ONCE EMERGENCY SHUTOFF SYSTEM IS IN PLACE
}

/*
PURPOSE: Performs an interrupt to reset the entire ROV system
INPUTS: NONE
OUTPUTS: NONE
*/
void e_stop_rov(void){
  //IMPLEMENT ONCE EMERGENCY RESET SYSTEM IS IN PLACE
}

//-------------------------------------------------------------------------------------------------------
//MAIN CODE
//-------------------------------------------------------------------------------------------------------
int main(void){
	srand(time(NULL));
	cout << get_seismometer_angle('C');
	return(0);
}