" Show line number
set number
	
" Enable mouse support
set mouse=a

" Enable highlight search pattern 
set hlsearch

" Enable smartcase search sensitivity
set ignorecase
set smartcase

" Show the matching part of pairs [] {} and () 
set showmatch

" Show colorfull text
syntax on

" Set colorscheme
colorscheme torte

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %f\ %M\ %y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

" Set tab size
set tabstop=4

" Automatically insert tabs or spaces
set autoindent
set smartindent

" Highlight the current line
set cursorline

" Do not pretend to be vi
set nocompatible

" Enable plugins
filetype plugin on


" FINDING FILES:

" Search down into subdirectories
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer


 
" TAG JUMPING: 

" Create the 'tags' file ( may need to install ctags first )
"command! MakeTags !ctags -R .

" Automatically generate tags when opening a file
autocmd BufReadPost *.{c,cpp,h,py,js,php,sh,pl,rb} silent! !ctags -R

" Update tags file when saving a file
autocmd BufWritePost *.{c,cpp,h,py,js,php,sh,pl,rb} silent! !ctags -R

" Delete the tags file when quitting Vim
autocmd VimLeave *.{c,cpp,h,py,js,php,sh,pl,rb} silent! !rm -f tags

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doens't help if you want a visual list of tags 
