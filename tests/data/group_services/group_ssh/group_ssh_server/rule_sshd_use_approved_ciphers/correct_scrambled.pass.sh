#!/bin/bash
#
# profiles = xccdf_org.ssgproject.content_profile_C2S

if grep -q "^Ciphers" /etc/ssh/sshd_config; then
	sed -i "s/^Ciphers.*/Ciphers aes128-ctr,aes192-ctr,aes192-cbc,aes256-cbc,aes256-ctr,aes128-cbc,3des-cbc,rijndael-cbc@lysator\.liu\.se/" /etc/ssh/sshd_config
else
	echo "Ciphers aes128-ctr,aes192-ctr,aes192-cbc,aes256-cbc,aes256-ctr,aes128-cbc,3des-cbc,rijndael-cbc@lysator\.liu\.se" >> /etc/ssh/sshd_config
fi