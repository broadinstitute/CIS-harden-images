ansible_version="2.9.6"

if [ $(python3 --version &>/dev/null) ]
then
    apt-get install -y python3
fi

if [ $(pip3 --version &>/dev/null) ]
then
    apt-get install -y python3-pip
fi

pip3 install "ansible==${ansible_version}"


ansible-playbook deb9-cis-playbook.yml