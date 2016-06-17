""""""""""" normal"""""""""""""

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set nu             
set autoindent        
set ic
set hlsearch

set smarttab

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set nocompatible
set backspace=2
"设置搜索时忽略大小写
set ignorecase
"设置搜索不回卷
set nowrapscan

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a
"设置vim中默认使用选择缓冲区寄存器 “*：gvim中可以复制到windows上
"yum install xclip,不确定是不是装了这个起作用了
set clipboard=unnamed

"no backup
set nobackup
set nowritebackup
set noswapfile



"""""""""""" display"""""""""""""
set cul
set cuc
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"设置C/C++方式自动对齐
set autoindent
set cindent

syntax enable
syntax on  
set colorscheme badwolf


"gvim
set guifont=Monospace\ 14
set guioptions-=T


"imap <M-(> ()<ESC>i 
"imap <M-[> []<ESC>i
"imap <M-{> {}<ESC>i



  
"""""""""""""" yinshe """""""""""""""
nmap <silent> <F1> <ESC>:e ++ff=dos<RETURN>
imap <C-n> <Esc> 
imap <C-a> <Esc>^
imap <C-e> <Esc>$




""""""""""""""vbundles"""""""""""""

if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
filetype plugin indent on 



""""""""""""""plug"""""""""""""""""
"tlist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
set tags=tags
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <silent> <F9> <ESC>:Tlist<RETURN>

nmap <F2> :tprevious<CR><CR>
nmap <F3> :tnext<CR><CR>


"nerdtree
map <F4> :NERDTreeToggle<CR>
let NERDTreeDirArrows=1 "目录箭头 : 1 显示箭头  0传统+-|号 

" 设置winmanager
" " 设置界面分割
" let g:winManagerWindowLayout = "TagList|FileExplorer"
" let g:winManagerWindowLayout = "FileExplorer"
" "设置winmanager的宽度，默认为25
 let g:winManagerWidth = 30
" "定义打开关闭winmanager快捷键为F8
" nmap <silent> <F4> :WMToggle<cr>
" "在进入vim时自动打开winmanager
" let g:AutoOpenWinManager = 1


"ctags
"let Tlist_Ctags_Cmd='ctags'
"let Tlist_Ctags_Cmd = 'G:/vim/vimfiles/bundle/ctags.vim/plugin'

"taglist
"let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_WinWidt =28                    "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1            "在右侧窗口中显示taglist窗口
"let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口

"tagbar
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
"let g:tagbar_ctags_bin='G:/vim/vimfiles/bundle/ctags.vim/plugin'            "ctags程序的路径
let g:tagbar_width=30                    "窗口宽度的设置
map <F10> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()     "如果是c语言的程序的话，tagbar自动开启

"Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set t_Co=256


"gundo
nnoremap <leader>h :GundoToggle<CR>

"
if has("cscope")
	set csto=1
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
		" else add database pointed to by environment
	endif
	set csverb
endif

"cl cn cp
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

nmap <C-j> :cnext<CR>
nmap <C-k> :cprev<CR>

nmap <C-c>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>d :scs find d <C-R>=expand("<cword>")<CR><CR>



nmap <C-h>s :vsp<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>g :vsp<CR>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>c :vsp<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>t :vsp<CR>:cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>e :vsp<CR>:cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>f :vsp<CR>:cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-h>i :vsp<CR>:cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-h>d :vsp<CR>:cs find d <C-R>=expand("<cword>")<CR><CR>



nmap <C-1>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-1>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-1>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-2>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-2>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-2>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-2>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-2>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-2>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-2>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-2>d :scs find d <C-R>=expand("<cword>")<CR><CR>
