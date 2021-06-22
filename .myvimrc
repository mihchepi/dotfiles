set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""

"My plugins 
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'powerman/vim-plugin-ruscmd'

set guifont=Monaco:h18
colorscheme OceanicNext


""" Просмотр документации help/man/perldoc/etc.:                <F1>, K, q 
" Plugin: viewdoc
let g:viewdoc_man_cmd = 'LANG=en_US.UTF-8 /usr/bin/man'
let g:ViewDoc_css = 'ViewDoc_help_custom'
let g:viewdoc_copy_to_search_reg = 1
let g:viewdoc_perldoc_format = 'ansi'

" Настройки табов для Python, согласно рекоммендациям
"set tabstop=4
"set shiftwidth=4
"set smarttab
"set expandtab "Ставим табы пробелами
"set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Включить подсветку синтаксиса

" set nu "Включаем нумерацию строк
set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=a "Включить поддержку мыши
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
"set nobackup
"set noswapfile

set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set number
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Выключаем звук в Vim
set visualbell t_vb=


"""""""""""""""" -POWERMAN


function! s:Mkdir(dir)
    if !isdirectory(expand(a:dir))
        call mkdir(expand(a:dir), 'p', 0700)
    endif
endfunction
" - система
if &term ==# 'xterm'
    set term=xterm-256color
endif
if &term ==# 'screen'
    set term=screen-256color
    map  [1;5A <C-Up>
    map! [1;5A <C-Up>
    map  [1;5B <C-Down>
    map! [1;5B <C-Down>
    map  [1;5C <C-Right>
    map! [1;5C <C-Right>
    map  [1;5D <C-Left>
    map! [1;5D <C-Left>
    map  [2;5~ <C-Insert>
    map! [2;5~ <C-Insert>
    map  [3^   <C-Delete>
    map! [3^   <C-Delete>
    map  [1;5H <C-Home>
    map! [1;5H <C-Home>
    map  [1;5F <C-End>
    map! [1;5F <C-End>
    map  [5;5~ <C-PageUp>
    map! [5;5~ <C-PageUp>
    map  [6;5~ <C-PageDown>
    map! [6;5~ <C-PageDown>
    map  [1;3A <A-Up>
    map! [1;3A <A-Up>
    map  [1;3B <A-Down>
    map! [1;3B <A-Down>
    map  [1;3C <A-Right>
    map! [1;3C <A-Right>
    map  [1;3D <A-Left>
    map! [1;3D <A-Left>
    map  [1;3H <A-Home>
    map! [1;3H <A-Home>
    map  [1;3F <A-End>
    map! [1;3F <A-End>
    map  [5;3~ <A-PageUp>
    map! [5;3~ <A-PageUp>
    map  [6;3~ <A-PageDown>
    map! [6;3~ <A-PageDown>
    map  [1;2A <S-Up>
    map! [1;2A <S-Up>
    map  [1;2B <S-Down>
    map! [1;2B <S-Down>
    map  [1;2C <S-Right>
    map! [1;2C <S-Right>
    map  [1;2D <S-Left>
    map! [1;2D <S-Left>
    map  [3;2~ <S-Delete>
    map! [3;2~ <S-Delete>
    map  [1;2H <S-Home>
    map! [1;2H <S-Home>
    map  [1;2F <S-End>
    map! [1;2F <S-End>
endif
set fileencodings=ucs-bom,utf-8,koi8-r,default
" - предыдущая версия/состояние текста
set viewdir=~/.cache/vim/view           " убираем все временные файлы из ~/.vim/
set undofile                            " использовать persistent undo
set undodir=~/.cache/vim/undo           "
set nobackup                            " зачем бэкап когда есть persistent undo!
call s:Mkdir(&viewdir)
call s:Mkdir(&undodir)
" - табы и отступы
"set tabstop=4                           " стандартный размер таба
"set shiftwidth=4                        " величина отступа (indent)
"set shiftround                          " выравнивать отступы по shiftwidth
"set softtabstop=4                       " сдвиг при нажатии таба (вставляет и табы и пробелы)
"set autoindent                          " сохранять текущий отступ для новых строк
"set smartindent                         " автоматическая коррекция отступа для блоков кода
"set copyindent                          " использовать те же символы для отступа при:
"set preserveindent                      "   1) autoindent; 2) изменении глубины отступа
"   ... коррекция smartindent: сохранять отступ для комментариев     
set formatoptions+=roj                  " продолжать комментарий на следующей строке
set formatoptions+=n                    " авто-перенос длинных строк внутри списков
"set nojoinspaces                        " не вставлять 2 пробела после . при слиянии строк по J
" - вывод текста
set textwidth=74                        " граница для переформатирования и авто-переноса
set formatoptions+=l                    " отключить авто-перенос строк которые УЖЕ длиннее textwidth
set nowrap                              " не выводить длинные строки на нескольких строках
set listchars=eol:¬,nbsp:•,tab:▸·       " при `set list` показывать eol, nbsp и tab
set listchars+=extends:→,precedes:←     " при `set nowrap` выводить индикатор длинных строк
set showbreak=↪                         " при `set wrap` выводить индикатор длинных строк
set sidescrolloff=1                     " коррекция из-за индикатора длинных строк
set sidescroll=1                        " плавный горизонтальный скроллинг
" - поиск
    set incsearch                           " искать по мере набора
"    set nohlsearch                          " не подсвечивать результаты поиска
"    set history=1000
" - сравнение
set diffopt+=vertical                   " по умолчанию открывать diff вертикально
set diffopt+=iwhite                     " по умолчанию игнорировать отличия в пробелах
" - общие фичи
set backspace=indent,eol,start          " разрешить <BS>-ом удалять всё что угодно
set ruler                               " всё время показывать позицию курсора внизу
set completeopt=                        " автодополнение в режиме вставки не выводит меню
set pumheight=5                         " высота меню автодополнения
set wildmenu                            " <Tab> в командной строке выводит меню
set wildcharm=<Tab>                     " вызов меню командной строки из скрипта
set wildignore=*.sw?,*.bak,*.orig       " не выводить эти файлы при автодополнении
set wildignore+=.hg,.git,.svn
set wildignore+=*.dis,*.sbl
set wildignore+=*.o,*.obj,*.manifest
set wildignore+=*.jpg,*.gif,*.png,*.jpeg,*.ico
set wildignore+=*.zwc
set wildignore+=*/patch/prev/*
set wildignore+=*/vendor/*
set wildignore+=_Inline
set wildignore+=_live
set wildignore+=node_modules,bower_components
set notimeout ttimeout ttimeoutlen=100  " таймаут для одиночных кнопок, но не комбинаций
set showcmd                             " показывать нажимаемые кнопки в командном режиме
set mouse=a                             " поддержка мыши во всех режимах
set nomodeline                          " эта фича - дыра в безопасности, отключаем
set shortmess+=I                        " не выводить заставку при старте vi
filetype plugin on                      " подгружать плагины для конкретных типов файлов
filetype indent off                     " отключить автоматическое переформатирование отступов
set spell spelllang=en               " включить проверку правописания
"set spell spelllang=en,ru               " включить проверку правописания
"   ... останавливаться только на некорректных словах, а не редких/etc.
nnoremap ]s     ]S
nnoremap [s     [S
" - copy&paste в стиле винды
set keymodel=startsel                   " Shift со стрелками начинает выделение текста
"   ... выделенный текст копируется автоматически
vnoremap <S-Delete>     <Delete>
"   ... выделенный текст копируется автоматически Ctrl+Insert просто снимает выделение
vnoremap <C-Insert>     <Esc>
" - подсветка синтаксиса
set synmaxcol=1000                      " не подсвечивать слишком длинные строчки


