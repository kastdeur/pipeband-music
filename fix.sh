#!/bin/bash
COMMAND=''

sed "s/\"\(.*.ily\)\"/\".\/\1\"/g"  -i **/**/*.ly **/*.ly







## dr|fr to tutti
#:%s/\([^\s ]*\)\s*\\dr\(.\{-}\)\\fr/\\tutti { \1 \2 }
