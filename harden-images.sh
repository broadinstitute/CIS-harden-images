ansible_version="2.9.6"

install_ansible () {

    if [ $(python3 --version &>/dev/null) ]
    then
        apt-get install -y python3
    fi

    if [ $(pip3 --version &>/dev/null) ]
    then
        apt-get install -y python3-pip
    fi

    pip3 install "ansible==${ansible_version}"

}

install_ansible_roles () {

    ansible-galaxy install -p roles -r requirements.yml

}

run_playbook () {

    ansible-playbook deb9-cis-playbook.yml

}

install_ansible

install_ansible_roles

run_playbook