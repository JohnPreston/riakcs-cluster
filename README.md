riakcs-cluster
==============

Insall, configure and deploy a RiakCS cluster on physical servers

Requirements
------------

Hosts: 

- riakcs_nodes

Role Variables
--------------

| Name | Default | Description 
| --- |--- |--- |---
| riak_url | http://yum.basho.com/gpg/basho-release-6-1.noarch.rpm | Basho riak repository RPM
| max_ulimit | 43008 | Define the max ulimit on the machine
| vnet_defined | em2 | Defines the interface on which Riak will be bound
| riak_vmargs_path | /etc/riak | Riak default configuration folder
| riak_appconfig_path | /etc/riak | Riak default configuration folder
| riakcs_vmargs_path | /etc/riak-cs | RiakCS default configuration folder
| riakcs_appconfig_path | /etc/riak-cs | RiakCS default configuration folder
| stanchion_vmargs_path | /etc/stanchion | Stanchion default configuration folder
| stanchion_appconfig_path | /etc/stanchion | Stanchion default configuration folder

Dependencies
------------

None
Example Playbook
----------------

```

- hosts: riakcs_nodes
  roles:
  - riakcs-cluster

```

```

- hosts: riakcs_nodes
  roles:
  - riakcs-cluster
  vars:
  - vnet_defined: "eth1.1001"

```

License
-------

Apache

Author Information
------------------

John Preston [John Mille]

