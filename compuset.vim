" Vim syntax file
" Language:	COMPUSET
" Maintainer:	Tony Lin <lagjazz.java@gmail.com>
" URL:		http://www.lagjazz.com/vim/syntax/compuset.vim
" Last Change:  2008 Oct 28

" Please check :help compuset.vim for some comments and a description of the options

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'compuset'
endif

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ CompusetHiLink hi link <args>
else
  command! -nargs=+ CompusetHiLink hi def link <args>
endif

syntax spell toplevel

set mps+=<:>

syn case ignore

" mark illegal characters
" syn match compusetError "[<>]"

" catch errors caused by wrong parenthesis
syn region  compusetParenT  transparent matchgroup=compusetParen  start="<" end=">" 
syn match   compusetParenError       ">"

" tag names
syn keyword compusetTagName contained ACNT ACOM ADD AFPC AM APAR BD BL BMARK BOX CAM CB CC CCER CCOD CD
syn keyword compusetTagName contained CDECIMAL CFDP CFT1 CHAL CM COLOR CP CSM CTYP CW DATE DEFC DEST DESTIX DIV
syn keyword compusetTagName contained DJDE DJDE DL DLP DMRG DMRG DSAV DSAV EL EMLINK ERB EVR F FNCW FO
syn keyword compusetTagName contained GAL GAXIS GBAR GBBORDER GBFILL GBKGRND GBOX GBSETUP 
syn keyword compusetTagName contained GCLEAR GCMYKCOL GCONVERT GCREATE GETVAL GDEFAULT GDESTROY GKEY
syn keyword compusetTagName contained GKSETUP GLINESET GLINETO GLINEXYZ GLSETUP GMOVETO GORIGIN GPALCLR 
syn keyword compusetTagName contained GPIE GPLOTXYZ GPSETUP GRGBCOL GRPSTART GSCALEX GSCALEY GSIZEXYZ
syn keyword compusetTagName contained GSLOPXYZ GTITLE GTSETUP GW HBOX HFRT HFWD HL HR HRC HYP I IA 
syn keyword compusetTagName contained IAA IAAG IAG IAGH IAH IC ID IFEQ IFGT IFLE IFLT IFMT IFNE IMG IMG IMG
syn keyword compusetTagName contained IMG IMPO IN INCL INCPATH INQ IPN IT IWSP IX IXMARK IXSETM JD JU JV KERN
syn keyword compusetTagName contained KERNON LINK LNUM LT MUL NC NL NP NP NPR NPR NPV NPV NS NUP NXTF 
syn keyword compusetTagName contained ODINDEX OUTF PA PD PHR PN PNDC PNI PPN PT PUTVAL PW QL QR QUIT R
syn keyword compusetTagName contained RAUX RAUX REPT RF RO ROFF RSTK RSTK SC SCI SCIN SF SK SMDP
syn keyword compusetTagName contained SP SPB SPIM SPTX SRB SRO SSFN STBC STBW SUB SVR T TABC TABJ TABL TABR
syn keyword compusetTagName contained TBDL TEX TEXD TEXM TF TFC TIME TMOD TSET TWOP TXRD TXSETUP 
syn keyword compusetTagName contained UL VMFDEF VMFPOS VMFTAG VPT VPTD VR VRC WS XCFL
syn match   compusetTagName contained "HD[0-9]"
syn match   compusetTagName contained "FT[0-9]"
syn match   compusetTagName contained "I[0-9]"
syn match   compusetTagName contained "IA[0-9]"
syn match   compusetTagName contained "CHD[0-9]"
syn match   compusetTagName contained "FHD[0-9]"
syn match   compusetTagName contained "R[0-9]"
syn match   compusetTagName contained "RS[0-9]"
syn match   compusetCounterValueName contained "\^[0-9]*"
syn match   compusetUserTagName contained "[#*][a-zA-Z0-9]*"

" tags
syn region  compusetTag      	 start=+[/<]+   end=+\(/\|>\)+ 		contains=compusetUserTagName,compusetCounterValueName,compusetTagName,compusetComment,compusetTag

" comments
syn region compusetComment       start=+[</]\s*SK\s*>+ end=+<+me=e-1

" highlighting.
CompusetHiLink compusetTag                     Function
CompusetHiLink compusetUserTag                 Type
CompusetHiLink compusetUserTagName             Special
CompusetHiLink compusetCounterValueName        String
CompusetHiLink compusetTagName                 Statement
CompusetHiLink compusetValue                   String
CompusetHiLink compusetComment                 Comment
CompusetHiLink compusetError                   Error
CompusetHiLink compusetParenError              Error

" CompusetHiLink compusetEndTag                  Identifier
" CompusetHiLink compusetArg                     Type
" CompusetHiLink compusetSpecialChar             Special
" CompusetHiLink compusetSpecialTagName          Exception
  
delcommand CompusetHiLink

let b:current_syntax = "compuset"

if main_syntax == 'compuset'
  unlet main_syntax
endif

" vim: ts=8
