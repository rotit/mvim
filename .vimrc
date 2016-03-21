" normal

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
set nobackup


syntax enable
syntax on  

" display
set cul
set cuc

nmap <C-1>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-1>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-1>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-1>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-c>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nmap <F2> :tprevious<CR><CR>
nmap <F3> :tnext<CR><CR>


"imap <M-(> ()<ESC>i 
"imap <M-[> []<ESC>i
"imap <M-{> {}<ESC>i  
"yinshe
nmap <silent> <F9> <ESC>:Tlist<RETURN>
nmap <silent> <F1> <ESC>:e ++ff=dos<RETURN>
imap <C-j> <Esc> 
imap <C-a> <Esc>^
imap <C-e> <Esc>$



if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
filetype plugin indent on 




"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
set tags=tags
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" 设置winmanager
" " 设置界面分割
" let g:winManagerWindowLayout = "TagList|FileExplorer"
 let g:winManagerWindowLayout = "FileExplorer"
" "设置winmanager的宽度，默认为25
 let g:winManagerWidth = 30
" "定义打开关闭winmanager快捷键为F8
 nmap <silent> <F4> :WMToggle<cr>
" "在进入vim时自动打开winmanager
" let g:AutoOpenWinManager = 1





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
