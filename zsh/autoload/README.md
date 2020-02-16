# Understanding the ZSH Plugin layout

### Installing your own plugins

My ZSH scripts really do not come with much by itself to appreciate, but instead, is focused around
third party plugins.  It aims to deliver a polished plugin loading architecture that is heavily inspired
by Vim and Oh My ZSH.  Ideally, all of your oh-my-zsh will be compatible with this set of scripts, in
addition to giving you the most flexibility.

## The Loader

The core of this ZSH plugin is the Loader, which is essentially what oh-my-zsh is, except the core
loader is exposed to you and you are encouraged to write your own plugin loader to maximize your
customization.  A few plugins come bundled with the default loader, but those are my personal scripts
which are essentially uust for demonstration purposes as they are my personal scripts and are unlikely
to change to meet the needs of the community, but you are absolutely free to fork the project and change
them.  Basically this is my personal script repository and the core purpose for others is the ability to
customize how plugins are loaded.

**Please note that development of this loader has just recently begun so it may be lacking content.**

### Understanding the default loader

Within the ZSH folder, there are several folders, each corresponding to different types of scripts.
You may develop your own scripts and place them in these folders.  When ZSH starts and my base script
is sourced from your main .zshrc file, it then proceeds to load ZSH scripts in a specific way which
allows you to exactly customize when your scripts are loaded.

<!-- vim:ft=markdown Á-->
