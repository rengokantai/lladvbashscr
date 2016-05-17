#!/bin/bash
# $* refers to all elements
# $@ refers to each ele
echo "\$* gives $*"
echo "\$# gives $#"
echo "\$@ gives $@"
echo "\$0 is $0"

echo here is \$*
for i in "$*"
do
echo $i
done


echo here is \$@
for i in "$@"
do
echo $i
done
exit 0
