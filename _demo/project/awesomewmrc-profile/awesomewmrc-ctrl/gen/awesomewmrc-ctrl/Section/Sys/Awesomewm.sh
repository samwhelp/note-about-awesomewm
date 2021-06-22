

################################################################################
### Head: Sys
##

is_awesomewmrc_dir () {
	local dir_path="$1"
	local awesomewmrc_file_path="$dir_path/rc.lua"

	if [ ! -f "$awesomewmrc_file_path" ]; then
		return 1
	fi

	return 0
}

is_not_awesomewmrc_dir () {
	local dir_path="$1"
	local awesomewmrc_file_path="$dir_path/rc.lua" ## ~/.awesomewmrc-profile/demo/rc.lua

	if [ -f "$awesomewmrc_file_path" ]; then ## check ~/.awesomewmrc-profile/demo/rc.lua
		return 1
	fi

	return 0
}

awesomewmrc_find_dir_path_by_name () {
	local name="$1"
	echo "$THE_AWESOMEWMRC_PROFILE_DIR_PATH/$name"
}


awesomewmrc_check_awesomewmrc_dir_exists () {

	local awesomewmrc_dir_name="awesome"
	local awesomewmrc_dir_path="$HOME/.config/$awesomewmrc_dir_name"

	if ! [ -a "$awesomewmrc_dir_path" ]; then ## file not exists
		return 0
	fi


	if [ -h "$awesomewmrc_dir_path" ]; then ## ~/.config/awesome is symbolic link
		return 0
	fi



	echo "Dir is exists:" "$awesomewmrc_dir_path"
	echo

	echo "Try to backup:"
	echo

	local now=$(date +%Y%m%d_%s)
	local bak_dir_path="${HOME}/.backup/awesomewmrc.bak"
	local bak_target_path="${bak_dir_path}/${awesomewmrc_dir_name}.bak.${now}"

	echo "mkdir -p ${bak_dir_path}"
	mkdir -p "${bak_dir_path}"


	echo "cp -a ${awesomewmrc_dir_path} ${bak_target_path}"
	cp -a "${awesomewmrc_dir_path}" "${bak_target_path}"

	if [ "$?" != "0" ]; then
		echo
		echo 'Backup Failure!'
		#exit 1
		return 1
	fi

	echo







	return 0
}




##
### Tail: Sys
################################################################################
