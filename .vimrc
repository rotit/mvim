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

"set fileencodings=utf-8,gb2312,gbk,gb18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
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
winpos 0 22

"set nohlsearch "search without highlight
"colorscheme badwolf
highlight Normal guibg=#CCCCFF guifg=black
highlight CursorLine    guibg=#CCbcef
highlight CursorColumn  guibg=#CCbceF
colorscheme solarized
highlight Normal guifg=#7777FF

"gvim
set guifont=Monospace\ 14
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏

"imap <M-(> ()<ESC>i 
"imap <M-[> []<ESC>i
"imap <M-{> {}<ESC>i



  
"""""""""""""" yinshe """""""""""""""
set winaltkeys=no
nmap <silent> <F1> <ESC>:e ++ff=dos<RETURN>

imap <C-a> <Esc>^
imap <C-e> <Esc>$

" vim 自身命令行模式智能补全
set wildmenu

nmap <M-e> :w<CR>  :source ~/.vimrc<CR>:e!<CR>
"nmap <C-1> :source ~/.vim


nmap <M-K> <ESC> 
nmap <C-tab> <C-^> 
nmap <M-w> :wincmd p<CR>
""""""""""""""vbundles"""""""""""""

if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
filetype plugin indent on 



""""""""""""""plug"""""""""""""""""

"nerdtree
map <F2> :NERDTreeFind<CR>:wincmd p<CR>
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeFind | wincmd p | endif
"map <F4> :NERDTree<CR>

autocmd VimEnter * NERDTreeFind | autocmd VimEnter wincmd p  "进入vim时打开 NERDTreeFind窗口                                                                 
"autocmd TabEnter * NERDTreeFind "| wincmd p  "打开tab页时打开 NERDTreeFind窗口
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


let NERDTreeDirArrows=0 "目录箭头 : 1 显示箭头  0传统+-|号 
let NERDTreeIgnore = ['.*\.o$','.*\.ko$','.*\.gz$']  "忽略后缀为.o，.ko，.gz的文件。
let NERDChristmasTree=1 "
let NERDTreeAutoCenter=1 "控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
"let NERDTreeBookmarksFile=$USR.'/Data/NerdBookmarks.txt'
let NERDTreeShowBookmarks=1
"let NERDTreeShowFiles=1  ""是否默认显示文件
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=0
let NERDTreeHighlightCursorline=1 
"let NERDTreeWinPos='left'
let NERDTreeWinSize=40
"let NERDTreeQuitOnOpen = 1 "close nerdtree when open a file

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
\ "Modified"  : "✹",
\ "Staged"    : "✚",
\ "Untracked" : "✭",
\ "Renamed"   : "➜",
\ "Unmerged"  : "",
\ "Deleted"   : "✖",
\ "Dirty"     : "✗",
\ "Clean"     : "✔︎",
\ "Unknown"   : "?"
\ }
" 设置winmanager
" " 设置界面分割
" let g:winManagerWindowLayout = "TagList|FileExplorer"
" let g:winManagerWindowLayout = "FileExplorer"
" "设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
" "定义打开关闭winmanager快捷键为F8
" nmap <silent> <F4> :WMToggle<cr>
" "在进入vim时自动打开winmanager
" let g:AutoOpenWinManager = 1

"set autochdir

"ctags
"let Tlist_Ctags_Cmd='ctags'
"let Tlist_Ctags_Cmd = 'G:/vim/vimfiles/bundle/ctags.vim/plugin'


"MiniBufferExplorer
    "let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
    "let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
	"let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
    ""let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
    "let g:miniBufExplModSelTarget = 1    " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
""解决FileExplorer窗口变小问题  
"let g:miniBufExplForceSyntaxEnable = 1  
"let g:miniBufExplorerMoreThanOne=2  

"quick switch buffer
"nnoremap za :call SBQ_PushBuffer()<cr>                     # add current buffer to buffer list
"nnoremap zd :call SBQ_PopBuffer()<cr>                      # delete current buffer from buffer list
"nnoremap zs :call SBQ_ShowBufferList()<cr>                 # show the list of buffer list
"nnoremap <c-j> :call SBQ_SelectBuffer(1)<cr>               # switch buffer
"nnoremap <c-k> :call SBQ_SelectBuffer(2)<cr>               # switch buffer

"TagmaBufMgr
let g:TagmaBufMgrPrefix = '<Leader>t'
let g:TagmaBufMgrAutoDisplay = 0 "not display

"easymotion
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map f <Plug>(easymotion-f)
map w <Plug>(easymotion-w)
map b <Plug>(easymotion-b)

" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

"a.vim快捷键设置  
"nnoremap <silent> <F12> :A<CR>  
nnoremap <M-c> :A<CR>  


"taglist
"let Tlist_WinWidt =28                    "设置taglist的宽度
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
set updatetime=200
"let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口
set tags=tags
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nmap <silent> <F9> <ESC>:Tlist<RETURN>

nmap <F3> :tprevious<CR>
nmap <F4> :tnext<CR>
nmap <M-u> :TlistUpdate<CR>

"tagbar
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
map <F10> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()     "如果是c语言的程序的话，tagbar自动开启

let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_compact=1 " tagbar 子窗口中不显示冗余帮助信息 
"let g:tagbar_ctags_bin='G:/vim/vimfiles/bundle/ctags.vim/plugin'            "ctags程序的路径
let g:tagbar_width=35                    "窗口宽度的设置
let g:tagbar_sort=0

" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
  \ 'kinds' : [
    \ 'd:macros:1',
    \ 'g:enums',
    \ 't:typedefs:0:0',
    \ 'e:enumerators:0:0',
    \ 'n:namespaces',
    \ 'c:classes',
    \ 's:structs',
    \ 'u:unions',
    \ 'f:functions',
    \ 'm:members:0:0',
    \ 'v:global:0:0',
    \ 'x:external:0:0',
    \ 'l:local:0:0'
   \ ],
   \ 'sro'		: '::',
   \ 'kind2scope' : {
     \ 'g' : 'enum',
     \ 'n' : 'namespace',
     \ 'c' : 'class',
     \ 's' : 'struct',
     \ 'u' : 'union'
   \ },
   \ 'scope2kind' : {
     \ 'enum'	  : 'g',
     \ 'namespace' : 'n',
     \ 'class'	 : 'c',
     \ 'struct'	: 's',
     \ 'union'	 : 'u'
   \ }
\ }


"Powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'relative' "filename
let g:Powerline_mode_n = 'N'
set laststatus=2
set t_Co=256
"Note: Remember to clear your cache with |:PowerlineClearCache| after changing your statusline!


"nerdcommen
let mapleader = ","
map <M-z> :,c <space><>
"gundo
nnoremap <leader>h :GundoToggle<CR>

"
if has("cscope")
	set csto=1 "0 run cscope
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out . -C
		" else add database pointed to by environment
	endif
	set csverb
endif

"cl cn cp
set cscopequickfix=s-,c-,d-,i-,t-,e-,g-


nmap <C-q> :vsplit<CR><C-]><CR>
nmap <M-v> :vsplit<CR>
nmap <M-t> :tab sp<CR>:Tagbar<CR><F2>

"nmap <C-w>T <C-w>T <F2> <F10>
nmap T :wincmd T <CR> :NERDTreeFind<CR>:wincmd p<CR> :Tagbar<CR>

"nmap <S-j> :<M-t> "<C-w>]

nmap <M-j> :cnext<CR>
nmap <M-k> :cprev<CR>
nmap <M-3> :cprev<CR>
nmap <M-4> :cnext<CR>

nmap <M-i> <C-i><CR>
nmap <M-o> <C-o><CR>
nmap <M-1> <C-o><CR>
nmap <M-2> <C-i><CR>

nmap <M-,> :cw<CR>
nmap <M-.> :ccl<CR>
nmap <M-s> :botright cw<CR>
nmap <M-s><M-s> :ccl<CR>
nmap <C-w>o <ESC>

nmap <C-s>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>d :scs find d <C-R>=expand("<cword>")<CR><CR>


nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-h>s :vsp<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>g :vsp<CR>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>c :vsp<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>t :vsp<CR>:cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>e :vsp<CR>:cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-h>f :vsp<CR>:cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-h>i :vsp<CR>:cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-h>d :vsp<CR>:cs find d <C-R>=expand("<cword>")<CR><CR>


"-- omnicppcomplete setting --  
" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码  
"imap <F3> <C-X><C-O>  
" 按下F2根据头文件内关键字补全  
"imap <F2> <C-X><C-I>  
set completeopt=menu,menuone " 关掉智能补全时的预览窗口  
let OmniCpp_MayCompleteDot = 1 " autocomplete with .  
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->  
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::  
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)  
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files  
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window  
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search  
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members  
"let OmniCpp_DefaultNamespaces=["std"]  
let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column  
let OmniCpp_ShowAccess=1   


"""""""""""" bianji""""""""""""""
"连字符链接的单词看成一个整体
"set iskeyword +=-

"terryma/vim-expand-region 
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


winpos 0 22
highlight Normal guifg=#7777FF


