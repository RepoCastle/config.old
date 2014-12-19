#!/bin/sh

ps aux | grep -i "ssh -fNTD 8765" | awk {'print $2'} | xargs kill -9
ssh -fNTD 8765 tokyogfw.tk
