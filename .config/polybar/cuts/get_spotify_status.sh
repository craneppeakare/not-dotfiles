#!/bin/bash

playerctl -p spotifyd metadata -f "{{artist}} - {{title}}"
