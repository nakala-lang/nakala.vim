# nakala.vim

Simple vim syntax highlighting for [nakala](https://github.com/nakala-lang/nakala)

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
git clone https://github.com/nakala-lang/nakala.vim ~/.vim/pack/plugins/start/nakala.vim
```

### [Vundle][v]

```vim
Plugin 'nakala-lang/nakala.vim'
```

### [Pathogen][p]

```sh
git clone --depth=1 https://github.com/nakala-lang/nakala.vim.git ~/.vim/bundle/nakala.vim
```

### [vim-plug][vp]

```vim
Plug 'nakala-lang/nakala.vim'
```

### [dein.vim][d]

```vim
call dein#add('nakala-lang/nakala.vim')
```

### [NeoBundle][nb]

```vim
NeoBundle 'nakala-lang/nakala.vim'
```

## License
`nakala.vim` is distributed under the MIT license

[vim8pack]: http://vimhelp.appspot.com/repeat.txt.html#packages
[v]: https://github.com/gmarik/vundle
[p]: https://github.com/tpope/vim-pathogen
[vp]: https://github.com/junegunn/vim-plug
[d]: https://github.com/Shougo/dein.vim
[nb]: https://github.com/Shougo/neobundle.vim
