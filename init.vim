
" auto-install vim-plug
if empty(glob('/etc/xdg/nvim/autoload/plug.vim'))
	silent !curl -fLo /etc/xdg/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('/etc/xdg/nvim/autoload/plugged')
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'jiangmiao/auto-pairs'
Plug 'schickling/vim-bufonly'
Plug 'tpope/vim-commentary'
Plug 'wesQ3/vim-windowswap'
Plug 'lambdalisue/suda.vim'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'adelarsq/vim-matchit'
" Plug 'junegunn/gv.vim'
"Plug 'scrooloose/NERDTree'
"Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"Plug 'scrooloose/nerdcommenter'
" Plug 'Yggdroot/indentLine'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'ap/vim-css-color'
" Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'tpope/vim-rhubarb'
" Plug 'liuchengxu/vim-which-key'
" Plug 'mhinz/vim-grepper'
" Plug 'brooth/far.vim'
" Themes
"Plug 'arcticicestudio/nord-vim'
call plug#end()
" source /etc/xdg/nvim/vim-plug/plugins.vim
source /etc/xdg/nvim/general/settings.vim
source /etc/xdg/nvim/keys/mappings.vim
source /etc/xdg/nvim/plug-config/coc.vim
source /etc/xdg/nvim/plug-config/fzf.vim
 source /etc/xdg/nvim/plug-config/vim-commentary.vim
source /etc/xdg/nvim/plug-config/signify.vim
" source /etc/xdg/nvim/plug-config/lf.vim
" source /etc/xdg/nvim/plug-config/ctrlp.vim
"source /etc/xdg/nvim/plug-config/nerdcommenter.vim
" source /etc/xdg/nvim/keys/which-key.vim
" luafile /etc/xdg/nvim/lua/plug-colorizer.lua
" source /etc/xdg/nvim/plug-config/rainbow.vim
"source /etc/xdg/nvim/themes/nord.vim
" source /etc/xdg/nvim/themes/onedark.vim
source /etc/xdg/nvim/themes/gruvbox.vim
source /etc/xdg/nvim/themes/airline.vim



" Automatically install missing plugins on startup
autocmd VimEnter *
			\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\|   PlugInstall --sync | q
			\| endif
