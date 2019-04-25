# Halo Pug Bot concept

This is some dumb docker thing I tried to make that would spin up 
eldewrito server containers, at the bequest of a bot.

## Features

Features with a ticked check box are """theoretically""" ready.

 - [x] Prebuilt image containing eldewrito server files and configured to replace certain config vars according to container env vars
 - [x] (Partially Complete) Entrypoint.sh file which facilitates the running of the server.
 - [ ] Auto Restart game servers if they crash.
 - [ ] Remote Service Monitoring (look into communicating directly with the docker daemon, like ptereodactyl panel)
 - [ ] Discord bot that deploys, monitors, and destroys containers upon command.
 - [ ] Configured to limit container resources so laggy servers don't impact other servers.
 - [ ] Store game logs from each server

## Notes

Not included in this repository are the files for eldewrito to run. 
These are intentionally absent, as they contain assets that belong to 
Microsoft and cannot be redistributed without legal issues.

## Building

Prior to building, ensure your eldewrito install is added to the repo's 
root folder (the same folder as this file), and ensure it is called 
"eldewrito".
From there, simply build with `docker build -t shigbeard/halopug:latest 
.`.
Replace `latest` with the version name you wish to work with.

## Running

When creating a container with this image, be sure to define various 
envvars. The envvars used are...

- SERVERNAME
- SERVERPASSWORD
- RCONPORT
- OTHERPORT
- GAMEPORT
- RCONPASSWORD
- PLAYERNAME
- MESSAGE

You will also need to configure the container on creation to open the 
ports you give it. The default ports are TCP: 11775, 11777 and UDP: 
11774. GAMEPORT is the UDP port, while OTHERPORT and RCONPORT are TCP.

## Support

I cant work any further on this. I want to create and test the image but 
I can't because I'm doing this on Windows, my upload speed is terrible 
and I cant afford to spin up a cloud server to deal with this. In 
addition, Windows can't seem to figure out how to install any network 
drivers so until I get off my ass and reinstall windows... this project 
remains dormant.
