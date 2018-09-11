let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/cursus/camagru
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 index.php
badd +1 core/config.php
badd +9 core/controller.php
badd +23 core/loader.php
badd +1 core/model.php
badd +1 core/route.php
badd +1 core/secu.php
badd +1 ~/cursus/camagru
badd +26 app/views/login/main/login.php
badd +1 app/controllers/login.php
badd +15 app/views/login/register/checkregister.php
badd +73 app/views/login/signup/signup.php
badd +32 app/controllers/home.php
badd +2 app/controllers/marble.php
badd +1 app/controllers/ajax.php
badd +1 e
badd +5 app/views/home_menu.php
badd +1 NetrwTreeListing\ 26
badd +1 app/views/html_start.php
badd +1 app/views/html_stop.php
badd +1 app/views/menu.php
badd +1 app/assets/css/style.css
badd +5 app/views/header.php
badd +1 app/views/main.php
badd +1 app/views/side.php
badd +2 app/views/footer.php
badd +13 app/views/friends/main/asideright.php
badd +8 app/views/gal.php
badd +51 app/assets/css/reset.css
badd +21 app/views/log.php
badd +1 app/views/nav.php
badd +4 app/views/gallery.php
badd +1 app/controllers/editor.php
badd +1 app/views/editor.php
badd +1 app/controllers/gallery.php
badd +37 app/script/php/login/checkinfo.php
badd +2 app/script/php/login/checklogin.php
badd +37 app/script/php/login/checksignup.php
badd +2 app/script/php/login/logout.php
badd +17 app/models/login.php
badd +2 app/models/marble.php
badd +1 NetrwTreeListing\ 16
badd +15 app/views/loggued.php
badd +1 app/script/php/login.php
badd +32 app/script/php/register.php
badd +1 app/controllers/register.php
badd +2 app/views/register.php
badd +1 NetrwTreeListing\ 1
badd +22 app/models/register.php
badd +1 app/assets/css/login.css
badd +1 app/views/login/login.php
badd +18 app/views/login/loggued.php
badd +1 app/views/login/to_log.php
badd +1 app/views/login/user_loggued.php
badd +1 app/assets/css/register.css
badd +1 app/views/login/error.php
badd +0 app/controllers/user.php
badd +0 app/views/user.php
badd +1 app/assets/css/user.php
badd +1 app/assets/css/user.css
badd +0 app/views/home.php
argglobal
silent! argdel *
$argadd index.php
edit core/config.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 115 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 115 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 51 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 16 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 163 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 163 + 182) / 364)
exe '7resize ' . ((&lines * 22 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 163 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((33 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 02|
wincmd w
argglobal
if bufexists('index.php') | buffer index.php | else | edit index.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
argglobal
if bufexists('core/route.php') | buffer core/route.php | else | edit core/route.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 033|
wincmd w
argglobal
if bufexists('core/model.php') | buffer core/model.php | else | edit core/model.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 09|
wincmd w
argglobal
if bufexists('core/controller.php') | buffer core/controller.php | else | edit core/controller.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
wincmd w
argglobal
if bufexists('core/loader.php') | buffer core/loader.php | else | edit core/loader.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 031|
wincmd w
argglobal
if bufexists('core/secu.php') | buffer core/secu.php | else | edit core/secu.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
exe '1resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 115 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 115 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 51 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 16 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 163 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 163 + 182) / 364)
exe '7resize ' . ((&lines * 22 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 163 + 182) / 364)
tabedit app/controllers/login.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
exe '9resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 109 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((55 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 038|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/login.php') | buffer ~/cursus/camagru/app/script/php/login.php | else | edit ~/cursus/camagru/app/script/php/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 46 - ((29 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/login.php') | buffer ~/cursus/camagru/app/models/login.php | else | edit ~/cursus/camagru/app/models/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 037|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/login.php') | buffer ~/cursus/camagru/app/views/login/login.php | else | edit ~/cursus/camagru/app/views/login/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 020|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/user_loggued.php') | buffer ~/cursus/camagru/app/views/login/user_loggued.php | else | edit ~/cursus/camagru/app/views/login/user_loggued.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 011|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/to_log.php') | buffer ~/cursus/camagru/app/views/login/to_log.php | else | edit ~/cursus/camagru/app/views/login/to_log.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/error.php') | buffer ~/cursus/camagru/app/views/login/error.php | else | edit ~/cursus/camagru/app/views/login/error.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((13 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 58 - ((12 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/login.css') | buffer ~/cursus/camagru/app/assets/css/login.css | else | edit ~/cursus/camagru/app/assets/css/login.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
exe '9resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 109 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/register.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 109 + 182) / 364)
exe '6resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 109 + 182) / 364)
exe '7resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/register.php') | buffer ~/cursus/camagru/app/script/php/register.php | else | edit ~/cursus/camagru/app/script/php/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/register.php') | buffer ~/cursus/camagru/app/models/register.php | else | edit ~/cursus/camagru/app/models/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 27 - ((26 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 041|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register.php') | buffer ~/cursus/camagru/app/views/register.php | else | edit ~/cursus/camagru/app/views/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 109 - ((11 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
109
normal! 023|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/register.css') | buffer ~/cursus/camagru/app/assets/css/register.css | else | edit ~/cursus/camagru/app/assets/css/register.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/login.css') | buffer ~/cursus/camagru/app/assets/css/login.css | else | edit ~/cursus/camagru/app/assets/css/login.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 109 + 182) / 364)
exe '6resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 109 + 182) / 364)
exe '7resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/gallery.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 32 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 13 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 84 + 182) / 364)
exe '9resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 84 + 182) / 364)
exe '11resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 12resize ' . ((&columns * 109 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/home.php') | buffer ~/cursus/camagru/app/controllers/home.php | else | edit ~/cursus/camagru/app/controllers/home.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/editor.php') | buffer ~/cursus/camagru/app/controllers/editor.php | else | edit ~/cursus/camagru/app/controllers/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/html_start.php') | buffer ~/cursus/camagru/app/views/html_start.php | else | edit ~/cursus/camagru/app/views/html_start.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((18 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/header.php') | buffer ~/cursus/camagru/app/views/header.php | else | edit ~/cursus/camagru/app/views/header.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((19 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 039|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/footer.php') | buffer ~/cursus/camagru/app/views/footer.php | else | edit ~/cursus/camagru/app/views/footer.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/html_stop.php') | buffer ~/cursus/camagru/app/views/html_stop.php | else | edit ~/cursus/camagru/app/views/html_stop.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/home.php') | buffer ~/cursus/camagru/app/views/home.php | else | edit ~/cursus/camagru/app/views/home.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 020|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor.php') | buffer ~/cursus/camagru/app/views/editor.php | else | edit ~/cursus/camagru/app/views/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/side.php') | buffer ~/cursus/camagru/app/views/side.php | else | edit ~/cursus/camagru/app/views/side.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery.php') | buffer ~/cursus/camagru/app/views/gallery.php | else | edit ~/cursus/camagru/app/views/gallery.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 108 - ((19 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
108
normal! 06|
lcd ~/cursus/camagru
wincmd w
8wincmd w
exe '1resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 28 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 32 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 13 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 84 + 182) / 364)
exe '9resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 84 + 182) / 364)
exe '11resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 12resize ' . ((&columns * 109 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/user.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 139 + 182) / 364)
exe '3resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 139 + 182) / 364)
exe '4resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 139 + 182) / 364)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/user.php') | buffer ~/cursus/camagru/app/views/user.php | else | edit ~/cursus/camagru/app/views/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((22 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 050|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/style.css') | buffer ~/cursus/camagru/app/assets/css/style.css | else | edit ~/cursus/camagru/app/assets/css/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 84 - ((22 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
84
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/user.css') | buffer ~/cursus/camagru/app/assets/css/user.css | else | edit ~/cursus/camagru/app/assets/css/user.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 139 + 182) / 364)
exe '3resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 139 + 182) / 364)
exe '4resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 139 + 182) / 364)
tabnext 4
if exists('s:wipebuf') && s:wipebuf != bufnr('%')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=84 shortmess=filnxtToO
set winminheight=1 winminwidth=10
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
