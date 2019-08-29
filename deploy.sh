DIRECTORY="/usr/bin/ansible"
if [ ! -d "$DIRECTORY" ]; then
        sudo apt update
        sudo apt install software-properties-common
        sudo apt-add-repository --yes --update ppa:ansible/ansible
        sudo apt install ansible
	sudo apt install python
fi
ansible-playbook test-playbook.yml
