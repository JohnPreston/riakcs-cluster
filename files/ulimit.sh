#!/usr/bin/env bash

cat >> /etc/security/limits.conf <<EOF
# ulimit settings for Riak CS
root soft nofile 65536
root hard nofile 65536
riak soft nofile 65536
riak hard nofile 65536
EOF

ulimit -n 65536
