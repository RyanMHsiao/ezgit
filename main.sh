#!/usr/bin/env bash

case "$1" in
	"push")
		echo "ezgit: Forwarding push to git"
		output=$(git "$@")
		if [ $? -ne 1 ]; then
			echo "debug: exit status $?"
			if echo "$output" | grep -q "Permission denied (publickey)"; then
				echo "You may have forgotten to set your SSH key at https://github.com/settings/keys"
			fi
		fi
		;;
	*)
		echo "ezgit: Forwarding command to git"
		git "$@"
esac
