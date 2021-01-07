"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"不隐藏顶部标签栏"
set showtabline=2
"设置字体"
set guifont=Monaco:h13         
syntax on   "开启语法高亮"

" 配色方案
" colorscheme desert
" let g:solarized_termcolors=256  "solarized主题设置在终端下的设置"
" colorscheme solarized
colorscheme one
set background=dark
set termguicolors
" set t_Co=256
" colorscheme gruvbox
" colorscheme onehalfdark

set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1  "显示窗口tab和buffer
let g:airline#extensions#tabline#buffer_nr_show = 1 "显示buffer number"

" 打开彩虹括号
let g:rainbow_active = 1  

" set autoindent
set t_Co=256
set ts=4	"设置四个空格代表tab"
set expandtab     "允许扩展table, 配合这个才可以让四个空格代表tab"
set foldmethod=indent	"设置折叠方式:za"
set smartindent		"智能缩进"
set foldlevelstart=99	"设置默认不折叠"
set wrap	"设置不折行"
set fileformat=unix	"设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4    "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2		"设置backspace可以正常删除所有字母，否则只能删除新添加的字母"
set mouse=a     "启用鼠标"
set selection=exclusive 	"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位"
set selectmode=mouse,key 	"同上 "
set matchtime=1 	"设置匹配括号的时间"
set ignorecase      "忽略大小写"
set incsearch		"光标立刻跳转到搜索到的内容"
set hlsearch        "高亮搜索项"
" set whichwrap+=<,>,h,l "设置在头尾切换上下行"
set autoread 	"自动读取已经修改的内容"
set cursorline      "突出显示当前行"
set cursorcolumn        "突出显示当前列"
" set clipboard=unnamedplus "设置默认使用系统剪切板"
set listchars=tab:>-,trail:- "显示tab和空格"
let NERDTreeMapOpenInTab='<ENTER>'
let g:NERDTreeWinPos = "right"

" 设置leaderf
let g:Lf_ShowDevIcons = 0
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
noremap <C-L> :<C-U><C-R>=printf("Leaderf! rg --glob=!build64_release/* -ie %s", expand("<cword>"))<CR>
" 设置可以
noremap <C-P> :<C-U><C-R>=printf("Leaderf file --no-ignore")<CR><CR>
" 设置过滤dir和file
 let g:Lf_WildIgnore = { 
             \ 'dir': ['build64_release', 'BUILD'], 
             \ 'file': [] 
             \} 
" let g:Lf_RgConfig = [
"         \ "--glob=!build64_release/*, BUILD",
"     \ ]
"  
 " 设置x删除但不剪切 
nnoremap x "_x
map g[ :bn<cr>
map g] :bp<cr>
" nnoremap [[ :bp<CR>
" nnoremap ]] :bn<CR>

"  bundle设置
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/LeaderF'
Plugin 'luochen1990/rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'zxqfl/tabnine-vim'

" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required
" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
" h: vundle         - 获取帮助
" vundle的配置到此结束，下面是你自己的配置

" NERDTree 开关：F2
map <F2> :NERDTreeToggle<CR>

