#!/bin/bash

interface="$1"
current_mac=`macchanger "$interface" | grep "Current MAC:"`

echo "$current_mac"

ifconfig "$interface" down
new_mac=`macchanger -r "$interface" | grep "New MAC:"`
ifconfig "$interface" up

echo "$new_mac"
