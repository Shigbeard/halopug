#!/bin/bash
cd /home/container/eldewrito

# Read Environment Vars and modify config accordingly
# I can hear flutters screaming right now
cat dewrito_prefs.cfg \
    | sed s/{SERVERNAME}/${SERVERNAME}/ \
    | sed s/{PASSWORD}/${SERVERPASSWORD}/ \
    | sed s/{RCONPORT}/${RCONPORT}/ \
    | sed s/{PORT}/${OTHERPORT}/ \
    | sed s/{GAMEPORT}/${GAMEPORT}/ \
    | sed s/{RCONPASSWORD}/${RCONPASSWORD}/ \
    | sed s/{PLAYERNAME}/${PLAYERNAME}/ \
    | sed s/{MESSAGE}/${MESSAGE}/ \
    > dewrito_prefs.cfg

wine eldorado.exe -launcher -dedicated -window -height 200 -width 200 -minimized