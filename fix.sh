#!/bin/bash
COMMAND=''

sed "s/\"\(.*.ily\)\"/\".\/\1\"/g"  -i **/**/*.ly **/*.ly
