# Help based on https://gist.github.com/prwhite/8168133
# And add help text after each target name starting with '##'
# A category can be added with @category
HELP_FUN = \
		   %help; \
		   while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^([\w-]+)\s*:.*\#\#(?:@([\w-]+))?\s(.*)$$/ }; \
		   print "\nusage: make [target]\n\n"; \
		   for (keys %help) { \
		   print "$$_:\n"; \
		   for (@{$$help{$$_}}) { \
		   $$sep = "." x (25 - length $$_->[0]); \
		   print "  $$_->[0]$$sep$$_->[1]\n"; \
		   } \
		   print "\n"; }

default: help

help: 					##@base Show this help
	#
	# General targets
	#
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

install_ansible:		##@base Install ansible from apt-get
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible

dotfiles:				##@ansible Run ansible-playbook for setup dotfiles
	ansible-playbook playbooks/dotfiles.yml -vv --ask-become-pass


nvim:					##@ansible Setup Neovim
	ansible-playbook playbooks/setup_nvim.yml -vv


.PHONY: default help dotfiles nvim
