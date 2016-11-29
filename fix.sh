#!/bin/bash

BAGPIPE="\\\\include \"bagpipe.ly\""
LILYDRUM="\\\\include \"lilydrum.ly\""
CONFIG="\\\\include \"config.ily\""

sed "s/${CONFIG}/${BAGPIPE}\n${LILYDRUM}\n\n${CONFIG}/g" -i **/**/full.ly **/full.ly
sed "s/${CONFIG}/${BAGPIPE}\n\n${CONFIG}/g" -i **/**/pipes*.ly **/pipes*.ly
sed "s/${CONFIG}/${LILYDRUM}\n\n${CONFIG}/g" -i **/**/drums*.ly **/drums*.ly
sed "s/${CONFIG}/${LILYDRUM}\n\n${CONFIG}/g" -i **/**/bass*.ly **/bass*.ly
sed "s/${CONFIG}/${LILYDRUM}\n\n${CONFIG}/g" -i **/**/tenor*.ly **/tenor*.ly
sed "s/${CONFIG}/${LILYDRUM}\n\n${CONFIG}/g" -i **/**/side*.ly **/side*.ly
