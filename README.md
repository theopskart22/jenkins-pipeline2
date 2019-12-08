# jenkins-pipeline2

## Install java on ubuntu 16.04  


$ sudo apt install openjdk-8-jdk
OR
$ sudo apt install openjdk-11-jdk

## Install maven  ##

apt install maven

Very good artical which help me to install java and maven on ubunut 16.04 is listed here
```
https://www.mkyong.com/maven/how-to-install-maven-in-ubuntu/
https://www.mkyong.com/java/how-to-install-java-jdk-on-ubuntu-linux/
```
# Install Jenkins on ubuntu 16.04 #

```
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
apt-get update
apt-get install jenkins
systemctl status jenkins
 ```
 
 # Install Sonar on Ubuntu 16.04 #
```
https://developerinsider.co/install-sonarqube-on-ubuntu/
