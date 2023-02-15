"START - Dart/Flutter Config

"Dont forget to install coc-flutter
":CocInstall coc-flutter
"https://github.com/iamcco/coc-flutter

Plug 'nvim-lua/plenary.nvim'

Plug 'akinsho/flutter-tools.nvim'

Plug 'dart-lang/dart-vim-plugin'

Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

"Debugger stuffs
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

"(dart-vim-plugin) Enable DartFmt execution on buffer save
"let g:dart_format_on_save = 1

"(dart-vim-plugin) Enable Dart style guide syntax (like 2-space indentation)
"let g:dart_style_guide = 2

"END - Dart/Flutter Config

"Magit for Neovim
Plug 'TimUntersberger/neogit'

"Easily manage multiple terminal windows, inside Neovim
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

"Neovim plugin for GitHub Copilot
Plug 'github/copilot.vim'

"Git Blame plugin for Neovim
Plug 'f-person/git-blame.nvim'

"Delete Neovim buffers without losing window layout
Plug 'famiu/bufdelete.nvim'

"Markdown preview plugin for (neo)vim
" If you have nodejs and yarn.
" After install, open the readme and execute this command bellow:
" :call mkdp#util#install()
" https://github.com/iamcco/markdown-preview.nvim/issues/509#issuecomment-1272483338
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

"A neovim plugin for viewing images.
" Before install this plugin, don't forget to install chafa:
" brew install chafa
Plug 'm00qek/baleia.nvim'
Plug 'princejoogie/chafa.nvim'

"A pretty diagnostics,
"w/ location list to help you solve all the trouble your code is causing.
Plug 'nvim-tree/nvim-web-devicons'
Plug 'folke/trouble.nvim'

"Highlight, list and search todo comments in your projects
Plug 'folke/todo-comments.nvim'