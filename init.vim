set nocompatible              " be iMproved, required
filetype off                  " required

" УСТАНАВЛИВАЕМ ПЛАГИНЫ

call plug#begin('~/.local/share/nvim/plugged')

" Файловое дерево
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Темы
Plug 'morhetz/gruvbox'
" Атводополненеие
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Переходы
Plug 'easymotion/vim-easymotion'
" Мультифайл
Plug 'ap/vim-buftabline'
" Коментирование
Plug 'tpope/vim-commentary' 
Plug 'suy/vim-context-commentstring'
" Save as root
Plug 'lambdalisue/suda.vim' 
" Vue
Plug 'posva/vim-vue'
" Golang
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


" ОФОРМЛЕНИЕ

"Включить подсветку синтаксиса
syntax on 

" Тема
colorscheme gruvbox 
" Цвет темы
set background=dark 
" Включаем 256 цветов в терминале
set t_Co=256 

"Включаем нумерацию строк
set nu 

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

"Не мигать 
set novisualbell 
" Не пищать
set t_vb= 

" Две строчки под системные сообщения
set cmdheight=2


" ОБЩИЕ

" Отключаем поддежку Ruby и Perl
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

"Спрятать курсор мыши когда набираем текст
set mousehide 
"Включить поддержку мыши
set mouse=a 

"Кодировка терминала
set termencoding=utf-8 
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile

" Кодировка файлов по умолчанию
set encoding=utf-8 
set fileencodings=utf8,cp1251

" Буффер обена
set clipboard=unnamedplus
set ruler

" Настройки табов для Python, согласно рекоммендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

" Автоотступ
set autoindent
set cindent

" Закрытие блоко по пробелам
set foldenable
set foldmethod=indent

" Обновления
set updatetime=300

" Буффер vim'а
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>

" Выравнивание
nmap <leader>gf migg=G'ik<CR>

" Вырубить подсветку поиска
nmap ,<Space> :noh<CR>

" Filetypes (иногда некоторые программы
" неявно меняют форматы для этих типов фалов) 
autocmd BufNewFile,BufRead *.html set filetype=html
autocmd BufNewFile,BufRead *.htmldjango set filetype=htmldjango

" КОНФИГИ ПЛАГИНОВ
source $HOME/.config/nvim/plugins/easymotion.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/vue.vim
