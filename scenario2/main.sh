#!/bin/bash
#region preference: All the variables which define the script preference
source ./main-preferences.sh

#region profile: it is a script which execute all the dependencies of the current script.
source ./main-profile.sh >$log_filename

#region main: Script actvities calling function already defined and loaded and base on the setting selected profile
hello_world_func $name | adddate | tee -a $log_filename