#!/bin/bash
command="prog -foo -whatever"
log="prog.log"
match="this is the what i want to match"
echo $PORT >/PORT
#jupyter notebook --ip=0.0.0.0 --port=$(cat /PORT) --NotebookApp.token='' --NotebookApp.password=''
echo 'high you should you you you you you you you you you you you you'
/usr/sbin/sshd -p 8097 -D > "$log" 2>&1 &

while sleep 60
do
    if fgrep --quiet "$match" "$log" 
    then
        jupyter notebook --ip=0.0.0.0 --port=$(cat /PORT) --NotebookApp.token='' --NotebookApp.password=''
    fi
done
