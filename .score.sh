#!/bin/bash

#Executing playbook
ansible-playbook mainplaybook.yml
pass=0;
fail=0;

# After Executing playbook, check if file transfered there..
if [ $? -eq 0 ];then
        if [[ -f /home/user/test/simplefile.txt ]] ;then
        ((pass++))
        fi;
fi;

score=$(( $pass * 100 ))

echo "SCORE:$score%"



