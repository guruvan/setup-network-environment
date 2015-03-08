FROM google/golang
COPY . /setup-network-environment
RUN  cd /setup-network-environment \ 
     && go get github.com/tools/godep \
     && godep go build .

ENTRYPOINT ["/setup-network-environment/copy-target.sh"]
