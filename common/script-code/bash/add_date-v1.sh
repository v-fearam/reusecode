#!/bin/bash

: '
.SYNOPSIS
  Add datetime to each line 
.PARAMETER <Parameter_Name>
    None
.OUTPUTS
  it generates time information on log context
.NOTES
  Version:        1.0
  Author:         Federico Arambarri
  Creation Date:  12/05/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  echo "Hello" | adddate | tee -a $log_filename
  will generate as cononsole or in the log file 
  [Mon May 16 15:10:54 -03 2022] Hello
'

adddate() {
    while IFS= read -r line; do
        printf '[%s %s\n' "$(date)]" "$line"
    done
}
