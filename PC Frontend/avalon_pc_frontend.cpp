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

//-------------------------------------------------------------------------------------------------------
//VARIABLES
//-------------------------------------------------------------------------------------------------------

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
PURPOSE: Sets the desired axial velocity of the ROV, +VE = Forward, -VE = Backward
INPUTS: float velocity = The desired axial velocity of the ROV
OUTPUTS: NONE
*/
void set_axial_velocity(float velocity){
	
}

/*
PURPOSE: Sets the desired lateral velocity of the ROV, +VE = Strafe Left, -VE = Strafe Right
INPUTS: float velocity = The desired lateral velocity of the ROV
OUTPUTS: NONE
*/
void set_lateral_velocity(float velocity){
	
}

/*
PURPOSE: Sets the desired vertical velocity of the ROV, +VE = Upwards, -VE = Downwards
INPUTS: float velocity = The desired vertical velocity of the ROV
OUTPUTS: NONE
*/
void set_vertical_velocity(float velocity){
	
}

/*
PURPOSE: Sets the desired pitch angle to the horizontal of the ROV, +VE = Pitch Upwards, -VE = Pitch Downwards
INPUTS:	int angle = The desired pitch angle of the ROV
OUTPUTS: NONE
*/
void set_pitch_angle(int angle){
	
}

/*
PURPOSE: Sets the desired yaw angle to North of the ROV, +VE = Yaw Westwards, -VE = Yaw Eastwards
INPUTS: int angle = The desired yaw angle of the ROV
OUTPUTS: NONE
*/
void set_yaw_angle(int angle){
	
}

/*
PURPOSE: Sets the desired roll angle to the upright horizontal of the ROV, +VE = Roll Anticlockwise, -VE = Roll Clockwise
INPUTS: int angle = The desired roll angle of the ROV
OUTPUTS: NONE
*/
void set_roll_angle(int angle){
	
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
//DISTANCE MEASUREMENT FUNCTIONS
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

//-------------------------------------------------------------------------------------------------------
//MAIN CODE
//-------------------------------------------------------------------------------------------------------
int main(void){
	srand(time(NULL));
	cout << get_seismometer_angle('C');
	return(0);
}
