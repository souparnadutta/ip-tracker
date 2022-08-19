#!/bin/bash

if [ "$1" ==  "" ]
then
    echo "Usage: $0 IP_ADDRESS or Usage: $0 DOMAIN"
    echo "Example-1: $0 8.8.8.8"
    echo "Example-2: $0 google.com"
fi

ip=$(host $1 | head -n 1 | cut -d" " -f4)
res=$(curl http://ip-api.com/json/$1 -s) || $(curl http://ip-api.com/json/$ip -s) 


status=$(echo $res | jq '.status' -r)

if [ $status == "success" ]
then
    city=$(echo $res | jq '.city' -r)
    region=$(echo $res | jq '.regionName' -r)
    country=$(echo $res | jq '.country' -r)
    latitude=$(echo $res | jq '.lat' -r)
    longitude=$(echo $res | jq '.lon' -r)
    isp=$(echo $res | jq '.isp' -r)

    echo "The location of the IP address is $city, $region, $country"
    echo "The coordinates of the IP address are: $latitude,$longitude"
    echo "Their ISP is: $isp"
    exit 
fi

echo "Wrong IP or DOMAIN entered.Try again"
