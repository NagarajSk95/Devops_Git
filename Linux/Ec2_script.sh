#!/bin/bash

#First user input
read -p "Enter the AMI_ID:" AMI_ID
read -p "Enter the instance type: " Instance_Type
read -p "Enter the key_pair: " Key_Name
read -p "Enter the security group name: " Security_Group
read -p "Enter the number of instance to be create: " Instance_Count
read -p "Enter the size of the root volume in GB: " Volume_Size
read -p "Enter the server name you want: " Server_Name

# Creat EC2 Instance
response=$( aws ec2 run-instance \
 --image-id $AMI_ID \
 --instance-type $Instance_Type \
 --key-pair $key_Name \
 --security-group $Security_Group \
 --block-device-mappings "DeviceName=/dev/xvda,Ebs={VolumeSize=Volume_Size}" \
 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$Server_Name}]" \
 --output json)

if [ $? -eq 0 ]
then
echo " EC2 Instance successfully Created. "
else
        echo "Error creating instance. "
        fi
