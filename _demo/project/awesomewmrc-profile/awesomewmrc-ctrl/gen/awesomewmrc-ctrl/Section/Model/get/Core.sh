

################################################################################
### Head: Model mod_awesomewmrc_profile_get
##

mod_awesomewmrc_profile_get () {
	#echo "mod_awesomewmrc_profile_get"
	#echo "$@"

	# awesomewmrc-ctrl get

	local dir_path=$(LANG=C file ~/.config/awesome | awk -F ' symbolic link to ' '{print $2}')
	local name=$(basename "$dir_path")

	echo $name

}

##
### Tail: Model mod_awesomewmrc_profile_get
################################################################################
