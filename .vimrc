set autoindent
set smartindent
set tabstop=4
set nu
set mouse=a
syn on
set syntax=on
filetype indent plugin on
set relativenumber
set colorcolumn=81
set ruler
set noexpandtab
set nobk
set nocompatible
inoremap ( ()<left>
set showcmd
set wildmenu
set hlsearch
set hidden
set ignorecase
set smartcase
set laststatus=2
set confirm
set nostartofline
set cmdheight=2
set autoread
set pastetoggle=<F11>
set writeany
set ttyfast
set encoding=utf-8
set showmode
set showmatch
set incsearch
set cursorline
set wildignore=*.o,*.*a,*.so,*.tar,*.tgz
nnoremap <C-L> :nohl<CR><C-L>
if filewritable(expand("~/.vim/backup")) == 2
	set backupdir=$HOME/.vim/backup
else
	if has("unix") || has("win32unix")
		call system("mkdir $HOME/.vim/backup -p")
		set backupdir=$HOME/.vim/backup
	endif
endif

function! MyFoldFunction()
		let line = getline(v:foldstart)
		let sub = substitute(line,'/\*\|\*/\|^\s+', '', 'g')
		let lines = v:foldend - v:foldstart + 1
		return v:folddashes.sub.'...'.lines.'
Lines...'.getline(v:foldend)
endfunction
set foldmethod=syntax
set foldnestmax=1
set foldtext=MyFoldFunction();
imap <C-Space> <C-X><C-O>
set omnifunc=syntaxcomplete#Complete
iab #i #include
iab #d #define
iab #e #endif
