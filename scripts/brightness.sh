#!/bin/bash

echo "Set your brightness"

read brighnnessValue

brightnessctl -d intel_backlight set $brighnnessValue%
