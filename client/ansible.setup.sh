#!/bin/bash

# ----------------------------------------------------------------
# Install Ansible (dnf)
# Supported $OS_VER: Fedora, CentOS, RHEL
# ----------------------------------------------------------------

command -v dnf

sudo dnf install -y ansible

ansible --version
ansible-playbook --version

set +x