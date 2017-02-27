""""""""""" normal """""""""""""
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
set belloff=all " 所有事件下（包括错按esc，错按backspace）不发出声音

"""""""""""" me """"""""""""""""""
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

set wildmenu " vim 自身命令行模式智能补全

"fold
"set foldmethod=syntax
"set foldmethod=manual
"au BufWinLeave * silent mkview
"au BufWinEnter * silent loadview
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
"winpos 0 22
set relativenumber "relative number


"set nohlsearch "search without highlight
"colorscheme badwolf
"highlight Normal guibg=#CCCCFF guifg=black
"highlight CursorLine    guibg=#CCbcef
"highlight CursorColumn  guibg=#CCbceF
colorscheme solarized
"highlight Normal guifg=#7777FF

"gvim
"set guifont=Monospace\ 13
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏

"imap <M-(> ()<ESC>i 
"imap <M-[> []<ESC>i
"imap <M-{> {}<ESC>i
  
"""""""""""""" yinshe """""""""""""""
set winaltkeys=no "no used alt for menu,only use by mouse
"nmap <silent> <F1> <ESC>:e ++ff=dos<RETURN>

imap <C-a> <Esc>^
imap <C-e> <Esc>$

" vim 自身命令行模式智能补全
set wildmenu

nmap <M-e> :w<CR>  :source ~/.vimrc<CR>:e!<CR>

imap <M-K> <ESC> 
nmap <C-q> <C-^> 
"nmap <M-w> :wincmd p<CR>
"nmap <C-1> :source ~/.vim

""""""""""""""vbundles"""""""""""""
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif
filetype plugin indent on 

""""""""""""""plug"""""""""""""""""
"""""""nerdtree
map <F2> :NERDTreeFind<CR>:wincmd p<CR>
nnoremap <M-F2> <ESC>
nnoremap <M-F3> :NERDTreeToggle<CR>
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeFind | wincmd p | endif

"autocmd bufenter * if (winnr("$") == 1 ) | q | endif
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"map <F4> :NERDTree<CR>

autocmd VimEnter * NERDTreeFind | autocmd VimEnter wincmd p  "进入vim时打开 NERDTreeFind窗口                                                                 
"autocmd TabEnter * NERDTreeFind "| wincmd p  "打开tab页时打开 NERDTreeFind窗口
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "close if the last window
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

"let g:NERDTreeDirArrowExpandable = ' '
"let g:NERDTreeDirArrowCollapsible = ' '

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

"""""""nerdtree-git-plugin
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

""""""" 设置winmanager
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

"""""""ctags
"let Tlist_Ctags_Cmd='ctags'
"let Tlist_Ctags_Cmd = 'G:/vim/vimfiles/bundle/ctags.vim/plugin'

"""MiniBufferExplorer
    "let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
    "let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
	"let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
    ""let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
    "let g:miniBufExplModSelTarget = 1    " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
""解决FileExplorer窗口变小问题  
"let g:miniBufExplForceSyntaxEnable = 1  
"let g:miniBufExplorerMoreThanOne=2  

"""quick switch buffer
"nnoremap za :call SBQ_PushBuffer()<cr>                     # add current buffer to buffer list
"nnoremap zd :call SBQ_PopBuffer()<cr>                      # delete current buffer from buffer list
"nnoremap zs :call SBQ_ShowBufferList()<cr>                 # show the list of buffer list
"nnoremap <c-j> :call SBQ_SelectBuffer(1)<cr>               # switch buffer
"nnoremap <c-k> :call SBQ_SelectBuffer(2)<cr>               # switch buffer

"TagmaBufMgr
let g:TagmaBufMgrPrefix = '<Leader>t'
let g:TagmaBufMgrCloseSelect = 1"close when open a buffer
let g:TagmaBufMgrAutoDisplay = 0 "0:not display


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
set updatetime=1000
"let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口
"map <F5> :!cscope -Rbqki file <CR><CR>:cs reset <CR><CR>
nmap <F5> :!cscope -Rbqk <CR><CR>:cs reset <CR><CR>
map <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set tags+=tags
nmap <F7> :set tags=/home/tdk/work/guoke/GK710X_LinuxSDK_v1.1.2/linux/kernel/3.4.43/tags<CR>

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

"SUPERtabber
imap ll <C-n><C-p>

"Powerline
let g:Powerline_symbols = 'unicode'
"let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'relative' "filename
let g:Powerline_mode_n = 'N'
set laststatus=2
set t_Co=256
call Pl#Theme#RemoveSegment('fileformat')
call Pl#Theme#RemoveSegment('filetype')
call Pl#Theme#RemoveSegment('fileencoding')
call Pl#Theme#RemoveSegment('lineinfo')
"call Pl#Theme#RemoveSegment('scrollpercent')
"Note: Remember to clear your cache with |:PowerlineClearCache| after changing your statusline!

"nerdcommen
let mapleader = ","
map <M-z> :,c <space><>

"gundo
nnoremap <leader>h :GundoToggle<CR>

"cscope
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
noremap <F11> :set cscopequickfix=s+,c+,d+,i+,t+,e+,g+ <CR>
noremap <M-F11> :set cscopequickfix=s-,c-,d-,i-,t-,e-,g- <CR>
"nmap <C-q> :vsplit<CR><C-]><CR>
"nmap <M-v> :vsplit<CR>
nmap <C-w>\ :tab sp<CR>

"jump
nmap <M-k> :col<CR>
nmap <M-j> :cnew<CR>
nmap <C-j> :cnext<CR>
nmap <C-k> :cprev<CR>
nmap <M-4> :cnext<CR>
nmap <M-3> :cprev<CR>
nmap T :wincmd T <CR> :NERDTreeFind<CR>:wincmd p<CR> :Tagbar<CR>
nmap <M-f> :tab botright cw<CR>

noremap <M-1> <C-o>
noremap <M-2> <C-i>

"list
nmap <C-w>o <ESC>
nmap <M-d> :botright cw<CR>
nmap <M-d><M-d> :ccl<CR>

"search
"nmap <M-g> :tab sp<CR>:Tagbar<CR><F2>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <M-g> :tab sp<CR>:Tagbar<CR>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <M-c> :tab sp<CR>:Tagbar<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <M-s> :tab sp<CR>:Tagbar<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>

nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap <C-s>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>d :scs find d <C-R>=expand("<cword>")<CR><CR>

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

"syntastic
nmap J j
nmap K k
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
"highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5
function! ToggleErrors()
	let old_last_winnr = winnr('$')
	lclose
	if old_last_winnr == winnr('$')
		" Nothing was closed, open syntastic error location panel
		Errors
	endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>

"terryma/vim-expand-region 
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"tpope/vim-surround
"ds  - delete a surrounding
"cs  - change a surrounding
"ys  - add a surrounding
"yS  - add a surrounding and place the surrounded text on a new line + indent it
"yss - add a surrounding to the whole line
"ySs - add a surrounding to the whole line, place it on a new line + indent it
"ySS - same as ySs

"Hello w|orld!     ysiw)        Hello (world)!
"Hello w|orld!     csw)         Hello (world)!
"fo|o              ysiwt<html>  <html>foo</html>
"foo quu|x baz     yss"         "foo quux baz"
"foo quu|x baz     ySS"         "

"for more line {}, (shift)v->chose,(shift)s+{}


"tabe,qiehuan
auto tableave * let g:pre_tabpagenr=tabpagenr()
nnoremap <silent> \t :exe "tabn ".g:pre_tabpagenr<CR>

"""""""""ycm""""""""
"设置error和warning的提示符，如果没有设置，ycm会以syntastic的
" g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准
"let g:ycm_error_symbol='>>'
"let g:ycm_warning_symbol='>*'

"设置跳转的快捷键，可以跳转到definition和declaration
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <F4> :YcmDiags<CR>

let g:ycm_path_to_python_interpreter='/usr/bin/python3'
"设置全局配置文件的路径
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '/sdb/tdk/linux-3.18.y/.ycm_extra_conf.py'
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files = 1
"开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"在接受补全后不分裂出一个窗口显示接受的项
"set completeopt-=preview
"不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
"每次重新生成匹配项，禁止缓存匹配项
"let g:ycm_cache_omnifunc=0
"在注释中也可以补全
"let g:ycm_complete_in_comments=1
"输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer=0

nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM
