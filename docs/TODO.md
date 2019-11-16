
Key
----
[ ] = Not done

[x] = Done

[/] = In progress or partially done
----

Organization:

[ ] folder restructuring
	* make a projects folder, everything i make goes there
	* organize by name or language
	* release binaries must still symilnk to ashe/bin

Configs:

[ ] Customize ZSH
    [X] install oh-my-zsh
    [ ] create and source custom zshrc file
[X] Customize nvim per-language macros, scripts, and snippets
    * I'm markin this as complete now because deoplete and neosnippets do this alone but also offer so much customization

Misc:

[ ] **Make boot script clone and backup the ashe directory on boot**
[ ] **shutdown script using zsh alias that will auto-push to /dev/pulse**
[*] Change elinks settings on synced config: 
	[X] document.browsing - meta minimum set to 500 or lower
	[X] document.browsing.access keys - set top two options to 1
	[X] document.browsing.forms - set confirm submission to 1
	[X] document.browsing.links.active - enable number keys
	[X] document.browsing.searching - enable regex
	[X] ui - show ip, always show menu, display goto in new tab
	[ ] customize colors!

**Due to data loss due to system freezes, a backup solution is VERY necessary for 2.0**

~~Long term ideas~~ DevOps Necessities for this project, **this needs to happen in 2.0**

[ ] **Unit tests**
    * Good unit tests will involve launching 10s or 100s of instances and making sure they all succeed.
    * Start with init.py 

[ ] **Docker**
    * See above, with unit tests.  With docker, I have the power to batch-test them.

Long term goals/ideas:

[ ] Make ashe a custom shell written in C/C++



Last Modified: 2019-11-15T21:23:26
