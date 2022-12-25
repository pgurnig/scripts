#!/bin/bash
regions=("us-east-1" "us-east-2" "us-west-1" "us-west-2")

regions=("ap-south-1" 
 "eu-north-1" 
 "eu-west-3" 
 "eu-west-2" 
 "eu-west-1" 
 "ap-northeast-3" 
 "ap-northeast-2" 
 "ap-northeast-1" 
 "ca-central-1" 
 "sa-east-1" 
 "ap-southeast-1" 
 "ap-southeast-2" 
 "eu-central-1" 
 "us-east-1" 
 "us-east-2" 
 "us-west-1" 
 "us-west-2")


i=0
len=${#regions[@]}
while [ $i -lt $len ];
do
    #echo "----------------------------------------------"
    echo ${regions[$i]}
    aws dynamodb list-tables --region ${regions[$i]} --output text 
    echo ""
    let i++
done
