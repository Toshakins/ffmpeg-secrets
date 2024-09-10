#!/bin/bash

set -eux

grep duration concat.txt | awk '{ sum += $2 } END { print sum }'
