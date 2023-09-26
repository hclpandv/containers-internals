# containers-internals
containers-internals, an experiment from various youtube channels and blogs to understand how container technology works under the hood.

The trick : 

1. `chroot` command. This changes the root of the file system and attaches the `/` to any child dir. Hence provides files system isolation.
2. `namespaces` a legacy unix concept and `unshare` command helps to isolate processes and other system calls.
3. `cgroups` or control groups restricts the usage of the host system by the child process which is running the container. 

## Setup the demo environment

1. Execute command `git clone https://github.com/hclpandv/containers-internals.git` to download the files
2. Execute `cd containers-internals && sudo chmod u+x` to get into the directory and ensure the setup-demo.sh file is executable.
3. Execute `./setup-demo.sh`

## Start the Experiments

1. On host system : `unshare -p -f --mount-proc $PWD/fakeroot/proc chroot fakeroot /bin/sh`

