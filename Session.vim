let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
exe "cd " . escape(expand("<sfile>:p:h"), ' ')
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 index.php
badd +1 core/controller.php
badd +2 core/loader.php
badd +1 core/model.php
badd +1 core/route.php
badd +5 app/controllers/login.php
badd +1 app/controllers/home.php
badd +276 app/assets/css/style.css
badd +1 app/controllers/editor.php
badd +8 app/controllers/gallery.php
badd +3 app/models/login.php
badd +23 app/script/php/register.php
badd +59 app/controllers/register.php
badd +15 app/models/register.php
badd +1 app/assets/css/login.css
badd +1 app/assets/css/register.css
badd +1 app/controllers/user.php
badd +25 app/assets/css/user.css
badd +8 config/setup.php
badd +1 config/database.php
badd +1 config/config.php
badd +1 app/script/php/mail/email_validator.php
badd +60 app/assets/css/editor.css
badd +88 app/script/js/webcam.js
badd +86 app/assets/css/gallery.css
badd +1 app/script/js/send_picture.js
badd +1 app/models/media.php
badd +1 app/controllers/logout.php
badd +58 app/assets/css/glyphicons.css
badd +1 core/TOOL.php
badd +36 app/assets/css/input.css
badd +1 app/script/js/init.js
badd +1 app/script/js/lunch.js
badd +1 .htaccess
badd +7 app/views/404.html
badd +23 app/views/html_start.html
badd +1 app/views/header.html
badd +1 app/views/login/to_log.html
badd +1 app/views/login/user_loggued.html
badd +1 app/views/home.html
badd +1 app/views/footer.html
badd +1 app/views/login/login.html
badd +1 app/views/login/footer.html
badd +1 app/views/register/register.html
badd +6 app/views/register/success.html
badd +53 app/views/gallery/paging.html
badd +3 app/views/gallery/gallery.html
badd +2 app/views/editor/left_side.html
badd +1 app/views/editor/editor.html
badd +1 app/views/editor/right_side.html
badd +1 app/views/user.html
badd +9 app/views/defaut_layout.html
badd +1 app/views/default_layout.html
badd +1 app/views/msg.html
badd +5 app/views/menu.html
badd +27 app/script/php/login.php
badd +26 app/models/user.php
badd +1 app/views/login/forgotten_password.html
badd +1 app/views/login/reseting_p
badd +13 app/views/login/reset_password.php
badd +7 app/views/login/reset_password.html
badd +23 app/script/php/mail.php
badd +24 app/views/gallery/focus.html
badd +54 app/assets/css/focus.css
badd +8 app/views/gallery/like_star.php
badd +13 app/views/gallery/like_star.html
badd +23 app/script/php/liker_bar.php
badd +9 app/script/php/like_bar.php
badd +1 app/controllers/media.php
badd +43 app/models/likes.php
badd +39 app/models/comments.php
badd +1 app/controllers/settings.php
badd +1 app/views/settings.html
badd +1 app/assets/css/settings.css
badd +4 app/views/gallery/user.html
badd +59 app/script/php/pictures.php
badd +6 app/controllers/likes.php
badd +1 app/controllers/like.php
badd +1 app/controllers/comment.php
badd +0 app/assets/css/paging.css
argglobal
silent! argdel *
$argadd ~/cursus/camagru/index.php
edit config/database.php
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
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 11 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 140 + 182) / 364)
exe '6resize ' . ((&lines * 32 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 140 + 182) / 364)
exe '7resize ' . ((&lines * 35 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 140 + 182) / 364)
exe '8resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 138 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 138 + 182) / 364)
exe '10resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 138 + 182) / 364)
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
let s:l = 1 - ((0 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 05|
wincmd w
argglobal
if bufexists('config/config.php') | buffer config/config.php | else | edit config/config.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((25 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 038|
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
let s:l = 61 - ((21 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 038|
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
let s:l = 2 - ((1 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 02|
wincmd w
argglobal
if bufexists('.htaccess') | buffer .htaccess | else | edit .htaccess | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
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
let s:l = 23 - ((22 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
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
let s:l = 10 - ((7 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
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
let s:l = 2 - ((1 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
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
let s:l = 18 - ((17 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
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
let s:l = 16 - ((13 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 05|
wincmd w
exe '1resize ' . ((&lines * 5 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 9 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 11 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 140 + 182) / 364)
exe '6resize ' . ((&lines * 32 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 140 + 182) / 364)
exe '7resize ' . ((&lines * 35 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 140 + 182) / 364)
exe '8resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 138 + 182) / 364)
exe '9resize ' . ((&lines * 21 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 138 + 182) / 364)
exe '10resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 138 + 182) / 364)
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
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 93 + 182) / 364)
exe '7resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 92 + 182) / 364)
exe '8resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
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
let s:l = 93 - ((32 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
93
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
let s:l = 50 - ((32 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
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
let s:l = 29 - ((7 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
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
let s:l = 16 - ((15 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 09|
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
let s:l = 9 - ((8 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 09|
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
let s:l = 53 - ((23 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 029|
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
let s:l = 24 - ((23 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
wincmd w
argglobal
if bufexists('app/controllers/settings.php') | buffer app/controllers/settings.php | else | edit app/controllers/settings.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 59 - ((11 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 09|
wincmd w
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 93 + 182) / 364)
exe '7resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 92 + 182) / 364)
exe '8resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
tabedit app/controllers/media.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 120 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
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
let s:l = 28 - ((27 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 028|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/like.php') | buffer ~/cursus/camagru/app/controllers/like.php | else | edit ~/cursus/camagru/app/controllers/like.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/controllers/comment.php') | buffer ~/cursus/camagru/app/controllers/comment.php | else | edit ~/cursus/camagru/app/controllers/comment.php | endif
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
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe 'vert 2resize ' . ((&columns * 120 + 182) / 364)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
tabedit ~/cursus/camagru/core/model.php
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
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 93 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 92 + 182) / 364)
exe '5resize ' . ((&lines * 54 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 6resize ' . ((&columns * 92 + 182) / 364)
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
let s:l = 37 - ((36 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 05|
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
let s:l = 48 - ((32 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/likes.php') | buffer ~/cursus/camagru/app/models/likes.php | else | edit ~/cursus/camagru/app/models/likes.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 51 - ((26 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 010|
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
let s:l = 16 - ((15 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 048|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((17 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 026|
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
let s:l = 99 - ((72 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
99
normal! 023|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 93 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 92 + 182) / 364)
exe '5resize ' . ((&lines * 54 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 92 + 182) / 364)
exe 'vert 6resize ' . ((&columns * 92 + 182) / 364)
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
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 37 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 14 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 120 + 182) / 364)
exe '7resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 120 + 182) / 364)
exe '8resize ' . ((&lines * 17 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 120 + 182) / 364)
exe '10resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 121 + 182) / 364)
exe '11resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 121 + 182) / 364)
exe '12resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 12resize ' . ((&columns * 121 + 182) / 364)
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
let s:l = 4 - ((3 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/404.html') | buffer ~/cursus/camagru/app/views/404.html | else | edit ~/cursus/camagru/app/views/404.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/msg.html') | buffer ~/cursus/camagru/app/views/msg.html | else | edit ~/cursus/camagru/app/views/msg.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 011|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/default_layout.html') | buffer ~/cursus/camagru/app/views/default_layout.html | else | edit ~/cursus/camagru/app/views/default_layout.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((24 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/header.html') | buffer ~/cursus/camagru/app/views/header.html | else | edit ~/cursus/camagru/app/views/header.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/to_log.html') | buffer ~/cursus/camagru/app/views/login/to_log.html | else | edit ~/cursus/camagru/app/views/login/to_log.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/user_loggued.html') | buffer ~/cursus/camagru/app/views/login/user_loggued.html | else | edit ~/cursus/camagru/app/views/login/user_loggued.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 06|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/home.html') | buffer ~/cursus/camagru/app/views/home.html | else | edit ~/cursus/camagru/app/views/home.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/footer.html') | buffer ~/cursus/camagru/app/views/footer.html | else | edit ~/cursus/camagru/app/views/footer.html | endif
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
let s:l = 88 - ((18 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 040|
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
let s:l = 8 - ((7 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 121 + 182) / 364)
exe '2resize ' . ((&lines * 10 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 121 + 182) / 364)
exe '3resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 121 + 182) / 364)
exe '4resize ' . ((&lines * 37 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 121 + 182) / 364)
exe '5resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 120 + 182) / 364)
exe '6resize ' . ((&lines * 14 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 120 + 182) / 364)
exe '7resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 120 + 182) / 364)
exe '8resize ' . ((&lines * 17 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 120 + 182) / 364)
exe '9resize ' . ((&lines * 15 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 120 + 182) / 364)
exe '10resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 121 + 182) / 364)
exe '11resize ' . ((&lines * 23 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 121 + 182) / 364)
exe '12resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 12resize ' . ((&columns * 121 + 182) / 364)
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
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 45 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 55 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe '4resize ' . ((&lines * 24 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 92 + 182) / 364)
exe '5resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 93 + 182) / 364)
exe '7resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 92 + 182) / 364)
exe '8resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
exe '9resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 92 + 182) / 364)
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
let s:l = 29 - ((28 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
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
let s:l = 2 - ((1 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
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
let s:l = 23 - ((22 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 011|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/mail.php') | buffer ~/cursus/camagru/app/script/php/mail.php | else | edit ~/cursus/camagru/app/script/php/mail.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/register.html') | buffer ~/cursus/camagru/app/views/register/register.html | else | edit ~/cursus/camagru/app/views/register/register.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/register/success.html') | buffer ~/cursus/camagru/app/views/register/success.html | else | edit ~/cursus/camagru/app/views/register/success.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
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
let s:l = 266 - ((14 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
266
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 67 - ((11 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
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
let s:l = 23 - ((18 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/cursus/camagru
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 45 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 34 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 55 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 92 + 182) / 364)
exe '4resize ' . ((&lines * 24 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 92 + 182) / 364)
exe '5resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 93 + 182) / 364)
exe '7resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 92 + 182) / 364)
exe '8resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
exe '9resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 92 + 182) / 364)
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
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 84 + 182) / 364)
exe '9resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 109 + 182) / 364)
exe '11resize ' . ((&lines * 12 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 109 + 182) / 364)
exe '12resize ' . ((&lines * 40 + 42) / 84)
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
let s:l = 7 - ((6 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
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
let s:l = 13 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 050|
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
let s:l = 13 - ((12 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 021|
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
let s:l = 20 - ((16 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 029|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/mail.php') | buffer ~/cursus/camagru/app/script/php/mail.php | else | edit ~/cursus/camagru/app/script/php/mail.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/login.html') | buffer ~/cursus/camagru/app/views/login/login.html | else | edit ~/cursus/camagru/app/views/login/login.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/forgotten_password.html') | buffer ~/cursus/camagru/app/views/login/forgotten_password.html | else | edit ~/cursus/camagru/app/views/login/forgotten_password.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/reset_password.html') | buffer ~/cursus/camagru/app/views/login/reset_password.html | else | edit ~/cursus/camagru/app/views/login/reset_password.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/login/footer.html') | buffer ~/cursus/camagru/app/views/login/footer.html | else | edit ~/cursus/camagru/app/views/login/footer.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 042|
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
let s:l = 69 - ((14 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 07|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((5 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
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
let s:l = 19 - ((18 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 59 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 84 + 182) / 364)
exe '9resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 84 + 182) / 364)
exe '10resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 109 + 182) / 364)
exe '11resize ' . ((&lines * 12 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 109 + 182) / 364)
exe '12resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 12resize ' . ((&columns * 109 + 182) / 364)
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
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe '1resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 92 + 182) / 364)
exe '3resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 93 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
exe '9resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 92 + 182) / 364)
exe '10resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 92 + 182) / 364)
exe '11resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 92 + 182) / 364)
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
let s:l = 19 - ((12 * winheight(0) + 20) / 40)
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
let s:l = 103 - ((20 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
103
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/gallery.html') | buffer ~/cursus/camagru/app/views/gallery/gallery.html | else | edit ~/cursus/camagru/app/views/gallery/gallery.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/focus.html') | buffer ~/cursus/camagru/app/views/gallery/focus.html | else | edit ~/cursus/camagru/app/views/gallery/focus.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((10 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/user.html') | buffer ~/cursus/camagru/app/views/gallery/user.html | else | edit ~/cursus/camagru/app/views/gallery/user.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((11 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 050|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/php/like_bar.php') | buffer ~/cursus/camagru/app/script/php/like_bar.php | else | edit ~/cursus/camagru/app/script/php/like_bar.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/gallery/paging.html') | buffer ~/cursus/camagru/app/views/gallery/paging.html | else | edit ~/cursus/camagru/app/views/gallery/paging.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 018|
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
let s:l = 90 - ((9 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
90
normal! 026|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/focus.css') | buffer ~/cursus/camagru/app/assets/css/focus.css | else | edit ~/cursus/camagru/app/assets/css/focus.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 030|
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
let s:l = 44 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/paging.css') | buffer ~/cursus/camagru/app/assets/css/paging.css | else | edit ~/cursus/camagru/app/assets/css/paging.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((14 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 92 + 182) / 364)
exe '2resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 92 + 182) / 364)
exe '3resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 93 + 182) / 364)
exe '4resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 93 + 182) / 364)
exe '5resize ' . ((&lines * 26 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 93 + 182) / 364)
exe '6resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 39 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 84 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 92 + 182) / 364)
exe '9resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 92 + 182) / 364)
exe '10resize ' . ((&lines * 20 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 92 + 182) / 364)
exe '11resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 92 + 182) / 364)
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
2wincmd k
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
exe '1resize ' . ((&lines * 38 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 41 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 42 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 17 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 16 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 2 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 96 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 96 + 182) / 364)
exe '9resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 96 + 182) / 364)
exe '10resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 97 + 182) / 364)
exe '11resize ' . ((&lines * 13 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 97 + 182) / 364)
exe '12resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 12resize ' . ((&columns * 97 + 182) / 364)
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
let s:l = 29 - ((28 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
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
let s:l = 11 - ((10 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 019|
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
let s:l = 35 - ((34 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 042|
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
let s:l = 80 - ((9 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
80
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/init.js') | buffer ~/cursus/camagru/app/script/js/init.js | else | edit ~/cursus/camagru/app/script/js/init.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/script/js/lunch.js') | buffer ~/cursus/camagru/app/script/js/lunch.js | else | edit ~/cursus/camagru/app/script/js/lunch.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 1) / 2)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/left_side.html') | buffer ~/cursus/camagru/app/views/editor/left_side.html | else | edit ~/cursus/camagru/app/views/editor/left_side.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/editor.html') | buffer ~/cursus/camagru/app/views/editor/editor.html | else | edit ~/cursus/camagru/app/views/editor/editor.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 021|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/editor/right_side.html') | buffer ~/cursus/camagru/app/views/editor/right_side.html | else | edit ~/cursus/camagru/app/views/editor/right_side.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
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
let s:l = 18 - ((16 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 40 - ((6 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 020|
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
let s:l = 168 - ((27 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
168
normal! 020|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 38 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 41 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 42 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 17 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe '5resize ' . ((&lines * 16 + 42) / 84)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 2 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 84 + 182) / 364)
exe '7resize ' . ((&lines * 30 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 96 + 182) / 364)
exe '8resize ' . ((&lines * 19 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 96 + 182) / 364)
exe '9resize ' . ((&lines * 29 + 42) / 84)
exe 'vert 9resize ' . ((&columns * 96 + 182) / 364)
exe '10resize ' . ((&lines * 25 + 42) / 84)
exe 'vert 10resize ' . ((&columns * 97 + 182) / 364)
exe '11resize ' . ((&lines * 13 + 42) / 84)
exe 'vert 11resize ' . ((&columns * 97 + 182) / 364)
exe '12resize ' . ((&lines * 40 + 42) / 84)
exe 'vert 12resize ' . ((&columns * 97 + 182) / 364)
tabedit ~/cursus/camagru/app/controllers/settings.php
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
exe '1resize ' . ((&lines * 46 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 46 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 14 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 109 + 182) / 364)
exe '7resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 14 + 42) / 84)
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
let s:l = 28 - ((27 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/msg.html') | buffer ~/cursus/camagru/app/views/msg.html | else | edit ~/cursus/camagru/app/views/msg.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
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
let s:l = 13 - ((12 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/models/user.php') | buffer ~/cursus/camagru/app/models/user.php | else | edit ~/cursus/camagru/app/models/user.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/views/settings.html') | buffer ~/cursus/camagru/app/views/settings.html | else | edit ~/cursus/camagru/app/views/settings.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 50 - ((7 * winheight(0) + 40) / 80)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
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
let s:l = 7 - ((6 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/input.css') | buffer ~/cursus/camagru/app/assets/css/input.css | else | edit ~/cursus/camagru/app/assets/css/input.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((25 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
if bufexists('~/cursus/camagru/app/assets/css/settings.css') | buffer ~/cursus/camagru/app/assets/css/settings.css | else | edit ~/cursus/camagru/app/assets/css/settings.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 46 + 42) / 84)
exe 'vert 1resize ' . ((&columns * 84 + 182) / 364)
exe '2resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 2resize ' . ((&columns * 84 + 182) / 364)
exe '3resize ' . ((&lines * 46 + 42) / 84)
exe 'vert 3resize ' . ((&columns * 84 + 182) / 364)
exe '4resize ' . ((&lines * 33 + 42) / 84)
exe 'vert 4resize ' . ((&columns * 84 + 182) / 364)
exe 'vert 5resize ' . ((&columns * 84 + 182) / 364)
exe '6resize ' . ((&lines * 14 + 42) / 84)
exe 'vert 6resize ' . ((&columns * 109 + 182) / 364)
exe '7resize ' . ((&lines * 50 + 42) / 84)
exe 'vert 7resize ' . ((&columns * 109 + 182) / 364)
exe '8resize ' . ((&lines * 14 + 42) / 84)
exe 'vert 8resize ' . ((&columns * 109 + 182) / 364)
tabnext 6
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
