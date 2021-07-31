# nakala.vim

Simple vim syntax highlighting for [nakala](https://github.com/reaganmcf/nakala)

## Installation

For activating the full functionality, this plugin requires either the plugin
manager or the `.vimrc` to have the following:

```vim
syntax enable
filetype plugin indent on
```

Most plugin managers don't do this automatically, so these statements are
usually added by users in their `vimrc` _right after_ the plugin manager load
section.

### [Vim8 packages][vim8pack]

```sh
git clone https://github.com/reaganmcf/nakala.vim ~/.vim/pack/plugins/start/nakala.vim
```

### [Vundle][v]

```vim
Plugin 'reaganmcf/nakala.vim'
```

### [Pathogen][p]

```sh
git clone --depth=1 https://github.com/reaganmcf/nakala.vim.git ~/.vim/bundle/nakala.vim
```

### [vim-plug][vp]

```vim
Plug 'reaganmcf/nakala.vim'
```

### [dein.vim][d]

```vim
call dein#add('reaganmcf/nakala.vim')
```

### [NeoBundle][nb]

```vim
NeoBundle 'reaganmcf/nakala.vim'
```
