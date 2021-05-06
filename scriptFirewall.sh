#!/bin/bash

iptables -I INPUT -p ICMP -j DROP
