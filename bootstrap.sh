#!/bin/sh

pacman -Syyu ansible
ansible-playbook setup.yml
