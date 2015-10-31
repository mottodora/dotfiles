" vi 互換ではなくVim のデフォルト設定にする
set nocompatible
" 一旦ファイルタイプ関連を無効化
filetype off

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
" Shougo氏
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/vimproc'

" カラースキーム
NeoBundle 'tomasr/molokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'zenorocha/dracula-theme', {'rtp' : 'vim'}
" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'

" インデント
"NeoBundle 'hynek/vim-python-pep8-indent'
"

" Markdown preview
"NeoBundle 'plasticboy/vim-markdown'
"NeoBundle 'kannokanno/previm'
"NeoBundle 'tyru/open-browser.vim'

call neobundle#end()
" NeoBundleCheck を走らせ起動時に未インストールプラグインをインストールする
NeoBundleCheck

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on



" 環境設定系
" シンタックスハイライト
"let g:hybrid_use_iTerm_colors = 1
syntax on
colorscheme dracula
"let g:solarized_termtrans = 0
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" スクロールする時に下が見えるようにする
set scrolloff=5
" .swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" バックスペースで各種消せるようにする
set backspace=indent,eol,start

" OSのクリップボードを使う
set clipboard+=unnamed
set clipboard=unnamed
" 不可視文字を表示
set list
" 行番号を表示
set number
" 右下に表示される行・列の番号を表示する
set ruler
" compatibleオプションをオフにする
set nocompatible
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline
" 対応括弧に<と>のペアを追加
set matchpairs& matchpairs+=<:>
" 対応括弧をハイライト表示する
set showmatch
" 対応括弧の表示秒数を3秒にする
set matchtime=3
" ウィンドウの幅より長い行は折り返され、次の行に続けて表示される
set wrap
" 入力されているテキストの最大幅を無効にする
set textwidth=0
" 不可視文字を表示
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
" インデントをshiftwidthの倍数に丸める
set shiftround

" 補完の際の大文字小文字の区別しない
set infercase
" 文字がない場所にもカーソルを移動できるようにする
set virtualedit=all
" 変更中のファイルでも、保存しないで他のファイルを表示
set hidden
" 新しく開く代わりにすでに開いてあるバッファを開く
set switchbuf=useopen
" 小文字の検索でも大文字も見つかるようにする
set ignorecase
" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase
" インクリメンタルサーチを行う
set incsearch
" 検索結果をハイライト表示
:set hlsearch
" コマンド、検索パターンを10000個まで履歴に残す
set history=10000
" マウスモード有効
set mouse=a
" xtermとscreen対応
set ttymouse=xterm2
" コマンドを画面最下部に表示する
set showcmd

" インデント周り
"" タブ入力を複数の空白入力に置き換える
set expandtab
"" 画面上でタブ文字が占める幅
set tabstop=4
"" 自動インデントでずれる幅
set shiftwidth=4
"" 連続した空白に対してタブキーやバックスペースキーでカーソル
set softtabstop=2
"" 改行時に前の行のインデントを継続する
set autoindent
"" 改行時に入力された行の末尾に合わせて次の行のインデントを増減
set smartindent



" 入力モード中に素早くJJと入力した場合はESCとみなす
inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" vを二回で行末まで選択
vnoremap v $h

" makrdown highlight
"au BufRead,BufNewFile *.md set filetype=markdown
