arch-mobile:

## 1

### Status: 
<p style="color: #00ff00;">Resolved</p>

### Summary:

Large RAM usage after UI boot, only affected by mobile ATM.

## Known Details:

System claims that /fdp is 100% in use despite only 2GB in use.

## Reproducibility Info

Command history:

     mkdir /fdp
     cd fdp
     mount /dev/sda2 /fdp
     cd /fdp/ashe
     df
     du -sh /fdp/pkgcache
     partx
     parted
     df /
     df /fdp
     du -sh /
     df
     du /*

arch-server:
	Also affected

global:
	It was discovered that this bug affected all machines.


## Solution

The problem was solved, unfortunately the solution is 100% unknown.  I remember
it went from broken to fixed in just one commit, so I will update that info as
soon as I get to it.

Last updated Nov 9 2019 14:15 EST
