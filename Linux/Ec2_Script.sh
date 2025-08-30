#!bin/bash
#
#create your inputes

read -p " Enter the Server_Name : " Server_Name
read -p " Enter the AMI_ID : " AMI_ID
read -p " Enter the Instance_type : " Instance_Type
read -p " Enter the number of instance you want to create : " Instance_Count
read -p " Enter the key_pair : " Key_Pair
read -p " Enter the security_Group : " Security_Group
read -p " Enter the storage_volume in GB : " Storage_Volume

#Create EC2 instance

response=$( aws ec2 run-instance \
--Server_Name $Server_Name \
--Image_ID $AMI_ID \
--Instance_Type $Instance_Type \
--Instance_Count $Instance_Count \
--key_pair $key_pair \
--Security_Group \
--Storage_Volume $Storage_Volume \
--Output json )

if [ $? -eq 0 ];
then
echo " EC2 instance successfully created. "
else
echo " Error creating instance. "
fi
