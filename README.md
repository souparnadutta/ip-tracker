# Ip Tracker

This project uses a bash script which can be used to find the location, coordinates and ISP of an IP address. This can be used in any Linux and Termux based environments.

It uses ip-api to get the details.
API Link: https://ip-api.com/

## How to install:-

First 2 commands should be used if git is not installed in the system. Otherwise, you can directly begin from the 3rd command.

* `` sudo apt update ``

* `` sudo apt install git -y ``

* `` git clone https://github.com/souparnadutta/ip-tracker.git ``

* `` cd ip-tracker ``

* `` chmod +x track_ip.sh``

## How to run:-

You can either enter an IP Address or a domain name (Eg: google.com ,facebook.com , basically without the http,www stuff and and any api points after the domain name)

The following line shows the syntax to be used in the script. You can copy the examples for demo purposes and then play around by entering different ip addresses and domain names.

Usage:   `` ./track_ip.sh IP_ADDRESS or Usage: ./track_ip.sh DOMAIN_NAME``

Example-1:  `` ./track_ip.sh 8.8.8.8 ``

Example-2:  `` ./track_ip.sh google.com ``

![image](https://user-images.githubusercontent.com/70193389/185685565-8acead28-c4fe-4cb2-b829-f351f483625b.png)

![image](https://user-images.githubusercontent.com/70193389/185684290-37a534fe-7a81-46be-8a74-210b247f54ad.png)

![image](https://user-images.githubusercontent.com/70193389/185684616-d81a8fee-d0c1-480e-b7d9-ac169c38313a.png)

![image](https://user-images.githubusercontent.com/70193389/185685457-330da1e1-468a-4546-84e6-da67c9d773c6.png)


