#!/bin/bash

which ansible
if [ $? -ne 0 ]; then
    sudo yum -y install python-devel.x86_64 python-setuptools gcc
    sudo easy_install pip
    sudo pip install passlib ansible

    sudo pip uninstall -y pycrypto
    sudo pip install pycrypto==2.3

    echo ""
    echo "install complete"
    ansible --version
fi

which wget
if [ $? -ne 0 ]; then
   sudo yum -y install wget
fi

echo "ssh-keygen -t rsa"
echo "ansible-playbook -i /vagrant/localhost /vagrant/authorized.yml -k"
echo "ansible-playbook -i /vagrant/localhost /vagrant/site.yml"
