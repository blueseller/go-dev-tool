# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/go/bin

export PATH
export GOPATH=/home/liukai02/go

alias gopb="protoc --go_out=plugins=grpc:."

alias etcdctl='env ETCDCTL_API=3 /opt/lanxin/etcd/etcdctl'

alias etcdshow='etcdctl --endpoints=10.95.55.9:2379 get --prefix=true ""'

alias shuimu='telnet bbs.newsmth.net'
