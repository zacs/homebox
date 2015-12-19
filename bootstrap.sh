#!/bin/bash
# Purpose:
#	* bootstrap machine in order to prepare for ansible playbook run

set -e

# Set install location -- this is where the playbook repo gets cloned
#  into. Suggest something like ~/.setup or ~/Code/setup
INSTALL_PATH="$HOME/.setup"

# Bootstrap prelims for Linux (super dumbed down for now)
echo "Info   | Install   | Ruby, Git, Ansible"
sudo apt-get install -y ruby git ansible

# Clone the repo locally so it can be run
if [[ ! -d $INSTALL_PATH ]]; then
    mkdir -p $INSTALL_PATH
    git clone https://github.com/zacs/homebox.git $INSTALL_PATH
    echo "Info   | Clone     | homebox repo"
fi

# Run the playbook
ansible-playbook $INSTALL_PATH/local.yml -i $INSTALL_PATH/hosts --ask-sudo-pass --connection=local
