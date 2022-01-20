#!/bin/bash

ifconfig $1 | grep inet | awk '{print $2}' | head -n 1
