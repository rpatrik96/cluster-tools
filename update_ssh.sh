#!/bin/bash 
 
INTERACTIVE_NODE=`ssh slurm cat .ssh/config.d/interactive | awk '$1 == "Hostname" { print $2 }'` 
CONFIG_FILE=~/.ssh/config.d/slurm_interactive 
 
echo "Host slurmdev" > $CONFIG_FILE 
echo "  ProxyCommand ssh slurm -W %h:%p" >> $CONFIG_FILE 
echo "  Hostname $INTERACTIVE_NODE" >> $CONFIG_FILE 
echo "  Port 12345" >> $CONFIG_FILE 
echo "  User preizinger" >> $CONFIG_FILE 
 
echo "" >> $CONFIG_FILE 
echo "Host slurmdevnode" >> $CONFIG_FILE 
echo "  ProxyCommand ssh slurm -W %h:%p" >> $CONFIG_FILE 
echo "  Hostname $INTERACTIVE_NODE" >> $CONFIG_FILE 
echo "  User preizinger" >> $CONFIG_FILE 
 
cat $CONFIG_FILE