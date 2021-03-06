" Compiler: G95
" Maintainer: H Xu <xuhdev@gmail.com>
" Version: 0.1.3
" Last Change: 2011 Apr 01
" Homepage: http://www.vim.org/scripts/script.php?script_id=3492
"           https://bitbucket.org/xuhdev/compiler-g95.vim
" License: Same as Vim

if exists('current_compiler')
    finish
endif
let current_compiler = 'g95'

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=
            \%AIn\ file\ %f:%l,
            \%-C%p1,
            \%-Z%trror:\ %m,
            \%-Z%tarning\ (%n):\ %m,
            \%-C%.%#
