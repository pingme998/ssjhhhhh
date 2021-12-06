#!/bin/bash
command="prog -foo -whatever"
log="prog.log"
match="this is the what i want to match"

sshd -p 8097 > "$log" 2>&1 &
pid=$!

while sleep 60
do
    if fgrep --quiet "$match" "$log"
    then
        kill $pid
        exit 0
    fi
done
