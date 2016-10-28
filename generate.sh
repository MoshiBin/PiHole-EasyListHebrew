#!/bin/bash
curl -sNL https://raw.githubusercontent.com/easylist/EasyListHebrew/master/EasyListHebrew.txt | grep '^||' EasyListHebrew.txt | grep -v 'domain=' | sed 's/^||//' | sed 's/\$.*$//' | sed 's/\^//' | grep -v '*' | grep -v '/' | awk '{print "0.0.0.0 " $0}' > EasyListHebrew.hosts
