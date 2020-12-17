#!/bin/bash
set -e
ansible_version="2.9.6"

check_requirements () {

    echo "Installing requirements..."
    if ! which python2 > /dev/null 2>&1;
    then
        sudo yum install -y python2
    fi

    if ! which pip > /dev/null 2>&1;
    then
        sudo yum install -y python2-pip
    fi

    if ! which git > /dev/null 2>&1;
    then
        sudo yum install -y git
    fi

    if ! which virtualenv > /dev/null 2>&1;
    then
        sudo pip install virtualenv
    fi

}

activate_venv () {
    echo "Activating virtualenv..."
    virtualenv ansible-venv
    source ansible-venv/bin/activate
}

deactivate_venv () {
    echo "Deactivating virtualenv..."
    deactivate
} 

install_ansible () {
    echo "Installing ansible..."
    pip3 install "ansible==${ansible_version}"

}

install_ansible_roles () {

    echo "Installing hardening role..."
    ansible-galaxy install -p roles -r requirements.yml

}

run_playbook () {

    echo "Running playbook..."
    ansible-playbook -e ansible_python_interpreter=/usr/bin/python2 playbook.yml

}

cd "$(dirname "$0")"

check_requirements

activate_venv

install_ansible

install_ansible_roles

run_playbook

deactivate_venv