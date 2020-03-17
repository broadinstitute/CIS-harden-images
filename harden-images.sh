apt-get -y update && apt-get -y upgrade
apt-get install -y python3 python3-pip python3-apt
pip3 install 'ansible==2.9.6'

ansible-playbook playbook.yml