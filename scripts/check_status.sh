#!/bin/bash

echo "Checking service status..."

systemctl status zgs --no-pager

echo

echo "Checking disk usage..."

df -h

echo

echo "Checking memory..."

free -h
