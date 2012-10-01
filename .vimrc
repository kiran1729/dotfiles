" Use color syntax highlighting.
syntax on

" Options.
colorscheme murphy
set autoindent
set backspace=2		" Allows insert-mode backspace to work as one expects
set cindent
set cinkeys=0{,0},:,!^F,o,O,e	" See "cinkeys"; this stops "#" from indenting
set fileformat=unix	" No crazy CR/LF
set listchars=tab:\ \ ,trail:? " If you do ":set list", shows trailing spaces
"set mouse=		" I don't like the mouse in VIM
set nobackup		" Don't use a backup file (also see writebackup)
set nojoinspaces	" One space after a "." rather than 2
set ruler		" Show the line position at the bottom of the window
set scrolloff=1		" Minimum lines between cursor and window edge
set shiftwidth=4	" Indent by 4 columns (for C functions, etc).
set showcmd		" Show partially typed commands
set showmatch		" Show parentheses matching
set smartindent		" Indent settings (really only the cindent matters)
set textwidth=80	" Maximum line width
"set viminfo='0,\"100,	" Stay at the start of a file when opening it
set whichwrap=<,>,[,],h,l " Allows for left/right keys to wrap across lines
set writebackup		" Write temporary backup files in case we crash
" Searches
set incsearch           " search as you type
set ic                  " ignore case in searches
set hlsearch		" highlight search terms
set nowrapscan          " do not wraparound searches

if version >= 600

" Vim 6 options

"  colo cduan
  set formatoptions=tcroql

  " Increase the highlighting accuracy
  syn sync fromstart

else

  set fo=tcroql
  syn sync minlines=1000

end

"set guifont=Lucida_Console:h10:cANSI 
set guifont=consolas:h10:cANSI 

"map <Del> <BS>
"imap <Del> <BS>

" Based on VIM tip 102: automatic tab completion of keywords
function InsertTabWrapper(dir)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
	return "\<tab>"
    elseif "back" == a:dir
	return "\<c-p>"
    else
	return "\<c-n>"
    endif
endfunction

"inoremap <tab> <c-r>=InsertTabWrapper("fwd")<cr>
"inoremap <s-tab> <c-r>=InsertTabWrapper("back")<cr>

set encoding=utf-8

