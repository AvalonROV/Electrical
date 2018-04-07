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

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#DEFINITIONS
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------


#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#CLASSES
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#The class that performs the main control functions with the ROV
class ROV():
    #Definitions
    
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
        print "\nTarget Port: " + str(rov_port)
        
        #Connecting to the ROV
        self.rov_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)  #Specifies Internet and UDP Communication to the Socket Class
        self.rov_socket.bind((rov_ip, rov_port))
        
        #Performing a test communication with the ROV
        
        #Saving the ROV's IP Address and Port
        self.ip_address = rov_ip
        self.port = rov_port
        
    #Method used to perform the full communication cycle with the ROV
    def communicate(self):
        """
        PURPOSE: Performs full ROV Communication Cycle, including Send and Recieve
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the communication cycle was successful, Outputs 0 if the communication cycle failed        
        """
        print "Performing ROV Communication Cycle"
    
    #Method used to perform the Send communication cycle with the ROV
    def send_settings(self):
        """
        PURPOSE: Performs the ROV Send Communication Cycle
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the Send Cycle completes successfully, Outputs 0 if the Send Cycle fails
        """
        print "Sending Settings"
    
    #Method used to perform the Recieve communication cycle with the ROV
    def recieve_parameters(self):
        """
        PURPOSE: Performs the ROV Recieve Communication Cycle
        INPUTS: NONE
        OUTPUTS: Outputs 1 if the Recieve Cycle completes successfully, Outputs 0 if the Recieve Cycle fails
        """
        print "Recieving ROV Current Parameters"

#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
#FUNCTIONS
#--------------------------------------------------------------------------------------------------------------------------------------------------------------------
