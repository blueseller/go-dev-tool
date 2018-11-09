syntax on
set nocompatible 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'Tagbar'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

set smartindent
if has("vms")
      set nobackup  
else      
    set backup
endif
set ruler
set showcmd
set tabstop=4
set expandtab
set shiftwidth=4
set foldcolumn=2
set incsearch
set backupdir=~/backup/vim
set backupext=.bak
set showmatch
set helplang=en
set backspace=indent,eol,start
set nu
color torte

" =================================================
let g:tagbar_width=30
" 映射Tagbar的快捷键,按F8自动打开
map <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {  
            \ 'ctagstype' : 'go',  
            \ 'kinds'     : [  
            \ 'p:package',  
            \ 'i:imports:1',  
            \ 'c:constants',  
            \ 'v:variables',  
            \ 't:types',  
            \ 'n:interfaces',  
            \ 'w:fields',  
            \ 'e:embedded',  
            \ 'm:methods',  
            \ 'r:constructor',  
            \ 'f:functions'  
            \ ],  
            \ 'sro' : '.',  
            \ 'kind2scope' : {  
            \ 't' : 'ctype',  
            \ 'n' : 'ntype'  
            \ },  
            \ 'scope2kind' : {  
            \ 'ctype' : 't',  
            \ 'ntype' : 'n'  
            \ },  
            \ 'ctagsbin'  : 'gotags',  
            \ 'ctagsargs' : '-sort -silent'  
            \ }  
" =================================================
"
let g:go_version_warning = 0
