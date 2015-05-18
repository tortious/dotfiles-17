kono dotfiles
===================

What is this?
-------------------

Kono's dotfiles, done from scratch. Utilizing zgen or antigen, these dotfiles are intended to be sourced as unique modules, as needed. All the goodies are going to be sliced into unique plugins/modules in an effort to avoid the extreme code rot of the original version.

Where'd the old ones go?
-------------------------

They've moved to bkonowitz/dotfiles-archive for historical and temporary reference purposes. The amount of code rot in those is rather insane, mostly due to the fact that I haphazardly ported 10+ years of legacy dotfiles into a fork of the excellent thoughtbot/dotfiles repo. A clean start, with forced modularity, and cross-platform support as a focal point became a necessity. Sometimes new *is* good. Especially when they are so fresh and so clean.

Requirements
------------------

... let's talk about that later. After things are super modular, I'll re-evaluate.

Setup your shell as zsh first and foremost. Might address this with some snazzy install scripts.
Also need git, obviously.

Installation
------------------

See above.

Afterwards, make sure you take care of the little things, like setting JAVA_HOME in a .zshrc.local
or env override. Also might make this automagical.

For a basic get running with the full enchilada, simply clone the directory wherever your heart
desires, and run 

    ./scripts/bootstrap.sh

That will link up all the appropriate symlinks for every module, as well as make use of
zgen_bootstrap's base zshrc.symlink, ensuring first load links to all of the included modules. For
alternative usage, it is recommended to grab the excellent lightweight zshell plugin manager
[zgen](https://github.com/tarjoilija/zgen) and independently `zgen load` the modules of interest.
Also in progress is a chef-cookbook with defaults for kitchenplan. Link coming soon.
