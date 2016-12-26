#!/bin/sh

if type "vagrant" > /dev/null; then
	vagrant global-status \
		| grep virtualbox\ *running \
		| xargs -0 sh -c "$(awk -F ' ' '{print "cd "$5"; vagrant halt "$2}')"
fi
