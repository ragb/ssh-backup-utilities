#! /bin/sh
# validates rsync commands over ssh.

case "$SSH_ORIGINAL_COMMAND" in 
	*\&*)
	echo Rejected
	;;
	*\(*)
	echo Rejected
	;;
	*\{*)
	echo Rejected
	;;
	*\;*)
	echo Rejected
	*\<*)
	echo Rejected
	;;
	*\>*)
	echo Rejected
	;;
	*\`*)
	echo Rejected
	;;
	*\|*)
	echo Rejected
	;;
	rsync\ --server*)
	$SSH_ORIGINAL_COMMAND
	;;
	*)
	echo Rejected
	;;
esac


