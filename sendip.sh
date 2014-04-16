#!/bin/sh
unset HISTFILE;IPADDRESS=$(/sbin/ifconfig eth0 | sed -n 's/.*inet addr:\([^ ]*\).*/\1/p');echo -e 'The current IP address is: '$IPADDRESS'| mailx -s 'Ip address for Linux (Machine rebooted)' srinivas@solancer.com
