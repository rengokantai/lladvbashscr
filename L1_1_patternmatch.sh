#!/bin/bash

CAT=rababarabarabarara
echo ${CAT}
echo '##*ba is' ${CAT##*ba}
echo '#*ba is' ${CAT#*ba}
echo '%%ba* is' ${CAT%%ba*}
echo '%ba* is' ${CAT%ba*}
