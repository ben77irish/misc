execute pathogen#infect()
set expandtab
set number
set noswapfile
set tabstop=4
set shiftwidth=4
set incsearch
set ignorecase
set smartcase
set hlsearch
set wildmode=longest,list
set wildmenu
"Set the shell to source .bashrc from Vim
set shell=bash\ --login
"Set fzf plugin as default file search
set rtp+=~/.fzf

nmap \q :nohlsearch<CR>

"Map common fzf commands to keys
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>

"Use mouse if available
if has('mouse')
    set mouse=a
end
"Enabled Solarized colorscheme
if !exists("g:syntax_on")
    syntax enable
endif

if exists('$TMUX')
    set t_Co=256
    " use solarized 256 fallback
    let g:solarized_termcolors=256
else
    "Force vim to use 256 colors
    set t_Co=16
    " use solarized 256 fallback
    let g:solarized_termcolors=16
endif

set background=dark
colorscheme solarized

" contents of minimal .vimrc
filetype plugin indent on

"Automatically remove all whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Turn off linewise keys. Normally, the `j' and `k' keys move the cursor down one entire line. with
" line wrapping on, this can cause the cursor to actually skip a few lines on the screen because
" it's moving from line N to line N+1 in the file. I want this to act more visually -- I want `down'
" to mean the next line on the screen
nmap j gj
nmap k gk

"split command opens under current window
set splitbelow

"Sets vplit to add window to the right, not the left
set splitright

"fixes an issue where NERDTree doesn't show full directory structure
let g:NERDTreeDirArrows=0


