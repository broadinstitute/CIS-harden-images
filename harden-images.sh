ansible_version="2.9.6"

install_ansible () {

    echo "Installing ansible..."
    apt-get install -y python3
    apt-get install -y python3-pip
    pip3 install "ansible==${ansible_version}"

}

install_ansible_roles () {

    echo "Installing hardening role..."
    ansible-galaxy install -p roles -r CIS-harden-images/requirements.yml

}

run_playbook () {

    ansible-playbook deb9-cis-playbook.yml

}

install_ansible

install_ansible_roles

run_playbook