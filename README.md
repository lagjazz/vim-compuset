# vim-compuset
This is the syntax plugin to use vim for compuset tagging language scripts

Just copy this "compuset.vim" file to the installation folder of VIM, under the sub folder vim74/syntax/, where "74" will match the current VIM version, and also add this line into the file: vim74/filetype.vim

au BufNewFile,BufRead *.sty			setf compuset

Where ".sty" will be the extension of your compuset style files
