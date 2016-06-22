.PHONY: dotfiles

default: help

install_ansible:
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible

dotfiles:
	ansible-playbook dotfiles.yml -i local -vv -e curdir=$(CURDIR)

help:
	@echo 'targets:'
