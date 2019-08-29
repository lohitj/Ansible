DIRECTORY="/usr/bin/ansible"
if [ ! -d "$DIRECTORY" ]; then
        sudo apt -y update
        sudo apt -y install software-properties-common
        sudo apt-add-repository --yes --update ppa:ansible/ansible
        sudo apt -y install ansible
	sudo apt -y install python-pip
fi
sudo ansible-playbook test-playbook.yml
echo 'To Setup the Database Please enter the below parameters'
echo 'Database = Mediawiki'
echo 'USER = Mediawiki'
echo 'PASSWORD = Mediawiki'
