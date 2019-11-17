# Installation Guide:

## If you have already read this, read it again, shit changes literally every release.

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

1. Create a directory named 'fd' in the root directory `mkdir /fd` **(in previous versions, this folder was named 'fdp')**

2. Unfortunately, my installation instructions now are not as simple as before due to being in an unstable condition.
Knowledge of linux will help here because I'm too lazy to put in the commands.

3. Mount the flash drive onto /fd.  Use `lsblk` to find the partition.

4. This next part has to be done quick or the OS will either a) delete all of your config (it happens, I'm trying to fix it),
or b) it puts the symlinks in the folder instead of out.  For this step, three symlinks must be made and to minimize any
side effects of the linking process, its a good idea to verify that the link was made (ls into the dir with the link, the
link should be a different color.  Then, cd into the link and make sure there is NO recursive link in there.

1. **Symlink** /fd/root to override /root

2. Symlink /fd/cache/pacman to override /var/cache/pacman/pkg.  You will need to delete the existing pkg folder first.

3. If it isn't already made (it should), /fd/ashe/nvim to override ~/.config/nvim.  If you opened nvim before running this, 
you may need to delete the existing fodler.

4. (the easiest part): Navigate to /fd/ashe/zsh and source boot.zsh (do not run with zsh, use the `source` command!)

5. It will print out two functions that it loaded in green.  Ruun them in that order and KDE should startup soon!


Last Updated Nov 9 2019 14:37 EST
