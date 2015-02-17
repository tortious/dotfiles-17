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
