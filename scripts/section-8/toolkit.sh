#!/bin/bash

# Author: André Santos
# Created: 27th June 2025
# Last Modified: 27th June 2025

# Description: 
# Menu to select which utility should be run


# Usage: ./toolkit.sh

PS3="Which utility do want to run?: "
select script in "cruft_remover" "folder_organiser"; do
	$HOME/works/treinamentos/bash_mastery/scripts/section-8/"$script.sh"
	break
done
