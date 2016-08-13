scriptencoding utf-9
set nocompatible
set number
set backspace=indent,eol,start
set title
set showcmd
set showmatch
syntax on
set tabstop=2
set smartindent
set wrapscan
set mouse=a
set autoindent
set formatoptions+=mM
set ruler
set wrap
set laststatus=4
set cmdheight=4

" Neobundle 設定

" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Neobundleを読み込む
call neobundle#begin(expand('~/.vim/bundle/'))
 
" Neobundle自体をNeobundleで管理する
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimfiler'
nnoremap <Space>f :VimFiler -split -simple -winwidth=30 -no-quit<ENTER> 
nnoremap <Space>q :q<ENTER>
nnoremap <Space>w :w<ENTER>
NeoBundle 'Shougo/unite.vim'
" vimproc

NeoBundle 'Shougo/vimproc'
 
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'justmao945/vim-clang'
NeoBundle 'Shougo/neoinclude.vim'
" vim-autoclose クオート/括弧の対を自動入力する
NeoBundle 'Townk/vim-autoclose'

" syntastic 構文チェッカー
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Lokaltog/vim-easymotion'

NeoBundleLazy 'pangloss/vim-javascript', {'filetypes': ['html', 'php', 'javascript']}

" Neobundle を終了する
call neobundle#end()

" 自動チェック
" 毎回聞かれてしまうので不要な場合は削除
NeoBundleCheck

" Neobundle 設定終了

" ファイルタイプを有効にする
" indent on で、filetype onも同時に行われる
filetype plugin indent on
