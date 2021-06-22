

################################################################################
### Head: Model xephyr
##

## Original Script
## https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh

## Arch Wiki / Xephyr
## https://wiki.archlinux.org/index.php/Xephyr

mod_xephyr () {
	#echo "mod_xephyr"
	#echo "$@"

if ! is_command_exist 'Xephyr'; then

cat << EOF

## Need: Xephyr

	* https://archlinux.org/packages/extra/x86_64/xorg-server-xephyr/

	$ pamac install xorg-server-xephyr

EOF
	return 1
fi

mod_xephyr_run_awesome "$1" "$2"

}


mod_xephyr_run_awesome () {

	## screen_size
	local screen_size="1280x720"
	local config_file_path


	if [ "none$1" != "none" ]; then
		screen_size="$1"
	fi

	if [ "none$2" != "none" ]; then
		config_file_path="$2"
	fi

	if ! [ -f "$config_file_path" ]; then
		config_file_path=""
	fi

	## run Xephyr
	#Xephyr :100 -ac -screen 1280x720 &
	Xephyr :100 -ac -screen "$screen_size" &
	XEPHYR_PID=$!
	sleep 0.5

	## run awesome
	##DISPLAY=:100 awesome

	if [ "none$config_file_path" = "none" ]; then
		echo "DISPLAY=:100 awesome"
		DISPLAY=:100 awesome
	else
		echo "DISPLAY=:100 awesome -c $config_file_path"
		DISPLAY=:100 awesome -c $config_file_path
	fi

	## make sure kill Xephyr
	kill ${XEPHYR_PID}

}



##
### Tail: Model xephyr
################################################################################
