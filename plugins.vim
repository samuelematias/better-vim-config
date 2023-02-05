"START - Dart/Flutter Config

"Dont forget to install coc-flutter
":CocInstall coc-flutter
"https://github.com/iamcco/coc-flutter

Plug 'nvim-lua/plenary.nvim'

Plug 'akinsho/flutter-tools.nvim'

Plug 'dart-lang/dart-vim-plugin'

Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'

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