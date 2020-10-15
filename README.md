# Ruby Based Web Server Honepot

This project contains a honeypot that is used to monitor any actions performed by any suspicious user.

# NOTE

THIS IMAGE PURELY MEANT FOR MONITORING WEBSITE
# Tech Stack
Ruby
# Initial Setup
1) Make sure you have ruby in your system.
2) Clone this repository https://github.com/Hackershala-Github/RubyWebPot.git

# How To Use

1) Go to the location where you have cloned this repository.
2) Run the script "pentbox.rb" 

![Initial](https://github.com/P-riyanka-prasad/IIEC-RISE-DOCKER-1.0-HackTools/blob/master/1.jpg)

3) Select Option 1 Honeypot

4) You can either Select Fast Auto Configuration or Manual Configuration.
- Select Fast Auto Configuration if you want the default setup.
- Select the manual configuration if you don't have the ruby installation in your user root or you haven't permissions like sudoers.

![Initial](https://github.com/P-riyanka-prasad/IIEC-RISE-DOCKER-1.0-HackTools/blob/master/2.jpg)

5) In Manual Configuration type the port number and the error message that you want to show.

![Initial](https://github.com/P-riyanka-prasad/IIEC-RISE-DOCKER-1.0-HackTools/blob/master/3.jpg)

6) Select the other features that you want or not according to you. 

![Initial](https://github.com/P-riyanka-prasad/IIEC-RISE-DOCKER-1.0-HackTools/blob/master/4.jpg)

7) Now your Honeypot is configured sucessfully.

- You will get all the logs if any action is performed by any suspicious user.

![Initial](https://github.com/P-riyanka-prasad/IIEC-RISE-DOCKER-1.0-HackTools/blob/master/5.jpg)




# Requirements/Installation
These instructions will get you a copy of the project up and running on your local machine

* ## Make sure you have the latest versions of Docker installed on your machine.
For installing run the commands:

# For Docker Installation on RedHat/Centos:
 Prerequisite-yum configured-
* login as root, open terminal
* Run command- `cd /etc/yum.repos.d/`
![go to yum](https://github.com/xavier9909/hacktools/blob/master/go%20to%20yum%20repositories.png)

* Now, (To create a repository file, you can use any name.repo)   
`gedit docker.repo` 
![make docker repo](https://github.com/xavier9909/hacktools/blob/master/create%20docker%20repository.png)
* In the docker.repo paste this this url (https://download.docker.com/linux/centos/7/x86_64/stable/) and type
![content of docker repo](https://github.com/xavier9909/hacktools/blob/master/content%20of%20docker%20repository.png)
* Run
`yum install docker-ce --nobest` 
![install docker](https://github.com/xavier9909/hacktools/blob/master/cmd%20to%20install%20docker.png)
* ## To verify 
`docker version` 
![verify](https://github.com/xavier9909/hacktools/blob/master/verify%20docker%20version.png)
* ## Start Docker
```
systemctl start docker
`systemctl enable docker
```
![demo](https://github.com/xavier9909/hacktools/blob/master/start%20n%20enable%20docker.png)

# BONUS
# Install Docker on Windows 7
 * Verify your Windows OS is 64-bit (x64)
 * Install DOCKER TOOLBOX
 * Link:::(https://github.com/docker/toolbox/releases)
 ![DEMO](https://github.com/xavier9909/hacktools/blob/master/2020-05-03.png)
 
 * ## Now, Run .exe file to Install it
 
 ![DEMO](https://docs.docker.com/toolbox/images/installer_open.png)
 
  # For Installing Image
```
docker pull xavier9909/honey:1
```
=======
Ruby Based Web Server Honepot

