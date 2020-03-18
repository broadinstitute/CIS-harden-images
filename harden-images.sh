ansible_version="2.9.6"

install_ansible () {

    echo "Installing ansible..."
    sudo apt-get install -y python3
    sudo apt-get install -y python3-pip
    pip3 install "ansible==${ansible_version}"

}

install_ansible_roles () {

    echo "Installing hardening role..."
    ansible-galaxy install -p roles -r requirements.yml

}

run_playbook () {

    ansible-playbook deb9-cis-playbook.yml

}

cd "$(dirname "$0")"

install_ansible

install_ansible_roles

run_playbook
