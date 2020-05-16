" Plugs

call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'                                       " colorscheme
Plug 'sonph/onehalf'
"Plug 'Roy-Orbison/nord-vim-256' , { 'branch': '256' }
Plug 'itchyny/lightline.vim'                                " Status line
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }    " 側邊檔案樹 Tab(normal mode)
Plug 'preservim/nerdcommenter'                              " 註解 commentToggle <learder>c<space>
Plug 'ervandew/supertab'                                    " 讓 tab 判斷自動補齊或 tab
Plug 'rstacruz/vim-closer'                                  " auto-pairs 在{}enter 時怪怪的, 改成這個只吃左括號 enter
Plug 'tpope/vim-surround'                                   " 字包起來 ysiw' 加上', cs'{ 取代成{, ds{ 刪掉{, Vmode S' 加上'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'vue', 'sass'] }  " Emmet
Plug 'leafOfTree/vim-vue-plugin'                            " 支援 vue 混和型檔案的 syntax, emmet 等
Plug 'airblade/vim-gitgutter'                               " 檔案左邊 git + - 符號
" -----------------------------------------------------------------------------------------
" Plug 'easymotion/vim-easymotion'          " 好像是很厲害可以跳來跳去的快捷鍵，還沒研究
" Plug 'valloric/youcompleteme'             " 自動補齊 Tab(insert mode), 影響到開起速度，先拿掉
" Plug 'junegunn/goyo.vim'                  " Distraction-free writing 專心寫作模式，目前用不到

call plug#end()

" Plugin Setting

" NerdTree
" 改成 tab 開起 nerttree
nmap <silent> <TAB> :NERDTreeToggle<CR>     
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
let NERDTreeQuitOnOpen=1

" NerdComment
let mapleader=','                           " leader key 改成 ','
let g:NERDToggleCheckAllLines = 1           " 區段註解時，判斷有註解過的部分

" 註解 toggle 改成 ,,
map ,, <plug>NERDCommenterToggle            

" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'molokai'
      \ }

" Emmet
" 改快捷鍵
imap ,. <C-y>,

" vim-vue-plugin
let g:vim_vue_plugin_use_sass = 1


set enc=utf8
filetype plugin on                          " 偵測檔案類型，nerdcommenter 註解用
set nocompatible                            " 與 vi 非相容模式
set noshowmode                              " 不要顯示 vim mode, 要放在 nocompatible 後
set backspace=indent,eol,start              " 設定 backspace 會刪掉的東西， 預設退到行首，不能退換行

set expandtab                               " tab 用 space
set tabstop=4                               " tab 4 格 space 長度""
set shiftwidth=4                            " 設定自動縮排寬度， 全選用 = 縮排時會用到
set smartindent                             " 比 autoindent 聰明一點，會判斷右括號下一行不要縮排
" set cindent                               " 比 smartindent 更聰明一點，會參考程式邏輯，不確定效果先放著
autocmd Filetype html,javascript,css,sass,vue setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType make setlocal noexpandtab  " Makefile 恢復用 tab

syntax on
set t_Co=256                                " 支援 color-256
"colorscheme onehalfdark
colorscheme molokai
set background=dark                         " 有些主題有分 dark/light
"highlight Normal ctermbg=232
set hlsearch                                " 搜尋的 pattern 會 high light
set cursorline                              " 底線
set number                                  " 行號
" au BufRead,BufNewFile *.g set syntax=antlr3 " antlr schema(for comiler course)

" key mapping
"
" no hightlight
nmap <silent> f :noh<CR>
" vim 切分頁
nmap <silent> <C-D> gT
nmap <silent> <C-F> gt
"imap <silent> <C-D> <ESC>gT<ESC>a
imap <silent> <C-F> <ESC>gt<ESC>a
