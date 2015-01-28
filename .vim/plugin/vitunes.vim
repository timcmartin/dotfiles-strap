" Vim script that add ability to search and play iTunes tracks from Vim
" Maintainer:	Daniel Choi <dhchoi@gmail.com>
" License: MIT License (c) 2011 Daniel Choi

if exists("g:ViTunesLoaded") || &cp || version < 700
  finish
endif
let g:vitunes_tool = '/Users/tmartin/.rvm/gems/ruby-2.0.0-p247/gems/vitunes-0.4.9/lib/vitunes-tool-objc '
source /Users/tmartin/.rvm/gems/ruby-2.0.0-p247/gems/vitunes-0.4.9/lib/vitunes.vim

