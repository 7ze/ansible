#!/bin/sh

pacman -Syyu ansible
ansible-playbook local.yml
