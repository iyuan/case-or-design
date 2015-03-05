execute pathogen#infect()
set nocompatible


set ff=unix
set fileformat=unix
"编码设置,彻底解决中文乱码问题
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
let &termencoding=&encoding
" 解决菜单乱码
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8
"set guifont=Consolas:h12
"set guifont=Droid_Sans_Mono_Slashed:h12:cANSI
"set guifont=M+_1c
set cursorline
set cuc

set lbr
set fo+=mB
set history=50
set ruler
set noeb
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set nobackup
set noswapfile
filetype plugin indent on
set iskeyword+=_,$,@,%,#,-
set smartindent
set wildmenu
set backspace=2
set hlsearch
set mouse=a
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1


"autocmd FileType python set complete+=k~/vimfiles/tools/pydiction
"au FileType python so /usr/share/vim/vim73/syntax/python.vim
colorscheme lucius
"LuciusDarkLowContrast

map <F6> :NERDTree<CR>
map <F7> :TlistToggle<CR>
map <F8> :Calendar<CR>
map <S-Space> :VimwikiToggleListItem<CR>
autocmd FileType python map <buffer> <F9> :call Flake8()<CR>
autocmd FileType python map <buffer> <F10> :call Autopep8()<CR>

syntax on

"nerd ignore
let NERDTreeIgnore = [ '*.pyc' ]

"vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_CJK_length = 1
let g:vimwiki_badsyms = ' '
let g:vimwiki_hl_cb_checked = 1
let tlist_vimwiki_settings = 'wiki;h:Headers'
"let g:vimwiki_list = [{'path': 'D:\My Dropbox\VimPrivateWiki'},
"                    \ 'path_html': 'D:\My Dropbox\Public\vimwiki',
"                    \ 'html_header': 'D:\My Dropbox\vimwiki\template\header.tpl',
"                    \ 'html_footer': 'D:\My Dropbox\vimwiki\template\footer.tpl'},
"                    \ {'path': 'F:\vim-script-cn\intro-wiki',
"                    \ 'path_html': 'F:\vim-script-cn\intro',
"                    \ 'html_header': 'F:\vim-script-cn\intro-wiki\template\header.tpl',
"                    \ 'html_footer': 'F:\vim-script-cn\intro-wiki\template\footer.tpl'}
"                    \ ]
let g:vimwiki_list = [{'path':'/home/iyuan/tmp/private/wiki/source/',
            \'template_path' : '/home/iyuan/tmp/private/wiki/template/',
            \'template_default' : 'default_template',
            \'template_ext' : '.html',
            \'path_html': '/home/iyuan/tmp/private/wiki/html/'}]
