

################################################################################
### Head: Main
##

main_usage () {
	##local cmd_name="$0"
	local cmd_name="$THE_CMD_FILE_NAME"

cat << EOF
Usage:
	$ $cmd_name [action]

Example:

	## help

		$ $cmd_name
		$ $cmd_name help

	## version

		$ $cmd_name version

	## self_update

		$ $cmd_name self_update

	## self_actions

		$ $cmd_name self_actions

	## xephyr
<?php include_once(dirname(__DIR__) . '/Model/xephyr/Usage.sh'); ?>

	## fzf
<?php include_once(dirname(__DIR__) . '/Model/fzf/Usage.sh'); ?>

	## profile
<?php include_once(dirname(__DIR__) . '/Model/Usage.sh'); ?>


Debug:
	$ export DEBUG_AWESOMEWMRC_CTRL=true

EOF

}

main_check_args_size () {
	if [ $1 -le 0 ]; then
		shift
		main_run_default_sub_cmd "$@"
		exit 1
	fi
}

main_run_default_sub_cmd () {
	main_usage "$@"
}

main_run_sub_cmd () {

	local sub_cmd="$1"

	shift

	local function_name=$(sub_cmd_find_function_name "$sub_cmd")

	## if ! command -v $function_name > /dev/null; then
	if ! type -p $function_name > /dev/null; then
		util_debug_echo "[Debug] sub_cmd_function_not_exist: sub_cmd=$sub_cmd; function_name=$function_name"

		echo
		main_run_default_sub_cmd "$@"
		return 1
	fi

	"$function_name" "$@" ## run sub cmd function


}

## Start
main_check_args_size $# "$@"

main_run_sub_cmd "$@"

##
### Tail: Main
################################################################################
