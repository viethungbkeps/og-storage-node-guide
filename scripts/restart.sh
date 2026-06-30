#!/bin/bash

echo "Restarting OG Storage Node..."

sudo systemctl restart zgs

sleep 5

sudo systemctl status zgs
