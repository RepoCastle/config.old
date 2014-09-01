#!/bin/bash

for conf in `ls -d */ | cut -f1 -d'/'`; do
  setupfile=$conf/setup.sh

  if [ -f $setupfile ];
  then
    sh $conf/setup.sh
  else
    echo "Skip $conf"
  fi
done
