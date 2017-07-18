offset=$(strings -t d CrackMe06.exe | grep "DEMO VERSION" | grep -o '[0-9][0-9][0-9][0-9]')
echo "$offset"
