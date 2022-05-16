#!/bin/bash

# Loading functions on the context
#    Global Common
source ../common/bash/add_date-v1.sh
#    Scenario Common
source ./common/bash/hello-v1.sh

# Installing missing dependencies
sudo apt-get -y install putty-tools
