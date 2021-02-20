"""""""""""""""normal""""""""""""""
set tabstop=4	"tab设置成4个空格）
set noexpandtab   "expandtab选项，用来控制是否将Tab转换为空格。但是这个选项并不会改变已经存在的文本，如果需要应用此设置将所有Tab转换为空格，需要执行以下命令 :retab!  or set expandtab %retab!
set softtabstop=4
set shiftwidth=4
set autoindent "新增加的行和前一行使用相同的缩进形式

set nu             
set ic
set hlsearch
set smarttab

set wildmenu "vim 自身命令行模式智能补全,打入命令时可以看到模糊匹配

"set fileencodings=utf-8,gb2312,gbk,gb18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set fileformats=unix
set nocompatible
set backspace=2
set belloff=all "所有事件下（包括错按esc，错按backspace）不发出声音

"""""""""""""""me""""""""""""""
set ignorecase "设置搜索时忽略大小写
set nowrapscan "设置搜索不回卷
set mouse=a "设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set clipboard=unnamed "设置vim中默认使用选择缓冲区寄存器 “*：gvim中可以复制到windows上, yum install xclip,不确定是不是装了这个起作用了

set nobackup "no backup
set nowritebackup
set noswapfile

"set foldmethod=indent
set foldcolumn=3

"au BufWinLeave * silent mkview
"au BufWinEnter * silent loadview

"""""""""""""""bianji""""""""""""""
"set iskeyword +=- "连字符链接的单词看成一个整体
set hidden "如果在 A 文件里进行了某些修改，然后切换到 B 文件，然后又切换回 A 文件，此时无法用"u"执行撤销！这是 Vim 的默认行为，不是本插件导致的。
"解决方法有两种，第一种是在vimrc 里面加入"set hidden"；第二种是设置成 persistent undo。 

"""""""""""""""display""""""""""""""
syntax enable
syntax on  
set cul
set cuc
set relativenumber "relative number
set showmatch "设置匹配模式当输入右括号时，会短暂回到匹配的左括号，如果没有就会发出错误的铃声

set autoindent "设置C/C++方式自动对齐
set cindent

if has('win32')
	au GUIEnter * simalt ~x
	else		
	au GUIEnter * call MaximizeWindow()
endif  
function! MaximizeWindow()
silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction 

"在标签页栏中去除当前所编辑文件的路径信息，只保留文件名
"function ShortTabLabel ()
	"let bufnrlist = tabpagebuflist (v:lnum)
	"let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
	"let filename = fnamemodify (label, ':t')
	"return filename
"endfunction
"set guitablabel=%{ShortTabLabel()}
"set nohlsearch "search without highlight
"highlight Normal guifg=#7777FF
"highlight Normal guibg=#CCCCFF guifg=black
"highlight CursorLine    guibg=#CCbcef
"highlight CursorColumn  guibg=#CCbceF

"""""""""""""""yinshe""""""""""""""
"insert operation
inoremap <M-1> <C-[>1gt "i+alt+num switch to tab num
inoremap <M-2> <C-[>2gt
inoremap <M-3> <C-[>3gt
inoremap <M-4> <C-[>4gt
inoremap <M-5> <C-[>5gt
inoremap <M-6> <C-[>6gt

inoremap <C-s> <C-[>a<C-p><C-n>
inoremap <Leader><leader> <C-[>:sp<CR>:YcmCompleter GoToImprecise<CR>:wincmd p<CR> "sp a windor to difinition under the curso :i,,

"normal
noremap <M-w> :wincmd p<CR><C-e>:wincmd p<CR> "alt+q:sp window scroll up a raw, alt+w: sp window scroll down a raw
noremap <M-q> :wincmd p<CR><C-y>:wincmd p<CR>
noremap cp <C-w>p:close<CR> 

noremap <C-w>o <ESC>

noremap <M-e> :w<CR>  :source ~/.vimrc<CR>:e!<CR>
noremap <C-q> <C-^>  "tab 切换
noremap <F12> :let @*=expand('%')<CR> "get name 把 @* 换成 @+ 就是剪贴板。
"noremap <F11> :execute "cd" expand("%:h") "pwd切换到当前编辑文件的目录

"tabe,qiehuan
auto tableave * let g:pre_tabpagenr=tabpagenr()
nnoremap <silent> \t :exe "tabn ".g:pre_tabpagenr<CR>

nmap J j
nmap K k

"tag
"set tags+=tags
noremap <F3> :tprevious<CR>
noremap <F4> :tnext<CR>
noremap <F5> :!cscope -Rbqk <CR><CR>:cs reset <CR><CR>
"noremap <F5> :!cscope -Rbqki file <CR><CR>:cs reset <CR><CR>
noremap <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
noremap <M+F6> :set tags=/home/xxx/

"fdm
noremap <F7> :mkview!  %.view<CR>
noremap <F8> :source %.view<CR>

"""""""""""""""vbundles""""""""""""""
if filereadable(expand("~/.vimrc.bundles")) 
source ~/.vimrc.bundles
endif
filetype plugin indent on 


"""""""""""""""plug""""""""""""""
"""indentLine
"let g:indentLine_char = '|'             "设置对齐线的字符
"let g:indentLine_first_char = ''              "设置对齐线的首字符
"let g:indentLine_showFirstIndentLevel = 1   "显示对齐线首字符
"let g:indentLine_color_term = 255               "设置对齐线颜色

"""vim-indent-gudes
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
  
"""marks browser
"noremap <C-M> :MarksBrowser<CR>

"""nerdtree
noremap <F2> :NERDTreeFind<CR>:wincmd p<CR>
noremap <M-F3> :NERDTreeToggle<CR>

autocmd VimEnter * NERDTreeFind | autocmd VimEnter wincmd p  "进入vim时打开 NERDTreeFind窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "close if the last window

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
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
let NERDTreeWinSize=30
"let NERDTreeQuitOnOpen = 1 "close nerdtree when open a file

"""nerdtree-git-plugin
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

"""nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1

"""winmanager
""设置界面分割
" let g:winManagerWindowLayout = "TagList|FileExplorer"
" let g:winManagerWindowLayout = "FileExplorer"
" "设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
" "定义打开关闭winmanager快捷键为F8
" nmap <silent> <F4> :WMToggle<cr>
" "在进入vim时自动打开winmanager
" let g:AutoOpenWinManager = 1
"set autochdir

"""taglist
noremap <M-u> :TlistUpdate<CR>
noremap <silent> <F9> <ESC>:Tlist<RETURN>
"let Tlist_Ctags_Cmd='ctags' "taglist "默认使用exuberant-ctags.如果没有安装可以指定GNU ctags
let Tlist_Ctags_Cmd='arduino-ctags'
"let Tlist_WinWidt =28                  "设置taglist的宽度
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"set updatetime=1000
"let Tlist_Use_Left_Windo =1                "在左侧窗口中显示taglist窗口

"TagmaBufMgr
let g:TagmaBufMgrPrefix = '<Leader>t'
let g:TagmaBufMgrCloseSelect = 1"close when open a buffer
let g:TagmaBufMgrAutoDisplay = 0 "0:not display

"""MiniBufferExplorer
"let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
"let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
"let g:miniBufExplModSelTarget = 1    " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
"解决FileExplorer窗口变小问题  
"let g:miniBufExplForceSyntaxEnable = 1  
"let g:miniBufExplorerMoreThanOne=2  

"""quick switch buffer
"nnoremap za :call SBQ_PushBuffer()<cr>                     # add current buffer to buffer list
"nnoremap zd :call SBQ_PopBuffer()<cr>                      # delete current buffer from buffer list
"nnoremap zs :call SBQ_ShowBufferList()<cr>                 # show the list of buffer list
"nnoremap <c-j> :call SBQ_SelectBuffer(1)<cr>               # switch buffer
"nnoremap <c-k> :call SBQ_SelectBuffer(2)<cr>               # switch buffer

"""easymotion
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map f <Plug>(easymotion-f)
map w <Plug>(easymotion-w)
map b <Plug>(easymotion-b)
map <Leader><leader>. <Plug>(easymotion-repeat)" 重复上一次操作, 类似repeat插件, 很强大

"""a.vim
"nnoremap <silent> <F12> :A<CR>  
nnoremap <M-c> :A<CR>  
"""a.vim
":A 头文件／源文件切换
":AS 分割窗后并切换头/源文件(切割为上下两个窗口)
":AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
":AT 新建Vim标签式窗口后切换
":AN 在多个匹配文件间循环切换
"将光标所在处单词作为文件名打开
":IH 切换至光标所在文件
":IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
":IHV 垂直分割窗口后切换
":IHT 新建标签式窗口后切换
":IHN 在多个匹配文件间循环切换
"快捷键操作
"<Leader>ih 切换至光标所在文件*
"<Leader>is 切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
"<Leader>ihn 在多个匹配文件间循环切换

"""tagbar
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
noremap <F10> :Tagbar<CR>
noremap <C-g> :TagbarOpen fj<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()     "如果是c语言的程序的话，tagbar自动开启
"let g:tagbar_autopreview = 1	"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_ctags_bin='arduino-ctags'	"ctags程序的路径
"let g:tagbar_ctags_bin='G:/vim/vimfiles/bundle/ctags.vim/plugin'	"ctags程序的路径
"let g:tagbar_ctags_bin='/home/jinmin/gongju/universal-ctags/bin/ctags'	"ctags程序的路径
let g:tagbar_compact=1	"tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_width=35	"窗口宽度的设置
let g:tagbar_sort=0

"设置 tagbar 对哪些代码元素生成标签
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
noremap <M-z> :,c <space><>

"""syntastic
"let g:syntastic_error_symbol='>>'
"let g:syntastic_warning_symbol='>'
"let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0
"let g:syntastic_enable_highlighting=1
"let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
"let g:syntastic_javascript_checkers = ['jsl', 'jshint']
"let g:syntastic_html_checkers=['tidy', 'jshint']
""highlight SyntasticErrorSign guifg=white guibg=black " 修改高亮的背景色,适应主题

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_loc_list_height = 5
"function! ToggleErrors()
	"let old_last_winnr = winnr('$')
	"lclose
	"if old_last_winnr == winnr('$')
		"" Nothing was closed, open syntastic error location panel
		"Errors
	"endif
"endfunction
"nnoremap <Leader>s :call ToggleErrors()<cr>

"""omnicppcomplete setting --  
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>
" 按下F3自动补全代码，注意该映射语句后不能有其他字符，包括tab；否则按下F3会自动补全一些乱码  
"imap <F3> <C-X><C-O>  
" 按下F2根据头文件内关键字补全  
"imap <F2> <C-X><C-I>  
"set completeopt=menu,menuone " 关掉智能补全时的预览窗口  
"let OmniCpp_MayCompleteDot = 1 " autocomplete with .  
"let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->  
"let OmniCpp_MayCompleteScope = 1 " autocomplete with ::  
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)  
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files  
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window  
"let OmniCpp_GlobalScopeSearch=1 " enable the global scope search  
"let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members  
""let OmniCpp_DefaultNamespaces=["std"]  
"let OmniCpp_ShowScopeInAbbr=1 " show scope in abbreviation and remove the last column  
"let OmniCpp_ShowAccess=1   

"""terryma/vim-expand-region 
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"""tpope/vim-surround
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

"""gundo
"nnoremap <leader>h :GundoToggle<CR>

"""cscope
noremap <F11> :set cscopequickfix=s-,c-,d-,i-,t-,e- <CR>
noremap <M-F11> :set cscopequickfix=s-,c-,d-,i-,t-,e-,g- <CR>
"noremap <F11> :set cscopequickfix=s+,c+,d+,i+,t+,e+,g+ <CR>
noremap <C-w>\ :tab sp<CR>
"noremap <C-t> :colder<CR>:cc<CR> "当使用quickfix窗口后，原先的tagstack和Ctrl-t键会失效。为弥补这不足，可以将Ctrl-t重新地定义
"noremap T :wincmd T <CR> :NERDTreeFind<CR>:wincmd p<CR> :Tagbar<CR>
noremap <M-f> :tab botright cw<CR>
noremap <M-d> :botright cw<CR> "list
noremap <M-d><M-d> :ccl<CR>

if has("cscope")
	set csto=0 "决定了|:cstag|执行查找的顺序。假如’csto’被设置为0，那么cscope数据将会被优先查找
	set cst	   "cscopetag’被设置，然后诸如”:tag”和ctrl+]和”vim -t”等命令会始终使用|:cstag|而不是默认的:tag行为。通过设置’cst’，你将始终同时查找cscope数据库和tags文件。默认情况是关闭的
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out . -C
		" else add database pointed to by environment
	endif
	set csverb
endif

set cscopequickfix=s-,c-,d-,i-,t-,e- "cl cn cp

"jump
noremap <M-k> :col<CR>
noremap <M-j> :cnew<CR>
noremap <C-j> :cnext<CR>
noremap <C-k> :cprev<CR>
noremap <M-4> :cnext<CR>
noremap <M-3> :cprev<CR>

noremap <M-1> <C-o>
noremap <M-2> <C-i>

"search
noremap <M-g> :tab sp<CR>:Tagbar<CR>:cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <M-c> :tab sp<CR>:Tagbar<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <M-s> :tab sp<CR>:Tagbar<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>

noremap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR>
noremap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <C-c>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
noremap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR>

noremap <C-s>s :scs find s <C-R>=expand("<cword>")<CR><CR>
noremap <C-s>g :scs find g <C-R>=expand("<cword>")<CR><CR>
noremap <C-s>c :scs find c <C-R>=expand("<cword>")<CR><CR>
noremap <C-s>t :scs find t <C-R>=expand("<cword>")<CR><CR>
noremap <C-s>e :scs find e <C-R>=expand("<cword>")<CR><CR>
noremap <C-s>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <C-s>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
noremap <C-s>d :scs find d <C-R>=expand("<cword>")<CR><CR>

noremap <C-h>s :vsp<CR>:cs find s <C-R>=expand("<cword>")<CR><CR>
noremap <C-h>g :vsp<CR>:cs find g <C-R>=expand("<cword>")<CR><CR>
noremap <C-h>c :vsp<CR>:cs find c <C-R>=expand("<cword>")<CR><CR>
noremap <C-h>t :vsp<CR>:cs find t <C-R>=expand("<cword>")<CR><CR>
noremap <C-h>e :vsp<CR>:cs find e <C-R>=expand("<cword>")<CR><CR>
noremap <C-h>f :vsp<CR>:cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap <C-h>i :vsp<CR>:cs find i <C-R>=expand("<cfile>")<CR><CR>
noremap <C-h>d :vsp<CR>:cs find d <C-R>=expand("<cword>")<CR><CR>

"""ycm
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>                " turn off YCM
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>                "turn on YCM

"let g:ycm_error_symbol='>>' "设置error和warning的提示符，如果没有设置，ycm会以syntastic的g:syntastic_warning_symbol 和 g:syntastic_error_symbol 这两个为准
"let g:ycm_warning_symbol='>*'

nnoremap <leader>gs :YcmCompleter GoToDeclaration<CR> "设置跳转的快捷键，可以跳转到definition和declaration
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gh :YcmCompleter GoToInclude<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <F4> :YcmDiags<CR>

let g:ycm_confirm_extra_conf=1 "开启vim时检查ycm_extra_conf文件的信息显示, 1:on ,2:off
let g:ycm_path_to_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py' "设置全局配置文件的路径
"let g:ycm_use_clangd = 0 "clangd will be preferred unless set it 0
let g:ycm_max_diagnostics_to_display = 0 " controls the maximum number of diagnostics shown to the user when errors or warnings are detected in the file. A special value of 0 means there is no limit
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1 "开启基于tag的补全，可以在这之后添加需要的标签路径 在vim中使用 :echo tagfiles()可以查看当前使用的tags文件
let g:ycm_seed_identifiers_with_syntax = 1 "开启语义补全
set completeopt-=preview "在接受补全后不分裂出一个窗口显示接受的项
"let g:ycm_cache_omnifunc=0 "每次重新生成匹配项，禁止缓存匹配项
let g:ycm_complete_in_comments=1 "在注释中也可以补全
let g:ycm_min_num_of_chars_for_completion=1 "输入第一个字符就开始补全
let g:ycm_use_ultisnips_completer=0 "不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_auto_hover = ''
nmap <leader>d <plug>(YCMHover)

"""rainbow
let g:rainbow_active = 1 "showing diff level of parentheses in diff color

"""UltiSnips
"UltiSnips
""插入模式下直接通过<C-z>键来触发UltiSnips的代码块补全
let g:UltiSnipsExpandTrigger="<C-z>"
"弹出UltiSnips的可用列表,由于不常用, 所以这里设置成了特殊的<C-i>映射
let g:UltiSnipsListSnippets="<C-i>"
""<C-f>跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpForwardTrigger="<C-f>"
"<C-b>跳转到上一个代码块可编辑区
let g:UltiSnipsJumpBackwardTrigger="<C-b>"

"""gvim colorscheme
"set background=light
if has("gui_running")
colorscheme solarized
"set guifont=Monospace\ 13
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set winaltkeys=no "no used alt for menu,only use by mouse
else
colorscheme badwolf
endif
