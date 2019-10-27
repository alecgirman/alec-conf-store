arch-mobile:

## 1
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

global:


