---
title: Rice
publishDate: 2024-06-20 15:32:00
img: /assets/sparc.png
img_alt: A picture of an old sparc t4-1 server
description: |
  My current and previous server shenanigans
tags:
  - Useful shit
  - Linux
---
# The preamble
I've been tinkering with servers for about a year and a half as of writing.
I first started looking into them because my old hypixel skyblock guild needed a host
for discord-guild chat bridges. After that shitshow I started getting more invested in self hosting
and other server related things. Which is also around I found out my dad had taken home an old 
sparc t4-1 server from work (see above). Of course I wanted to use it for my own projects but even getting an OS
installed on it was a pain (I did get gentoo to eventually boot) and being a sparc cpu it had next to 
no support from modern software like docker. It was sad that I couldn't use it for anything but it 
used electricity like crazy and it didn't make sense to keep it around so we took it back to the garage.

# My VPS tomfoolery
In total I've had 3 VPS' which currently 2 are active. The first one (eos) was a small 1gb linode instance,
the second one (selene) was some netcup VPS with 4gb of ram and the final one (theia) is a 20gb server from hostbrr. 
Currently theia is hosting a minecraft server and most of my services like git and vaultwarden, while eos is serving websites.
In the past year or so of messing around with servers I've learned so much about sysadmin stuff and how to use 
tools like docker. 

# Future plans/dreams
Eventually I'd love to have my own homelab with a bunch of servers and even more storage but until I have a full time job
to pay for the power bills that won't be happening anytime soon. For now my plan is to keep using theia for most things
and maybe migrate services from eos to it so I only have a single VPS to worry about. Also bully dad about getting a server :3
