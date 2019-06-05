#!/bin/bash
rm IPResult.txt && rm NResult.txt
python2 ShodanSearch.py >> IPResult.txt
cat IPResult.txt | while read line
do
sudo nmap -n -Pn -sV -p 80,8080 -oG - $line >> NResult.txt
done
