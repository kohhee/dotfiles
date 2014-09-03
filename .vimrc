set nocompatible "vi互換をオフ
filetype off "ファイル対応の自動検出をしない

" 表示
set number "行番号を表示
set showmode "入力モードを表示
set title "編集ファイル名を表示
set ruler "ルーラを表示
set showcmd "入力中のコマンドを表示
set showmatch "対応する括弧を表示
set laststatus=2 "常にステータスラインを表示

" 編集
set backspace=start,eol,indent

" プログラミング
syntax on "構文ハイライト
set t_Co=256 "256色配色を用いる
set smartindent "自動的にインデント
set expandtab "タブ文字を空白文字に置換
set ts=4 sw=4 sts=0 "タブ文字は空白文字4文字分
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif "カーソル位置を保持

" 検索
set ignorecase "小文字のみの場合は大/小文字を区別しない
set smartcase "大文字が含まれる場合は大/小文字を区別する
set wrapscan "最後まで検索したら最初に戻る
set noincsearch "インクリメンタルサーチをしない
nnoremap <ESC><ESC> :nohlsearch <CR> "検索結果ハイライトを<Esc>連打でリセット

" クリップボード
set clipboard=unnamed,autoselect "ヤンク時にクリップボードを利用

" NeoBundle
if has('vim_starting')
    "set runtimepath+='path to neobundle directory'
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
"NeoBundle 'https://bitbucket.org/kovisoft/slimv'

" color scheme
NeoBundle 'tomasr/molokai'
colorscheme molokai

filetype plugin indent on
filetype indent on
