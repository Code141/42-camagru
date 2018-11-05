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
badd +14 index.php
badd +113 core/controller.php
badd +6 core/loader.php
badd +1 core/model.php
badd +1 core/route.php
badd +61 app/controllers/login.php
badd +1 app/controllers/home.php
badd +196 app/assets/css/style.css
badd +23 app/controllers/editor.php
badd +8 app/controllers/gallery.php
badd +3 app/models/login.php
badd +56 app/controllers/register.php
badd +15 app/models/register.php
badd +1 app/assets/css/login.css
badd +1 app/assets/css/register.css
badd +8 config/setup.php
badd +1 config/database.php
badd +1 config/config.php
badd +60 app/assets/css/editor.css
badd +50 app/script/js/webcam.js
badd +86 app/assets/css/gallery.css
badd +1 app/script/js/send_picture.js
badd +9 app/models/media.php
badd +1 app/controllers/logout.php
badd +58 app/assets/css/glyphicons.css
badd +1 core/TOOL.php
badd +36 app/assets/css/input.css
badd +1 app/script/js/init.js
badd +1 app/script/js/lunch.js
badd +1 .htaccess
badd +1 app/views/404.html
badd +1 app/views/header.html
badd +1 app/views/login/to_log.html
badd +1 app/views/login/user_loggued.html
badd +1 app/views/home.html
badd +1 app/views/footer.html
badd +1 app/views/login/login.html
badd +2 app/views/login/footer.html
badd +1 app/views/register/register.html
badd +6 app/views/register/success.html
badd +53 app/views/gallery/paging.html
badd +3 app/views/gallery/gallery.html
badd +13 app/views/editor/left_side.html
badd +1 app/views/editor/editor.html
badd +1 app/views/editor/right_side.html
badd +1 app/views/default_layout.html
badd +1 app/views/msg.html
badd +1 app/script/php/login.php
badd +48 app/models/user.php
badd +1 app/views/login/forgotten_password.html
badd +7 app/views/login/reset_password.html
badd +37 app/script/php/mail.php
badd +24 app/views/gallery/focus.html
badd +54 app/assets/css/focus.css
badd +9 app/script/php/like_bar.php
badd +1 app/controllers/media.php
badd +47 app/models/likes.php
badd +1 app/controllers/settings.php
badd +1 app/views/settings.html
badd +1 app/assets/css/settings.css
badd +4 app/views/gallery/user.html
badd +1 app/controllers/like.php
badd +1 app/controllers/comment.php
badd +1 app/assets/css/paging.css
badd +1 app/views/prompter.html
badd +1 app/views/gallery/focus_right.php
badd +5 config/camagru.sql
badd +1 config/camagru1.sql
badd +1 app/models
badd +1 app/models/comments.php
badd +1 app/controllers
badd +1 app/entity/email.php
badd +1 app/entity/user.php
badd +0 app/models/settings.php
argglobal
silent! argdel *
argadd index.php
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 5 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
exe '7resize ' . ((&lines * 44 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 138 + 181) / 362)
exe '8resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 138 + 181) / 362)
exe '9resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 138 + 181) / 362)
exe '10resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 138 + 181) / 362)
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
let s:l = 4 - ((3 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 029|
wincmd w
argglobal
edit config/config.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((7 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
wincmd w
argglobal
edit core/TOOL.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 39 - ((12 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 011|
wincmd w
argglobal
edit config/setup.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
edit .htaccess
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
wincmd w
argglobal
edit core/route.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
argglobal
edit index.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
edit core/model.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((6 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
argglobal
edit core/loader.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((9 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 028|
wincmd w
argglobal
edit core/controller.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 142 - ((8 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
142
normal! 015|
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 5 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 16 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 138 + 181) / 362)
exe '6resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 138 + 181) / 362)
exe '7resize ' . ((&lines * 44 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 138 + 181) / 362)
exe '8resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 138 + 181) / 362)
exe '9resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 138 + 181) / 362)
exe '10resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 138 + 181) / 362)
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
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 49 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
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
let s:l = 31 - ((29 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 031|
wincmd w
argglobal
edit app/controllers/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((18 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 021|
wincmd w
argglobal
edit app/controllers/register.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((8 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
argglobal
edit app/controllers/logout.php
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
normal! 05|
wincmd w
argglobal
edit app/controllers/home.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((12 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
edit app/controllers/gallery.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 51 - ((22 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 0
wincmd w
argglobal
edit app/controllers/editor.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((14 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 033|
wincmd w
argglobal
edit app/controllers/settings.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 49 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
tabedit app/controllers/media.php
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
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 121 + 181) / 362)
exe '4resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 121 + 181) / 362)
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
let s:l = 2 - ((1 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/like.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((21 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/comment.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((15 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 026|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/mail.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 54 - ((32 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 044|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 181) / 362)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe '3resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 121 + 181) / 362)
exe '4resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 121 + 181) / 362)
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
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
let s:l = 1 - ((0 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/register.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/likes.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((14 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/user.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/media.php
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
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/comments.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/likes.php
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
normal! 017|
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
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
wincmd _ | wincmd |
split
5wincmd k
wincmd w
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
exe '4resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 120 + 181) / 362)
exe '5resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 120 + 181) / 362)
exe '6resize ' . ((&lines * 4 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 120 + 181) / 362)
exe '7resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 120 + 181) / 362)
exe '8resize ' . ((&lines * 4 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 120 + 181) / 362)
exe '9resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 120 + 181) / 362)
exe '10resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 120 + 181) / 362)
exe '11resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 120 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 120 + 181) / 362)
exe '13resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 120 + 181) / 362)
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
let s:l = 6 - ((5 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/404.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/msg.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/default_layout.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 36 - ((14 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/header.html
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
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/login/to_log.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/login/user_loggued.html
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
normal! 013|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/home.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 2) / 4)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/prompter.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 6) / 13)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/footer.html
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
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 110 - ((18 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
110
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/input.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 92 - ((20 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
92
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/glyphicons.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 120 + 181) / 362)
exe '2resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 120 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 120 + 181) / 362)
exe '4resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 120 + 181) / 362)
exe '5resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 120 + 181) / 362)
exe '6resize ' . ((&lines * 4 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 120 + 181) / 362)
exe '7resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 120 + 181) / 362)
exe '8resize ' . ((&lines * 4 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 120 + 181) / 362)
exe '9resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 120 + 181) / 362)
exe '10resize ' . ((&lines * 10 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 120 + 181) / 362)
exe '11resize ' . ((&lines * 26 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 120 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 120 + 181) / 362)
exe '13resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 120 + 181) / 362)
tabedit ~/cursus/camagru/app/script/js/lunch.js
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 11 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 60 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 98 + 181) / 362)
exe '6resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 98 + 181) / 362)
exe '7resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 57 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 84 + 181) / 362)
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
let s:l = 1 - ((0 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 023|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/init.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((16 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/core/controller.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 77 - ((8 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 015|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/send_picture.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 47 - ((43 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 013|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/webcam.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 95 - ((38 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
95
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/prompter.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/editor.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((9 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 041|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/media.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 67 - ((15 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 046|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 11 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 4resize ' . ((&columns * 93 + 181) / 362)
exe '5resize ' . ((&lines * 60 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 98 + 181) / 362)
exe '6resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 98 + 181) / 362)
exe '7resize ' . ((&lines * 18 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 84 + 181) / 362)
exe '8resize ' . ((&lines * 57 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 84 + 181) / 362)
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 45 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 54 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
exe '9resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
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
let s:l = 8 - ((7 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/register.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 49 - ((44 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 030|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/mail.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/register/register.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((16 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/register/success.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 010|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 330 - ((12 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
330
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/input.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 67 - ((12 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/register.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 23 - ((15 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 45 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 30 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 54 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 93 + 181) / 362)
exe '6resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 93 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 91 + 181) / 362)
exe '8resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
exe '9resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
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
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 6 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 9 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 92 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
exe '9resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 84 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 84 + 181) / 362)
exe '13resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 84 + 181) / 362)
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
let s:l = 35 - ((13 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 046|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((2 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/user.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((4 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/settings.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((9 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 031|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/logout.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 021|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((17 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 028|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/mail.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/login/login.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/login/forgotten_password.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 022|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/login/reset_password.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((8 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
let s:c = 57 - ((52 * winwidth(0) + 45) / 91)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 57 . '|'
else
  normal! 057|
endif
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 69 - ((12 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
69
normal! 07|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/input.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((9 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/login.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 20 - ((11 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 021|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 92 + 181) / 362)
exe '2resize ' . ((&lines * 6 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 92 + 181) / 362)
exe '3resize ' . ((&lines * 9 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 92 + 181) / 362)
exe '4resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 92 + 181) / 362)
exe '5resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 92 + 181) / 362)
exe '6resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 92 + 181) / 362)
exe '7resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 92 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 91 + 181) / 362)
exe '9resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 84 + 181) / 362)
exe '12resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 84 + 181) / 362)
exe '13resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 13resize ' . ((&columns * 84 + 181) / 362)
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
wincmd _ | wincmd |
split
3wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 43 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 91 + 181) / 362)
exe '2resize ' . ((&lines * 32 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 3 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 91 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 86 + 181) / 362)
exe '8resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 86 + 181) / 362)
exe '9resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
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
let s:l = 48 - ((19 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 058|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/media.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 103 - ((18 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
103
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/gallery/gallery.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((13 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/gallery/focus.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 1) / 3)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/gallery/focus_right.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 024|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/gallery/user.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/like_bar.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((20 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/gallery/paging.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 018|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 87 - ((7 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
87
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/focus.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((8 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/gallery.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 44 - ((13 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 017|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/paging.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 37 - ((12 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
37
normal! 0
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 43 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 91 + 181) / 362)
exe '2resize ' . ((&lines * 32 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 91 + 181) / 362)
exe '3resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 91 + 181) / 362)
exe '4resize ' . ((&lines * 3 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 91 + 181) / 362)
exe '5resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 91 + 181) / 362)
exe '6resize ' . ((&lines * 24 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 91 + 181) / 362)
exe '7resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 86 + 181) / 362)
exe '8resize ' . ((&lines * 37 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 86 + 181) / 362)
exe '9resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 91 + 181) / 362)
exe '10resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 91 + 181) / 362)
exe '11resize ' . ((&lines * 22 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 91 + 181) / 362)
exe '12resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 91 + 181) / 362)
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 2 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 96 + 181) / 362)
exe '8resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 96 + 181) / 362)
exe '9resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 96 + 181) / 362)
exe '10resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 95 + 181) / 362)
exe '11resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 95 + 181) / 362)
exe '12resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 95 + 181) / 362)
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
let s:l = 29 - ((27 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/media.php
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
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/send_picture.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((31 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 042|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/webcam.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 77 - ((8 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
77
normal! 09|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/init.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((11 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/js/lunch.js
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
edit ~/cursus/camagru/app/views/editor/left_side.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/editor/editor.html
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
edit ~/cursus/camagru/app/views/editor/right_side.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((14 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 18 - ((14 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 05|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/input.css
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
edit ~/cursus/camagru/app/assets/css/editor.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 128 - ((16 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
128
normal! 017|
lcd ~/cursus/camagru
wincmd w
exe '1resize ' . ((&lines * 36 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 39 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 17 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe '6resize ' . ((&lines * 2 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 84 + 181) / 362)
exe '7resize ' . ((&lines * 28 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 96 + 181) / 362)
exe '8resize ' . ((&lines * 19 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 96 + 181) / 362)
exe '9resize ' . ((&lines * 27 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 96 + 181) / 362)
exe '10resize ' . ((&lines * 23 + 40) / 80)
exe 'vert 10resize ' . ((&columns * 95 + 181) / 362)
exe '11resize ' . ((&lines * 13 + 40) / 80)
exe 'vert 11resize ' . ((&columns * 95 + 181) / 362)
exe '12resize ' . ((&lines * 38 + 40) / 80)
exe 'vert 12resize ' . ((&columns * 95 + 181) / 362)
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
wincmd _ | wincmd |
split
2wincmd k
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
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 6resize ' . ((&columns * 85 + 181) / 362)
exe '7resize ' . ((&lines * 34 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 106 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 106 + 181) / 362)
exe '9resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 106 + 181) / 362)
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
let s:l = 50 - ((15 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/views/msg.html
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
edit ~/cursus/camagru/app/script/php/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((12 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 015|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/script/php/login.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((11 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/user.php
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
edit ~/cursus/camagru/app/views/settings.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 28 - ((26 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 019|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 122 - ((20 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
122
normal! 026|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/input.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((17 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/assets/css/settings.css
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
exe '1resize ' . ((&lines * 42 + 40) / 80)
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 84 + 181) / 362)
exe '3resize ' . ((&lines * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 21 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 84 + 181) / 362)
exe '5resize ' . ((&lines * 33 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 84 + 181) / 362)
exe 'vert 6resize ' . ((&columns * 85 + 181) / 362)
exe '7resize ' . ((&lines * 34 + 40) / 80)
exe 'vert 7resize ' . ((&columns * 106 + 181) / 362)
exe '8resize ' . ((&lines * 25 + 40) / 80)
exe 'vert 8resize ' . ((&columns * 106 + 181) / 362)
exe '9resize ' . ((&lines * 15 + 40) / 80)
exe 'vert 9resize ' . ((&columns * 106 + 181) / 362)
tabedit ~/cursus/camagru/core/loader.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 138 + 181) / 362)
exe '3resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 53 + 181) / 362)
exe '5resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 89 + 181) / 362)
exe '6resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 187 + 181) / 362)
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
let s:l = 17 - ((16 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/entity/email.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 49 - ((25 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 047|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/entity/user.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/models/user.php
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
normal! 016|
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/like.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 26 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd ~/cursus/camagru
wincmd w
argglobal
edit ~/cursus/camagru/app/controllers/register.php
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 24 - ((8 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
lcd ~/cursus/camagru
wincmd w
exe 'vert 1resize ' . ((&columns * 84 + 181) / 362)
exe '2resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 138 + 181) / 362)
exe '3resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 84 + 181) / 362)
exe '4resize ' . ((&lines * 40 + 40) / 80)
exe 'vert 4resize ' . ((&columns * 53 + 181) / 362)
exe '5resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 5resize ' . ((&columns * 89 + 181) / 362)
exe '6resize ' . ((&lines * 35 + 40) / 80)
exe 'vert 6resize ' . ((&columns * 187 + 181) / 362)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=84 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
