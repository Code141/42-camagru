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
badd +25 index.php
badd +1 core/config.php
badd +1 core/controller.php
badd +1 core/loader.php
badd +1 core/model.php
badd +1 core/route.php
badd +1 core/secu.php
badd +1 app/views/login/main/login.php
badd +1 app/controllers/login.php
badd +1 app/views/login/register/checkregister.php
badd +1 app/views/login/signup/signup.php
badd +8 app/controllers/home.php
badd +1 app/controllers/marble.php
badd +1 app/controllers/ajax.php
badd +1 app/views/home_menu.php
badd +21 app/views/html_start.php
badd +2 app/views/html_stop.php
badd +3 app/views/menu.php
badd +227 app/assets/css/style.css
badd +24 app/views/header.php
badd +1 app/views/main.php
badd +1 app/views/side.php
badd +2 app/views/footer.php
badd +1 app/views/friends/main/asideright.php
badd +1 app/views/gal.php
badd +42 app/assets/css/reset.css
badd +1 app/views/log.php
badd +1 app/views/nav.php
badd +1 app/views/gallery.php
badd +25 app/controllers/editor.php
badd +1 app/views/editor.php
badd +17 app/controllers/gallery.php
badd +1 app/script/php/login/checkinfo.php
badd +1 app/script/php/login/checklogin.php
badd +1 app/script/php/login/checksignup.php
badd +1 app/script/php/login/logout.php
badd +14 app/models/login.php
badd +1 app/models/marble.php
badd +1 NetrwTreeListing\ 16
badd +1 app/views/loggued.php
badd +19 app/script/php/login.php
badd +24 app/script/php/register.php
badd +16 app/controllers/register.php
badd +1 app/views/register.php
badd +24 app/models/register.php
badd +12 app/assets/css/login.css
badd +25 app/views/login/login.php
badd +1 app/views/login/loggued.php
badd +12 app/views/login/to_log.php
badd +9 app/views/login/user_loggued.php
badd +1 app/assets/css/register.css
badd +28 app/views/login/error.php
badd +9 app/controllers/user.php
badd +1 app/views/user.php
badd +1 app/assets/css/user.php
badd +1 app/assets/css/user.css
badd +5 app/views/home.php
badd +8 config/setup.php
badd +1 config/database.php
badd +24 core/mvc.php
badd +35 config/config.php
badd +1 app/script/php/mail/validation_mail.php
badd +7 app/script/php/mail/email_validator.php
badd +1 app/views/register/success.php
badd +1 app/views/register/register.php
badd +1 app/views/.DS_Store
badd +28 app/views/login/restricted.php
badd +1 app/assets/css/editor.css
badd +38 app/script/js/webcam.js
badd +1 app/views/editor/left_side.php
badd +10 app/views/editor/right_side.php
badd +10 app/assets/css/gallery.css
badd +15 app/views/gallery/gallery.php
badd +9 app/views/gallery/paging.php
badd +4 app/views/editor/editor.php
badd +25 app/script/js/send_picture.js
badd +10 app/models/media.php
badd +14 app/controllers/logout.php
badd +1 app/assets/css/glyphicons.css
badd +0 core/TOOL.php
argglobal
silent! argdel *
$argadd index.php
edit config/config.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
exe '1resize ' . ((&lines * 35 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 194 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 194 + 182) / 364)
exe '9resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 194 + 182) / 364)
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
let s:l = 26 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
wincmd w
argglobal
if bufexists('config/setup.php') | buffer config/setup.php | else | edit config/setup.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
if bufexists('core/TOOL.php') | buffer core/TOOL.php | else | edit core/TOOL.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists('config/database.php') | buffer config/database.php | else | edit config/database.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
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
let s:l = 4 - ((3 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
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
let s:l = 22 - ((7 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
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
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 12 - ((11 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
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
let s:l = 13 - ((9 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 011|
wincmd w
6wincmd w
exe '1resize ' . ((&lines * 35 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 194 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 194 + 182) / 364)
exe '9resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 194 + 182) / 364)
tabedit core/controller.php
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
2wincmd k
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
exe '2resize ' . ((&lines * 43 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 36 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
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
let s:l = 11 - ((10 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
wincmd w
argglobal
if bufexists('app/controllers/login.php') | buffer app/controllers/login.php | else | edit app/controllers/login.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 33 - ((28 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 0
wincmd w
argglobal
if bufexists('app/controllers/register.php') | buffer app/controllers/register.php | else | edit app/controllers/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 045|
wincmd w
argglobal
if bufexists('app/controllers/logout.php') | buffer app/controllers/logout.php | else | edit app/controllers/logout.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('app/controllers/home.php') | buffer app/controllers/home.php | else | edit app/controllers/home.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 031|
wincmd w
argglobal
if bufexists('app/controllers/gallery.php') | buffer app/controllers/gallery.php | else | edit app/controllers/gallery.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((33 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 05|
wincmd w
argglobal
if bufexists('app/controllers/editor.php') | buffer app/controllers/editor.php | else | edit app/controllers/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 019|
wincmd w
argglobal
if bufexists('app/controllers/user.php') | buffer app/controllers/user.php | else | edit app/controllers/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 013|
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 43 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 36 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
tabedit core/model.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
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
let s:l = 2 - ((1 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
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
let s:l = 44 - ((43 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
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
let s:l = 19 - ((18 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 030|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/home.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
wincmd _ | wincmd |
split
4wincmd k
wincmd w
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
exe '1resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 38 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 92 + 182) / 364)
exe '3resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe '4resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 186 + 182) / 364)
exe '5resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 186 + 182) / 364)
exe '6resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 186 + 182) / 364)
exe '7resize ' . ((&lines * 7 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 186 + 182) / 364)
exe '8resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 186 + 182) / 364)
exe '9resize ' . ((&lines * 74 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 84 + 182) / 364)
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
let s:l = 10 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 05|
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
let s:l = 26 - ((25 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 09|
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
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 16 - ((15 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
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
let s:l = 11 - ((10 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 08|
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
let s:l = 7 - ((6 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 053|
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
let s:l = 1 - ((0 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
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
let s:l = 1 - ((0 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 137 - ((41 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
137
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/glyphicons.css') | buffer ~/cursus/camagru/app/assets/css/glyphicons.css | else | edit ~/cursus/camagru/app/assets/css/glyphicons.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((2 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 018|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 38 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 92 + 182) / 364)
exe '3resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe '4resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 186 + 182) / 364)
exe '5resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 186 + 182) / 364)
exe '6resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 186 + 182) / 364)
exe '7resize ' . ((&lines * 7 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 186 + 182) / 364)
exe '8resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 186 + 182) / 364)
exe '9resize ' . ((&lines * 74 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 84 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/login.php
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
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 54 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 15 + 42) / 84)
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
let s:l = 20 - ((19 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 058|
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
let s:l = 11 - ((10 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/logout.php') | buffer ~/cursus/camagru/app/controllers/logout.php | else | edit ~/cursus/camagru/app/controllers/logout.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
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
let s:l = 22 - ((21 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 05|
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
let s:l = 23 - ((22 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
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
let s:l = 6 - ((5 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 031|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/restricted.php') | buffer ~/cursus/camagru/app/views/login/restricted.php | else | edit ~/cursus/camagru/app/views/login/restricted.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
let s:l = 96 - ((22 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 051|
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
let s:l = 12 - ((11 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 54 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 15 + 42) / 84)
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
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
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
let s:l = 33 - ((32 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
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
let s:l = 24 - ((8 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
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
let s:l = 37 - ((36 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/mail/email_validator.php') | buffer ~/cursus/camagru/app/script/php/mail/email_validator.php | else | edit ~/cursus/camagru/app/script/php/mail/email_validator.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/register.php') | buffer ~/cursus/camagru/app/views/register/register.php | else | edit ~/cursus/camagru/app/views/register/register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((36 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/success.php') | buffer ~/cursus/camagru/app/views/register/success.php | else | edit ~/cursus/camagru/app/views/register/success.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 010|
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
let s:l = 22 - ((21 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
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
let s:l = 25 - ((24 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/gallery.php
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
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 103 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 103 + 182) / 364)
exe '3resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 138 + 182) / 364)
exe '4resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 138 + 182) / 364)
exe '5resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 121 + 182) / 364)
exe '6resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
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
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((7 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/paging.php') | buffer ~/cursus/camagru/app/views/gallery/paging.php | else | edit ~/cursus/camagru/app/views/gallery/paging.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 08|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/gallery.php') | buffer ~/cursus/camagru/app/views/gallery/gallery.php | else | edit ~/cursus/camagru/app/views/gallery/gallery.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((24 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 033|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/gallery.css') | buffer ~/cursus/camagru/app/assets/css/gallery.css | else | edit ~/cursus/camagru/app/assets/css/gallery.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((21 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 015|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/gallery.css') | buffer ~/cursus/camagru/app/assets/css/gallery.css | else | edit ~/cursus/camagru/app/assets/css/gallery.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 022|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 103 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 103 + 182) / 364)
exe '3resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 138 + 182) / 364)
exe '4resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 138 + 182) / 364)
exe '5resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 121 + 182) / 364)
exe '6resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 121 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/editor.php
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
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
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
let s:l = 9 - ((6 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/media.php') | buffer ~/cursus/camagru/app/models/media.php | else | edit ~/cursus/camagru/app/models/media.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((18 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 026|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/send_picture.js') | buffer ~/cursus/camagru/app/script/js/send_picture.js | else | edit ~/cursus/camagru/app/script/js/send_picture.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((31 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/webcam.js') | buffer ~/cursus/camagru/app/script/js/webcam.js | else | edit ~/cursus/camagru/app/script/js/webcam.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 54 - ((37 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/editor.php') | buffer ~/cursus/camagru/app/views/editor/editor.php | else | edit ~/cursus/camagru/app/views/editor/editor.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/right_side.php') | buffer ~/cursus/camagru/app/views/editor/right_side.php | else | edit ~/cursus/camagru/app/views/editor/right_side.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
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
let s:l = 54 - ((13 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/editor.css') | buffer ~/cursus/camagru/app/assets/css/editor.css | else | edit ~/cursus/camagru/app/assets/css/editor.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((21 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
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
let s:l = 22 - ((21 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
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
let s:l = 46 - ((45 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 020|
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
let s:l = 107 - ((24 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
107
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
let s:l = 88 - ((37 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 139 + 182) / 364)
exe '3resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 139 + 182) / 364)
exe '4resize ' . ((&lines * 49 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 139 + 182) / 364)
tabnext 1
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
