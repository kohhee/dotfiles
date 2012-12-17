set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'nvie/vim-pep8'

filetype plugin on
filetype indent on

syntax enable
filetype on

"##########基本系##########
set encoding=utf-8 "文字エンコーディングの指定
set fileencodings=utf-8 "文字エンコーディングの指定
set noswapfile "swapを作成しない
set fileformats=unix,dos,mac "改行コードの自動認識
set vb t_vb= "ビープ音消音

"##########表示系##########
set number "行番号を表示
set showmode "モードを表示
set title "ファイル名を表示
set ruler "ルーラを表示
set showcmd "コマンドを表示
set showmatch "対応する括弧を表示
set laststatus=2 "ステータスラインを表示
set scrolloff=3 "カーソルの上下に表示する行数の指定

"##########実装系##########
syntax on "カラーの有効化
set smartindent "オートインデント
set expandtab "タブの代わりに空白文字挿入
set tabstop=4 "タブは半角4文字分
set backspace=indent,eol,start "backspaceの有効化
highlight Comment ctermfg=Green "コメントの色を変更
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif "前回終了時の行で起動

"##########検索系##########
set hlsearch "検索文字列のハイライト表示
set ignorecase "検索文字列が小文字の場合は大/小文字を区別しない
set smartcase "検索文字列に大文字が含まれる場合は大/小文字を区別する
set wrapscan "検索時に最後まで行ったら最初に戻る
set incsearch "インクリメンタルサーチを行う
nmap <Esc><Esc> :nohlsearch<CR><Esc> "ESCキー2回でハイライトを消す
