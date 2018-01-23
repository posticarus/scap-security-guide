#!/bin/bash
#
# profiles = xccdf_org.ssgproject.content_profile_ospp-rhel7

if grep -q "^UsePrivilegeSeparation" /etc/ssh/sshd_config; then
	sed -i "s/^UsePrivilegeSeparation.*/UsePrivilegeSeparation yes/" /etc/ssh/sshd_config
else
	echo "UsePrivilegeSeparation yes" >> /etc/ssh/sshd_config
fi
