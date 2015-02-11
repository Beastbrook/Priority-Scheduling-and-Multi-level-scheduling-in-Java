#!/bin/bash

nachos -[] conf/PA1/SPT1.conf > /dev/null
nachos -[] conf/PA1/DPT1.conf > /dev/null
nachos -[] conf/PA1/MLT1.conf > /dev/null


echo StaticPriorityScheduler: `tail -n 1 SPLog.txt`
echo DynamicPriorityScheduler: `tail -n 1 DPLog.txt`
echo MultiLevelScheduler: `tail -n 1 MLLog.txt`

