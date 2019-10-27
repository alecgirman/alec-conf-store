# Installation Guide:

### Prequisites:

* Removable media with a copy of Arch Linux.  The more up-to-date it is, the more likely it will work

	* This drive should have persistence.  If you have 16GB or less, you should be mounting this persistent partition

	* So far, I have never gone over 8GB of RAM used by the *airootfs* so it
	likely won't be a problem however I can't guarantee that any certain PC
	specs, even high end PC's, are guaranteed to work.

* Access to a wired or wireless network.  This will be needed to install other packages.

* Basic knowledge of Linux and the shell

> DO NOT EXECUTE ANY SCRIPTS WITHOUT READING THEM FIRST.

In addition to just being a good security practice, some of my scripts have been
specifically designed for my computers.  For example, the core distringuishes
which machine its running on by checking if the machine has more then 17GB of RAM.

1. Create a directory named 'fdp' in the root directory `mkdir /fdp`

2. Find the persistent partition with `lsblk`

>		NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
>		loop0         7:0    0 513.1M  1 loop /run/archiso/sfs/airootfs
>		sda           8:0    1 117.2G  0 disk 
>		├─sda1        8:1    1  17.2G  0 part /run/archiso/bootmnt
>		└─sda2        8:2    1   100G  0 part /fdp
>		nvme0n1     259:0    0 238.5G  0 disk 
>		├─nvme0n1p1 259:1    0   529M  0 part 
>		├─nvme0n1p2 259:2    0   100M  0 part 
>		├─nvme0n1p3 259:3    0    16M  0 part 
>		└─nvme0n1p4 259:4    0  95.4G  0 part 

3. Your persistent partition will alwqays be under the same drive as
	wherever `/run/archiso/bootmnt` is mounted.  In this example, I have /fdp mounted
	on `dev/sda2`

4. Mount your persistent partition that you found in step three to /fdp.  This can
	be done with `mount /dev/sda2 /fdp` where /dev/sda2 is whatever your persistent
	mount is located on.

### Now, if you run `ls /`, you should see your FDP folder.

 *root@archiso /#* **ls /**
       
>       bin
>       boot 
>	dev 
>	etc 
>	**fdp**
>	home 
>	lib 
>	lib64 
>	mnt 
>	opt
>	proc 
>	root 
>	run 
>	sbin 
>	srv 
>	sys 
>	tmp 
>	usr 
>	var

### Check the contents of your FDP folder.  You should now see your ASHE directory.

### In the fdp directory, you should see *at least* these folders.  There will more likely additional folders too.

*root@archiso /#* **ls /fdp**
	
> 	ashe
> 	persistence.conf
> 	pkgcache

5. Execute the boot script.  It is simply invoked by using `/fdp/init`

*root@archiso /#* **zsh** /fdp/init

The first thing core script does is that it will present a message that advises you to exit
the script and open tmux if you have not already.  **core.sh may take a while to execute.**
It is reccomended that you open a terminal multiplexer prior to executing the script so that
you can do other things while it runs.  I have seen it take upwards as 30-45 minutes on slow
internet access.  Ashe's package cache is currently non-operational despite command output.

If you run into any errors or problems with the scripts, you should first check the stability
of that release which will be here.  **I will be marking stable vs unstable releases.**
