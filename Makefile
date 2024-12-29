.PHONY: help update install-docker

ANSBILE_PLAYBOOK = ansible-playbook

default: help

help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

update: # Update RaspberryPi
	$(ANSBILE_PLAYBOOK) -i inventory.ini playbooks/update.yml

install-docker: # Install Docker on RaspberryPi
	$(ANSBILE_PLAYBOOK) -i inventory.ini playbooks/install-docker.yml

install-dockge: # Install Docker on RaspberryPi
	$(ANSBILE_PLAYBOOK) -i inventory.ini playbooks/install-dockge.yml
