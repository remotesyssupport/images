# enable go language support
export GOROOT=/usr/local/go
export GOPATH=/var/cache/drone
export PATH=$PATH:$GOROOT/bin

#[ -d $GOPATH/src ] || mkdir -p $GOPATH/src
#[ -d $GOPATH/pkg ] || mkdir -p $GOPATH/pkg
#[ -d $GOPATH/bin ] || mkdir -p $GOPATH/bin