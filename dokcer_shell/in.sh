#! /bin/bash
if [ $# -eq 0 ];then
    echo "please input docker id"
    exit
fi
PID=$(docker inspect --format {{.State.Pid}} $1)

nsenter --target $PID --mount --uts --ipc --net --pid
