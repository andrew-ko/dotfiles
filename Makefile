.PHONY: default help
default: help

vim_configure:
	ansible-playbook book/vim.yml -i local -vv -e curdir=$(CURDIR)

vim_update_plugins:
	ansible-playbook book/vim.yml -i local -vv --tags 'update'

install_ansible:
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible

.PHONY: composer
composer:
	ansible-playbook book/composer.yml -i local

.PHONY: codeception
codeception:
	ansible-playbook book/codeseption.yml -i local

.PHONY: dotfiles
dotfiles:
	ansible-playbook book/dotfiles.yml -i local -vv -e curdir=$(CURDIR)

help:
	@echo 'targets:'
