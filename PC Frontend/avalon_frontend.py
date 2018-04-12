# -*- coding: utf-8 -*-
"""
This is the code for the Avalon ROV Project Frontend. This software performs communications with the ROV
using a UDP Ethernet configuration. The Frontend makes it easier for the main UI to communicate with the
ROV by providing a layer of abstraction between the two main system sections.

AUTHOR: Sam Maxwell
DATE RELEASED: PLEASE FILL ON RELEASE
VERSION: PLEASE FILL ON RELEASE
"""
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#MODULES
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
import socket    #UDP Communication Module
import converttobinary as ctb    #Module that handles conversion of Python Values to Binary

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#DEFINITIONS
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------


#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#CLASSES
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#The class that performs the main control functions with the ROV
class ROV():
    """
    A class used to facilitate communications with the Avalon ROV. UDP Communication is used via an Ethernet Interface to
    communiacte with the ROV. Standard ROV Parameters:
    
    ROV IP Address: 192.168.1.5
    ROV Port: 8000
    
    """
    #Communication Definitions
    com_buff_size = 1024                                #The size of the buffer used to recieve message from the ROV
    
    #Thruster Parameters
    thrust_vals = [0, 0, 0, 0, 0, 0]                    #A List containing the raw values for each thruster
    
    #IMU Parameters
    imu_vals = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]           #A List containing the values from the IMU
    
    #Movement Parameters
    depth_current = 0.0                                 #A Value containing the ROVs current depth
    axis_stabilisation_flags = [0, 0, 0, 0, 0]          #A List containing the flags to enable/disable stabilisation on each axis
    control_loop_pid_vals = [[0, 0, 0], [0, 0, 0]]      #An array containing the PID values for each control loop
    
    #Lifting Bag Parameters
    release_mechanism_states = 0                        #A List containing the flags to open/close individual release mechanisms
    inflate_mechanism_state = 0                         #A Value that indicates whether the inflation system is enabled/disabled
    
    #Grabber Parameters
    grabber_val = 0                                     #A Value that contains the percentage the grabber is open
    
    #Platform Levelling Parameters
    platform_imu_vals = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0]  #A List containg the values from the seismometer platform IMU
    levelling_motor_flag = 0                            #A Value that contains the direction and speed of rotation of the leveling motor
    
    #Camera Parameters
    camera_one_index = 0                                #A Value that contains the index of the camera to be shown on feed 1
    camera_two_index = 0                                #A Value that contains the index of the camera to be shown on feed 2
    
    #Emergency Stop Values
    emergency_thrust_flag = 0                           #A Value that indicates whether the emergency thruster stop is enabled/disabled
    
    #MAIN COMMUNICATION METHODS
    #Constructor, initialises communication with the ROV
    def __init__(self, rov_ip, rov_port):
        """
        PURPOSE: Initialises UDP Communication with the ROV.
        INPUTS: rov_ip = A string containing the ROV's IP Address
                rov_port = An integer containing the ROV's UDP Port
        OUTPUTS: NONE
        """
        #Informing User of selected IP Address and Port
        print "Target IP Address: " + rov_ip
        print "Target Port: " + str(rov_port)
        
        #Connecting to the ROV
        self.rov_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  #Specifies Internet and UDP Communication to the Socket Class
        self.rov_socket.bind((rov_ip, rov_port))
        
        #Performing a test communication with the ROV
        
        #Saving the ROV's IP Address and Port
        self.ip_address = rov_ip
        self.port = rov_port
    
    #Method used to send a message via UDP to the ROV
    def send_message(self, message):
        """
        PURPOSE: Send a single message to the ROV via the UDP Communication Socket
        INPUTS: message = A string that contains the message to be sent to the ROV
        OUTPUTS: NONE
        """
        self.rov_socket.sendto(message, (self.ip_address, self.port))
    
    #Method used to recieve a message via UDP from the ROV
    def recieve_message(self):
        """
        PURPOSE: Recieve a message from the ROV
        INPUTS: NONE
        OUTPUTS: The message sent by the ROV as a string
        """
        message = self.rov_socket.recv(self.com_buff_size)
        return message
    
    #Method used to perform the Send communication cycle with the ROV
    def send_settings(self):
        """
        PURPOSE: Performs the ROV Send Communication Cycle
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the Send Cycle completes successfully, Outputs 0 if the Send Cycle fails
        """
        message_string = ""
        
        #Encoding and Appending Thruster Values to message string
        message_string += self.encode_thrust_vals()
        
        #Encoding and Appending the Stabilisation Flags to the message string
        message_string += self.encode_stabilisation_flags()
    
    #Method used to perform the Recieve communication cycle with the ROV
    def recieve_parameters(self):
        """
        PURPOSE: Performs the ROV Recieve Communication Cycle
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the Recieve Cycle completes successfully, Outputs 0 if the Recieve Cycle fails
        """
        print "Recieving ROV Current Parameters"
    
    #Method used to perform the full communication cycle with the ROV
    def communicate(self):
        """
        PURPOSE: Performs full ROV Communication Cycle, including Send and Recieve
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the communication cycle was successful, Outputs 0 if the communication cycle failed        
        """
        print "Performing ROV Communication Cycle"
    
    #ENCODING METHODS
    #Method used to encode a thruster value for transmission to the ROV
    def encode_thrust_val(self, thruster_val_index):
        """
        PURPOSE: Encodes a single ROV Thrust value into a C Binary Value
        INPUTS: thruster_val_index = The index of the thruster value that needs to be encoded
        OUTPUTS: encoded_val = The encoded thruster value as a C Short represented as a Python String
        """
        #Getting the current thrust value for the given thruster
        thruster_val = self.thrust_vals[thruster_val_index]
        
        #Encoding the thruster value
        encoded_val = ctb.short_pack(thruster_val)
        return encoded_val
    
    #Method used to encode all thruster values and return as a list
    def encode_thrust_vals(self):
        """
        PURPOSE: Encodes all ROV Thrust values into a single message string
        INPUTS: NONE
        OUTPUTS: encoded_thrust_vals = The Thruster values encoded as C Shorts represented by a Python String
        """
        encoded_thrust_vals = ""
        
        for thruster_index in range(0, len(self.thrust_vals)):
            #Encoding the current thrust value
            encoded_thrust_vals += self.encode_thrust_val(thruster_index)

        return encoded_thrust_vals
    
    #Method used to encode axis stabilisation flags into an individual Byte
    def encode_stabilisation_flags(self):
        """
        PURPOSE: Encodes the axis stabilisation flags into a single C Character Byte represented as a Python String
        INPUTS: NONE
        OUTPUTS: encoded_value = The stabilisation flags encoded as a single Byte represented as a Python String
        """
        encoded_byte = 0
        num_flags = len(self.axis_stabilisation_flags) - 1
        
        #Converting the flags list into an Integer containing the Flags in the Same Order [0, 1, 1] ==> 011
        for index, stabilisation_flag in enumerate(self.axis_stabilisation_flags):
            index = num_flags - index
            encoded_byte |= (stabilisation_flag << index)
        
        #Packing the Python Integer into a C Char
        encoded_byte = ctb.char_pack(encoded_byte)
        return encoded_byte
    
    #INPUT METHOODS - TO BE USED BY THE SOFTWARE TEAM TO SEND VALUES TO THE ROV
    #Method used to set all of the ROV's Thruster Values at once
    def set_thrusts(self, new_thrust_vals):
        """
        PURPOSE: Sets the current thruster values of the ROV
        INPUTS: new_thrust_vals = A list of the new thrust values as integers
        OUTPUTS: NONE
        """
        self.thrust_vals = new_thrust_vals
    
    #Method used to set an individual ROV Thruster Value
    def set_thrust(self, new_thrust, thruster_index):
        """
        PURPOSE: Sets the current thruster values of a specific ROV thruster
        INPUTS: new_thrust = The new thrust value of the ROV thruster
                thruster_index = The index of the thruster to set the thrust value for
        OUTPUTS: NONE
        """
        self.thrust_vals[thruster_index] = new_thrust
    
    #Method used to set an axis stabilisation flag
    def set_axis_stable(self, stabilisation_flag, axis_index):
        """
        PURPOSE: Enables or disabled the stabilisation of a given axis
        INPUTS: stabilisation_flag = An integer value that enables or disabled axis stabilisation. 1 = Enable, 0 = Disable
                axis_index = The index of the axis to set the stabilisation for
        OUTPUTS: NONE
        """
        self.axis_stabilisation_flags[axis_index] = stabilisation_flag
    
    #OUTPUT METHODS - TO BE USED BY THE SOFTWARE TEAM TO RECIEVE VALUES FROM THE ROV
    #Method used to get the current IMU values
    def get_imu(self):
        """
        PURPOSE: Gets the current values outputted by the ROV IMU
        INPUTS: NONE
        OUTPUTS: imu_vals = The current values from the IMU as a list of floats
        """
        return self.imu_vals
    
    #Method used to get the ROVs current Depth
    def get_depth(self):
        """
        PURPOSE: Gets the current depth of the ROV in meters compared to the waters surface
        INPUTS: NONE
        OUTPUTS: depth_current = The current depth of the ROV as a float
        """
        return self.depth_current

rov = ROV("192.168.1.74", 8000)
rov.encode_stabilisation_flags()
