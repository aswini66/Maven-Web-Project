########################     Installation of Softwares  ###############################
#! /bin/bash
########################## Installation of  java-1.8.0  ###############################
sudo yum  update -y
sudo yum install java-1.8.0-openjdk-devel -y
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME
    _java="$JAVA_HOME/bin/java"
else
   echo "no java"
fi

###########################  Installation of Perl  ########################################
sudo yum install perl -y
if [ $? -eq 0 ]
 then
echo " perl is installed successfully "
else
echo " please check once "
fi
#############################   Installation of SQ+  #######################################
cd /usr/lib
mkdir oracle
cd oracle
sudo yum install  -y libaio
sudo yum install wget -y
wget https://download.oracle.com/otn_software/linux/instantclient/19600/oracle-instantclient19.6-basic-19.6.0.0.0-1.x86_64.rpm
wget https://download.oracle.com/otn_software/linux/instantclient/19600/oracle-instantclient19.6-sqlplus-19.6.0.0.0-1.x86_64.rpm
### you will have sqlplus64 installed in: #############

#### Sqlplus Client ####

export ORACLE_HOME=/usr/lib/oracle/12.2/client64

export LD_LIBRARY_PATH=${ORACLE_HOME}/lib

export PATH=${ORACLE_HOME}/bin:$PATH
##########################  Installation of Docker #######################################
#ADd repo name for docker to isnatll here
 sudo yum install -y docker
########################## Installation of python #######################################
sudo yum -y groupinstall development
sudo yum -y install zlib-devel
aptitude -y install gcc make zlib1g-dev
wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tar.xz
tar xJf Python-3.6.3.tar.xz
cd Python-3.6.3
./configure
 make
which python3
python3 -V
##########################   Installation of emacs  #######################################
sudo yum install emacs -y

