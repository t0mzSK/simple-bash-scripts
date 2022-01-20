#!/bin/bash
ifconfig $1 | grep ether | awk '{print $2}'
