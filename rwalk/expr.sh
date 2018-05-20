#!/bin/sh
for x in `seq 16`; do echo -n "$x: "; python3 rw.py `echo 2^$x|bc`; done

