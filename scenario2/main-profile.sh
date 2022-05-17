#!/bin/bash

# Loading functions on the context
#    Global Common
source ../common/script-code/bash/add_date-v1.sh
#    Scenario Common
source ./common/script-code/bash/hello-v1.sh

# Installing missing dependencies
sudo apt-get -y install putty-tools