#!/bin/bash

set -e

recipient="example@gmail.com"

event="${1}"
device="${2}"
component="${3}"

subject="MDADM event: ${event} on ${device}"
if [ -n "${component}" ]; then
	subject+=" (${component})"
fi

message="$(cat /proc/mdstat)\n\n"

message+="$(mdadm --detail /dev/md0)\n\n"

message+="$(df -h | head -n 1)\n"
message+="$(df -h | grep /dev/md)"

echo -e "${message}" | mutt -s "${subject}" "${recipient}"

