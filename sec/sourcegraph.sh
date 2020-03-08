#!/bin/bash

mkdir -p $TOOLDIR/services/

echo 'docker run --publish 0.0.0.0:7080:7080 --rm --volume ~/.sourcegraph/config:/etc/sourcegraph --volume ~/.sourcegraph/data:/var/opt/sourcegraph sourcegraph/server:3.13.1' \
    > $TOOLDIR/services/sourcegraph.sh

chmod +x $TOOLDIR/services/sourcegraph.sh
