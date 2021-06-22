

################################################################################
### Head: SubCmd
##

sub_run_help () {
	main_usage "$@"
}

sub_run_version () {
	main_version "$@"
}

sub_run_self_update () {
	util_self_update "$@"
}

sub_run_self_actions () {
	util_self_actions "$@"
}

<?php include_once(dirname(__DIR__) . '/Model/Action.sh'); ?>

##
### Tail: SubCmd
################################################################################
