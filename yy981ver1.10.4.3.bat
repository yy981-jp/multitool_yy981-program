:start
@echo off
title yy981_startup
set yy981ver=1.10.4.3
set yy981_debug=0

set yy981_startup=1
if %yy981_debug%==1 set /p yy981ver=<c:\scs\yy981\ver.yy981
set yy981_kd=%systemdrive%\yy981
set yy981_d=%yy981_kd%\ver%yy981ver%
set yy981_temp=%yy981_d%\temp
set yy981_na=call %yy981_temp%\na.bat 
if exist %yy981_kd%\yy981_system-path.yy981 set /p yy981_d_back=<%yy981_kd%\yy981_system-path.yy981
set pf=1
rem if exist %yy981_d%\profile\z\setting\pf.yy981 echo 1 >%yy981_d%\profile\z\setting\pf.yy981
if not exist %yy981_d%\profile\z\setting\pf.yy981 set pf=1
if exist %yy981_d%\profile\z\setting\pf.yy981 set /p pf=<%yy981_d%\profile\z\setting\pf.yy981
set pf=%pf:~0,1%
set yy981_title=yy981(ver%yy981ver%)
set exit=0

set initial=0
if not exist %yy981_kd%\yy981_system-path.yy981 set initial=1
if exist %yy981_kd%\yy981_system-path.yy981 set /p yy981_d_back=<%yy981_kd%\yy981_system-path.yy981

title STARTUP#%yy981_title%

set syn-exe_ex=0
set syn-exe_choice=0
if "%~x0"==".bat" set syn-exe_ex=1&tasklist /fi "windowtitle eq %yy981_title%*" | find "cmd.exe" >nul
if "%~x0"==".exe" set syn-exe_ex=1&tasklist /fi "windowtitle eq %yy981_title%*" | find "yy981ver%yy981ver%.exe" >nul

if %errorlevel%==0 (
msg %username% /time 100000000000000000000 /w yy981-programが起動中です^

エラーの発生を防止するために、同時起動はできません
set syn-exe_choice=1
)

if %syn-exe_choice%==1 choice /c 12 /m "1.終了 2.%yy981_title%から始まるウィンドウを終了"
if %syn-exe_choice%==1 if %errorlevel%==1 type nul >%yy981_temp%\exit&exit
if %syn-exe_choice%==1 if %errorlevel%==2 taskkill /fi "windowtitle eq %yy981_title%*"&goto start

if %syn-exe_ex%==0 (
msg %username% /time 100000000000000000000 /w [error]^^

ファイル名拡張子が読み込めないか.exeではありません^^

yy981-program_ショートカット から起動してください^^

(設定を変更していない場合、デスクトップにあります)
exit
)

if %yy981_debug%==1 if not exist c:\scs\yy981\ver.yy981 if not exist %yy981_d%\ (
mkdir %yy981_d%\
echo move %0 %yy981_d%\yy981ver%yy981ver%.exe ^>nul ^& timeout /t 3 ^>nul ^& call "%yy981_d%\yy981ver%yy981ver%.exe">%temp%\_.bat
call "%temp%\_.bat"
)
if %yy981_debug%==0 if not exist %yy981_d%\ (
mkdir %yy981_d%\
echo move %0 %yy981_d%\yy981ver%yy981ver%.exe ^>nul ^& timeout /t 3 ^>nul ^& call "%yy981_d%\yy981ver%yy981ver%.exe">%temp%\_.bat
call "%temp%\_.bat"
)
if not exist %yy981_d%\ mkdir %yy981_d%\
goto yy981_start
000000000000000000000000000000000000000000000000000000000000000000000



/////////////////////////////////////////////////////////////////////
*********************************************************************
:cmddsk0
if %cmd%==0 if %cmd_u_b%==0 goto pfs
title %yy981_title%{%yy981_title-p%}^|ホーム
echo ^<ホーム^>
echo 1. コマンドデスクトップ1(pcシステム and yy981-programシステム)
echo 2. コマンドデスクトップ2(アプリ)
echo 3. コマンドデスクトップ3(ツール-1[bat])
echo 4. コマンドデスクトップ4(ツール-2[bat])
echo 5. コマンドデスクトップ5(ゲーム-1[bat])
echo 6. コマンドデスクトップ6(ゲーム-2[bat])
echo 7. コマンドデスクトップ7(余白)
echo 8. コマンドデスクトップ8(ユーザー指定-1)
echo 9. コマンドデスクトップ9(ユーザー指定-2)

echo ------------------------

echo D. デバック

echo L. ロック

echo B. ブランク

echo P. プロファイル選択

echo R. 再読み込み

choice /c 123456789DLBPR
if %errorlevel%==1 set cmd=1&goto home
if %errorlevel%==2 set cmd=2&goto home
if %errorlevel%==3 set cmd=3&goto home
if %errorlevel%==4 set cmd=4&goto home
if %errorlevel%==5 set cmd=5&goto home
if %errorlevel%==6 set cmd=6&goto home
if %errorlevel%==7 set cmd=7&goto home
if %errorlevel%==8 set cmd=8&goto home
if %errorlevel%==9 set cmd=9&goto home
if %errorlevel%==10 goto debug
if %errorlevel%==11 goto lock
if %errorlevel%==12 goto blank
if %errorlevel%==13 set cmd=p&goto home
if %errorlevel%==14 set cmd=0&goto home
if %errorlevel%==15 echo オプションにないものを選択しないでください
if %errorlevel%==16 echo オプションにないものを選択しないでください
if %errorlevel%==17 echo オプションにないものを選択しないでください
if %errorlevel%==18 echo オプションにないものを選択しないでください
if %errorlevel%==19 echo オプションにないものを選択しないでください
if %errorlevel%==20 echo オプションにないものを選択しないでください
if %errorlevel%==21 echo オプションにないものを選択しないでください
if %errorlevel%==22 echo オプションにないものを選択しないでください
if %errorlevel%==23 echo オプションにないものを選択しないでください
if %errorlevel%==24 echo オプションにないものを選択しないでください
if %errorlevel%==25 echo オプションにないものを選択しないでください
if %errorlevel%==26 echo オプションにないものを選択しないでください
if %errorlevel%==27 echo オプションにないものを選択しないでください
if %errorlevel%==28 echo オプションにないものを選択しないでください
if %errorlevel%==29 echo オプションにないものを選択しないでください
if %errorlevel%==30 echo オプションにないものを選択しないでください
if %errorlevel%==31 echo オプションにないものを選択しないでください
if %errorlevel%==32 echo オプションにないものを選択しないでください
if %errorlevel%==33 echo オプションにないものを選択しないでください
if %errorlevel%==34 echo オプションにないものを選択しないでください
if %errorlevel%==35 echo オプションにないものを選択しないでください
if %errorlevel%==36 echo オプションにないものを選択しないでください




echo エラー
goto home

*********************************************************************
:file_y
if not %yy981_y%==1 goto file_y_exit

:file_y_r2

set /a file_y_r=%file_y_r%+1

rem --------------------
rem 書き込み
rem --------------------

rem yy981-system_path
if not exist %yy981_d%\soft\path.yy981 echo %0>%yy981_d%\soft\path.yy981

rem --------------------
rem 書き込み&読み込み
rem --------------------

rem color
if not exist %yy981_d%\profile\%pf%\setting\color.yy981 echo 03 >%yy981_d%\profile\%pf%\setting\color.yy981
set /p color=<%yy981_d%\profile\%pf%\setting\color.yy981
color %color%

rem cmd_新分岐
if not exist %yy981_d%\profile\%pf%\setting\cmd_u_b.yy981 echo 1 >%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981
set /p cmd_u_b=<%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981

rem user_d
if not exist %yy981_d%\profile\%pf%\setting\user_d.yy981 echo %systemdrive%\users\%username%\desktop>%yy981_d%\profile\%pf%\setting\user_d.yy981
set /p user_d=<%yy981_d%\profile\%pf%\setting\user_d.yy981

@rem psss
@if not exist %yy981_d%\profile\%pf%\setting\pass.yy981 echo 0013256729123451601601601601602468002468>%yy981_d%\profile\%pf%\setting\pass.yy981
@set /p ps=<%yy981_d%\profile\%pf%\setting\pass.yy981

rem yy981_spath
if not exist %yy981_d%\profile\%pf%\setting\yy981_spath.yy981 echo blank >%yy981_d%\profile\%pf%\setting\yy981_spath.yy981
set /p yy981_spath=<%yy981_d%\profile\%pf%\setting\yy981_spath.yy981

rem -------------------------

rem lock
if %yy981_y%==1 if not exist %yy981_d%\profile\z\setting\lock.yy981 echo 0 >%yy981_d%profile\z\setting\lock.yy981
set /p lock=<%yy981_d%\profile\z\setting\lock.yy981

rem #############################################

if %file_y_r%==1 goto file_y_r2

set file_y_r=0
if %cmd%==8 goto file_y_b
if %cmd%==9 goto file_y_b
if %file_y_b%==1 set file_y_b=0&goto file_y_b

:file_y_exit

cd %systemdrive%\

goto %return_point%_fs


echo エラーが発生しました
goto home
*********************************************************************
:file_y_b


set /p #yy981_user-setting_8_t_a.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_a.yy981
set /p #yy981_user-setting_8_t_b.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_b.yy981
set /p #yy981_user-setting_8_t_c.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_c.yy981
set /p #yy981_user-setting_8_t_d.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_d.yy981
set /p #yy981_user-setting_8_t_e.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_e.yy981
set /p #yy981_user-setting_8_t_f.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_f.yy981
set /p #yy981_user-setting_8_t_g.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_g.yy981
set /p #yy981_user-setting_8_t_h.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_h.yy981
set /p #yy981_user-setting_8_t_i.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_i.yy981
set /p #yy981_user-setting_8_t_j.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_j.yy981
set /p #yy981_user-setting_8_t_k.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_k.yy981
set /p #yy981_user-setting_8_t_l.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_l.yy981
set /p #yy981_user-setting_8_t_m.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_m.yy981
set /p #yy981_user-setting_8_t_n.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_n.yy981
set /p #yy981_user-setting_8_t_o.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_o.yy981
set /p #yy981_user-setting_8_t_p.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_p.yy981
set /p #yy981_user-setting_8_t_q.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_q.yy981
set /p #yy981_user-setting_8_t_r.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_r.yy981
set /p #yy981_user-setting_8_t_s.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_s.yy981
set /p #yy981_user-setting_8_t_t.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_t.yy981
set /p #yy981_user-setting_8_t_u.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_u.yy981
set /p #yy981_user-setting_8_t_v.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_v.yy981
set /p #yy981_user-setting_8_t_w.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_w.yy981
set /p #yy981_user-setting_8_t_x.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_x.yy981
set /p #yy981_user-setting_8_t_y.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_y.yy981
set /p #yy981_user-setting_8_t_z.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_t_z.yy981
rem =============================================
rem 内容
set /p #yy981_user-setting_8_n_a.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_a.yy981
set /p #yy981_user-setting_8_n_b.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_b.yy981
set /p #yy981_user-setting_8_n_c.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_c.yy981
set /p #yy981_user-setting_8_n_d.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_d.yy981
set /p #yy981_user-setting_8_n_e.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_e.yy981
set /p #yy981_user-setting_8_n_f.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_f.yy981
set /p #yy981_user-setting_8_n_g.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_g.yy981
set /p #yy981_user-setting_8_n_h.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_h.yy981
set /p #yy981_user-setting_8_n_i.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_i.yy981
set /p #yy981_user-setting_8_n_j.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_j.yy981
set /p #yy981_user-setting_8_n_k.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_k.yy981
set /p #yy981_user-setting_8_n_l.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_l.yy981
set /p #yy981_user-setting_8_n_m.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_m.yy981
set /p #yy981_user-setting_8_n_n.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_n.yy981
set /p #yy981_user-setting_8_n_o.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_o.yy981
set /p #yy981_user-setting_8_n_p.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_p.yy981
set /p #yy981_user-setting_8_n_q.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_q.yy981
set /p #yy981_user-setting_8_n_r.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_r.yy981
set /p #yy981_user-setting_8_n_s.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_s.yy981
set /p #yy981_user-setting_8_n_t.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_t.yy981
set /p #yy981_user-setting_8_n_u.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_u.yy981
set /p #yy981_user-setting_8_n_v.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_v.yy981
set /p #yy981_user-setting_8_n_w.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_w.yy981
set /p #yy981_user-setting_8_n_x.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_x.yy981
set /p #yy981_user-setting_8_n_y.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_y.yy981
set /p #yy981_user-setting_8_n_z.yy981=<%yy981_d%\profile\%pf%\cmddsk\8_n_z.yy981
rem =============================================
rem =============================================
rem =============================================
set /p #yy981_user-setting_9_t_a.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_a.yy981
set /p #yy981_user-setting_9_t_b.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_b.yy981
set /p #yy981_user-setting_9_t_c.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_c.yy981
set /p #yy981_user-setting_9_t_d.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_d.yy981
set /p #yy981_user-setting_9_t_e.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_e.yy981
set /p #yy981_user-setting_9_t_f.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_f.yy981
set /p #yy981_user-setting_9_t_g.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_g.yy981
set /p #yy981_user-setting_9_t_h.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_h.yy981
set /p #yy981_user-setting_9_t_i.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_i.yy981
set /p #yy981_user-setting_9_t_j.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_j.yy981
set /p #yy981_user-setting_9_t_k.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_k.yy981
set /p #yy981_user-setting_9_t_l.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_l.yy981
set /p #yy981_user-setting_9_t_m.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_m.yy981
set /p #yy981_user-setting_9_t_n.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_n.yy981
set /p #yy981_user-setting_9_t_o.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_o.yy981
set /p #yy981_user-setting_9_t_p.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_p.yy981
set /p #yy981_user-setting_9_t_q.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_q.yy981
set /p #yy981_user-setting_9_t_r.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_r.yy981
set /p #yy981_user-setting_9_t_s.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_s.yy981
set /p #yy981_user-setting_9_t_t.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_t.yy981
set /p #yy981_user-setting_9_t_u.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_u.yy981
set /p #yy981_user-setting_9_t_v.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_v.yy981
set /p #yy981_user-setting_9_t_w.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_w.yy981
set /p #yy981_user-setting_9_t_x.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_x.yy981
set /p #yy981_user-setting_9_t_y.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_y.yy981
set /p #yy981_user-setting_9_t_z.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_t_z.yy981
rem ==============================================
rem 内容
set /p #yy981_user-setting_9_n_a.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_a.yy981
set /p #yy981_user-setting_9_n_b.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_b.yy981
set /p #yy981_user-setting_9_n_c.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_c.yy981
set /p #yy981_user-setting_9_n_d.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_d.yy981
set /p #yy981_user-setting_9_n_e.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_e.yy981
set /p #yy981_user-setting_9_n_f.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_f.yy981
set /p #yy981_user-setting_9_n_g.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_g.yy981
set /p #yy981_user-setting_9_n_h.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_h.yy981
set /p #yy981_user-setting_9_n_i.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_i.yy981
set /p #yy981_user-setting_9_n_j.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_j.yy981
set /p #yy981_user-setting_9_n_k.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_k.yy981
set /p #yy981_user-setting_9_n_l.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_l.yy981
set /p #yy981_user-setting_9_n_m.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_m.yy981
set /p #yy981_user-setting_9_n_n.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_n.yy981
set /p #yy981_user-setting_9_n_o.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_o.yy981
set /p #yy981_user-setting_9_n_p.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_p.yy981
set /p #yy981_user-setting_9_n_q.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_q.yy981
set /p #yy981_user-setting_9_n_r.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_r.yy981
set /p #yy981_user-setting_9_n_s.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_s.yy981
set /p #yy981_user-setting_9_n_t.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_t.yy981
set /p #yy981_user-setting_9_n_u.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_u.yy981
set /p #yy981_user-setting_9_n_v.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_v.yy981
set /p #yy981_user-setting_9_n_w.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_w.yy981
set /p #yy981_user-setting_9_n_x.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_x.yy981
set /p #yy981_user-setting_9_n_y.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_y.yy981
set /p #yy981_user-setting_9_n_z.yy981=<%yy981_d%\profile\%pf%\cmddsk\9_n_z.yy981

rem -------------------------

if not exist %yy981_d%\profile\1\setting\name.yy981 echo プロファイル1 >%yy981_d%\profile\1\setting\name.yy981
set /p pfname1=<%yy981_d%\profile\1\setting\name.yy981
if not exist %yy981_d%\profile\2\setting\name.yy981 echo プロファイル2 >%yy981_d%\profile\2\setting\name.yy981
set /p pfname2=<%yy981_d%\profile\2\setting\name.yy981
if not exist %yy981_d%\profile\3\setting\name.yy981 echo プロファイル3 >%yy981_d%\profile\3\setting\name.yy981
set /p pfname3=<%yy981_d%\profile\3\setting\name.yy981
if not exist %yy981_d%\profile\4\setting\name.yy981 echo プロファイル4 >%yy981_d%\profile\4\setting\name.yy981
set /p pfname4=<%yy981_d%\profile\4\setting\name.yy981
if not exist %yy981_d%\profile\5\setting\name.yy981 echo プロファイル5 >%yy981_d%\profile\5\setting\name.yy981
set /p pfname5=<%yy981_d%\profile\5\setting\name.yy981
if not exist %yy981_d%\profile\6\setting\name.yy981 echo プロファイル6 >%yy981_d%\profile\6\setting\name.yy981
set /p pfname6=<%yy981_d%\profile\6\setting\name.yy981
if not exist %yy981_d%\profile\7\setting\name.yy981 echo プロファイル7 >%yy981_d%\profile\7\setting\name.yy981
set /p pfname7=<%yy981_d%\profile\7\setting\name.yy981
if not exist %yy981_d%\profile\8\setting\name.yy981 echo プロファイル8 >%yy981_d%\profile\8\setting\name.yy981
set /p pfname8=<%yy981_d%\profile\8\setting\name.yy981
if not exist %yy981_d%\profile\9\setting\name.yy981 echo プロファイル9 >%yy981_d%\profile\9\setting\name.yy981
set /p pfname9=<%yy981_d%\profile\9\setting\name.yy981


goto file_y_exit
*********************************************************************
:1~7
echo.
echo.

if %cmd%==1 set sm=pcシステム and yy981-programシステム
if %cmd%==2 set sm=アプリ
if %cmd%==3 set sm=ツール-1[bat]
if %cmd%==4 set sm=ツール-2[bat]
if %cmd%==5 set sm=ゲーム-1[bat]
if %cmd%==6 set sm=ゲーム-2[bat]
if %cmd%==7 set sm=余白
if %cmd%==8 set sm=ユーザー指定-1
if %cmd%==9 set sm=ユーザー指定-2

set /p yy981_b-system_1_t=<%yy981_d%\profile\%pf%\setting\name.yy981
set yy981path=@%cmd%%alf%
set sn=yy981(ver%yy981ver%){%yy981_b-system_1_t:~-100,-1%}   [%yy981path%]

goto @%cmd%%alf%


echo エラーが発生しました
goto home

:8~9
echo.
echo.

if %cmd%==1 set sm=pcシステム and yy981-programシステム
if %cmd%==2 set sm=アプリ
if %cmd%==3 set sm=ツール-1[bat]
if %cmd%==4 set sm=ツール-2[bat]
if %cmd%==5 set sm=ゲーム-1[bat]
if %cmd%==6 set sm=ゲーム-2[bat]
if %cmd%==7 set sm=余白
if %cmd%==8 set sm=ユーザー指定-1
if %cmd%==9 set sm=ユーザー指定-2

set /p yy981_b-system_2_t_1=<%yy981_d%\profile\%pf%\setting\name.yy981
set /p yy981_b-system_2_t_2=<%yy981_d%\profile\%pf%\cmddsk\%cmd%_t_%alf%.yy981
set /p yy981_b-system_2_n=<%yy981_d%\profile\%pf%\cmddsk\%cmd%_n_%alf%.yy981
set yy981path=%pf%%cmd%%alf%
set sn=yy981(ver%yy981ver%){%yy981_b-system_2_t_1:~-100,-1%}   [%yy981path%]

title %sn%(%yy981_b-system_2_t_2%)


%yy981_b-system_2_n%


echo 何かキーを押すとホームに戻ります
pause>nul
goto home
*********************************************************************
:lock


choice /t 3 /d y /n /m yy981をロックしますか?
if %errorlevel%==2 goto home

:lock_r

echo 1 >%yy981_d%\profile\z\setting\lock.yy981
title %yy981_title%^|ロック中

set return_point=lock
goto file_y
:lock_fs
cls
set lock=1

@set msg_in=%ps%
set return_point=lock
set msg_mode=2
goto msg
:lock_ms
@set ps=%msg_out%

set psn=""
set /p psn=パスワードを入力してください(何も設定していない場合は 00000 です)

if %ps%==%psn% (
cls
set psn=""
echo ロックを解除しました
echo 0 >%yy981_d%\profile\z\setting\lock.yy981
if %yy981_startup%==1 goto yy981_start
set startup_home=1
goto home
)

echo パスワードもしくは、プロファイルが間違っています
timeout /t 3 /nobreak>nul
goto lock_r


*********************************************************************
:debug
title %yy981_title%^|デバック
set yy981_cmd=rem nul
set /p yy981_cmd="cmd>"

%yy981_cmd%

goto home
*********************************************************************
:ex

cd %systemdrive%\users\%username%\documents\

set ex_mode=2
set ex_type-f4=0
set ex_type-r=+r
set ex_type-h=+h
set ex_type-a=+a
set ex_type-s=-s
set ex_n_m_s_s=0
set ex_return-point=nul
goto ex_type-s

echo ^&が含まれるファイルやフォルダは使用できません
:ex_start

echo.
echo.

if %ex_return-point%==file_4 echo [移動先のフォルダーにあるファイルを選択]
if %ex_return-point%==file_1 echo [ファイル選択]

echo 上のほうにフォルダ　下のほうにファイルが表示されます

echo [操作方法]

echo フォルダ名         そのフォルダに移動

echo ファイル名         そのファイルを編集等

echo y9/reload          再読み込み

echo y9/cmd             デバック用

echo y9/back            上のフォルダに移動

echo y9/uback           ユーザーのフォルダに移動

echo y9/xback           最上のフォルダに移動

echo y9/type            表示内容の選択

echo y9/exit

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo dir /b /a:d%ex_type% ^| find /c /v ""^>%yy981_temp%\ex_1.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat
echo dir /b /a:-d%ex_type% ^| find /c /v ""^>%yy981_temp%\ex_2.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat

set /p ex_1=<%yy981_temp%\ex_1.yy981
set /p ex_2=<%yy981_temp%\ex_2.yy981
set /a ex_3=%ex_1%+%ex_2%+1
set /a ex_4=%ex_3%-1
set /a ex_5=%ex_1%+1
set /a ex_6=%ex_3%+1
cd>%yy981_temp%\cd.yy981 & set /p ex_path_d_m=<%yy981_temp%\cd.yy981
set ex_path_d=^"%ex_path_d_m%\^"
set ex_path_d_e=%ex_path_d_m%\
if %ex_path_d%=="%systemdrive%\\" set ex_path_d_e=%ex_path_d_e:~0,3%

echo [%ex_path_d_e% ^| D=%ex_1%,F=%ex_2%,ALL=%ex_4% ^| O=(%ex_type%)]

type nul >%yy981_temp%\ex_dir.yy981
echo dir /b /o /a:d%ex_type% ^>^>%yy981_temp%\ex_dir.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat
echo ^<=============================================^> >>%yy981_temp%\ex_dir.yy981
echo dir /b /o /a:-d%ex_type% ^>^>%yy981_temp%\ex_dir.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min %yy981_temp%\ex.bat

for /l %%a in (1,1,%ex_3%) do (
findstr /n /r "." %yy981_temp%\ex_dir.yy981 | findstr /r "^%%a:"
)



echo.

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:ex_n_m_s
rem (((数字入力)))

set ex_n_m_s=y9/reload
set /p ex_n_m_s=数字を入力(y9/backと入力すると1つ上に戻る):
set ex_n_m_s=%ex_n_m_s:^&=%

if %ex_n_m_s%==%ex_5%    echo これはフォルダとファイルを区切るものです&goto ex_start
if %ex_n_m_s%==y9/reload goto ex_start
if %ex_n_m_s%==y9/cmd    goto ex_cmd
if %ex_n_m_s%==y9/back   cd .. >nul & goto ex_start
if %ex_n_m_s%==y9/uback  cd %systemdrive%\users\%username%\ >nul & goto ex_start
if %ex_n_m_s%==y9/xback  cd %systemdrive%\ & goto ex_start
if %ex_n_m_s%==y9/type   goto ex_type-choice
if %ex_n_m_s%==y9/exit   set ex_no=1 goto ex_end
set ex_n_m_s=%ex_n_m_s: =%

findstr /n /r "." %yy981_temp%\ex_dir.yy981 | findstr /r "^%ex_n_m_s%:">%yy981_temp%\ex_dir_h.yy981
for /f "delims=" %%a in (%yy981_temp%\ex_dir_h.yy981) do set ex_dir_h=%%a

if %ex_n_m_s% geq %ex_6% echo エラー(ファイルorフォルダ名の左側に表示された数字を入力してください)&goto ex_n_m_s
if %ex_n_m_s% leq 0 echo エラー(1以上を入力してください)&goto ex_n_m_s
if %ex_n_m_s% leq 9 set ex_s=%ex_dir_h:~2%&goto ex_n_m_s_s
if %ex_n_m_s% leq 99 set ex_s=%ex_dir_h:~3%&goto ex_n_m_s_s
if %ex_n_m_s% leq 999 set ex_s=%ex_dir_h:~4%&goto ex_n_m_s_s
if %ex_n_m_s% leq 9999 set ex_s=%ex_dir_h:~5%&goto ex_n_m_s_s
if %ex_n_m_s% leq 99999 set ex_s=%ex_dir_h:~6%&goto ex_n_m_s_s
if %ex_n_m_s% geq 100000 echo エラー(数字以外もしくは100000以上には対応していません)&goto ex_n_m_s

echo エラー
goto ex_start

:ex_n_m_s_s
set ex_n=^"%ex_path_d_e%%ex_s%^"
set ex_n_e=%ex_path_d_e%%ex_s%
echo cd %ex_n% >%yy981_temp%\ex.bat
echo echo %%errorlevel%%_ ^>%yy981_temp%\ex_df.yy981 >>%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min %yy981_temp%\ex.bat
:ex_df_loop
if not exist %yy981_temp%\ex_df.yy981 goto ex_df_loop
set /p ex_df=<%yy981_temp%\ex_df.yy981
set ex_df=%ex_df:~0,1%
del %yy981_temp%\ex_df.yy981
if %ex_df%==1 (
if %ex_mode%==0 goto ex_file
if %ex_mode%==1 goto ex_mode1_exit
if %ex_mode%==2 goto ex_mode1_exit
echo エラー&goto ex_start
)
cd %ex_n% & goto ex_start

:ex_mode1_exit
choice /m このファイルを選択しますか?
if %errorlevel%==2 goto ex_start
if %ex_mode%==2 goto ex_end
set ex_mode=0
goto ex_%ex_return-point%_exit

rem cmd
:ex_cmd
set cmd=rem _
set /p cmd=cmd_
%cmd%

goto ex_start

:ex_file

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rem 処理部分
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,キャンセル

echo 1,実行

echo 2,コピー

echo 3,削除

echo 4,移動

echo 5,名前の変更

choice /c:012345
if %errorlevel%==1 goto ex_start
if %errorlevel%==2 goto ex_file_1
if %errorlevel%==3 goto ex_file_2
if %errorlevel%==4 goto ex_file_3
if %errorlevel%==5 goto ex_file_4
if %errorlevel%==6 goto ex_file_5





:ex_file_1

echo %ex_n_e%を実行しますか?(E=NOTEPADで開く C=ファイルを開くものを選択)

choice /c ynec
if %errorlevel%==1 start %ex_n% %ex_n% & goto ex_start
if %errorlevel%==2 echo %ex_n_e%の実行をキャンセルしました & goto ex_start
if %errorlevel%==3 (
start notepad %ex_n%
goto ex_start
)
set ex_mode1_n=%ex_n%
set ex_mode=1
set ex_return-point=file_1
goto ex_start

:ex_file_1_exit
start "%ex_n%" %ex_mode1_n%
echo %ex_n_e%を実行します

goto ex_start
:ex_file_2

echo %ex_n_e%をコピーしますか?

choice
if %errorlevel%==2 echo %ex_n%のコピーをキャンセルしました & goto ex_start

copy %ex_n% "y9 - %ex_s%" >nul
echo [%ex_n_e%]を["y9 - %ex_s%"]という名前でコピーしました

goto ex_start
:ex_file_3

echo %ex_n_e%を削除しますか?

choice
if %errorlevel%==2 echo %ex_n%の削除をキャンセルしました & goto ex_start
del %ex_n%
echo %ex_n_e%を削除しました
goto ex_start

:ex_file_4
echo %ex_n_e%を移動させますか?
set ex_file_4=^"%ex_n_e%^"

choice
if %errorlevel%==2 echo %ex_n_e%の移動をキャンセルしました & goto ex_start
set ex_mode=1
set ex_return-point=file_4
goto ex_start

:ex_file_4_exit

move %ex_file_4% ^"%ex_path_d_m%^" >nul
echo %ex_n_e%を%ex_mode1_path_d_m%に移動しました

goto ex_start
:ex_file_5
echo %ex_n_e%の名前を変更しますか?

choice
if %errorlevel%==2 echo %ex_n%の名前の変更をキャンセルしました & goto ex_start
set /p ex_file_5_name=%ex_n%変更後の名前を入力:

ren %ex_n% %ex_file_5_name%
echo %ex_n_e%を%ex_file_5_name%に変更しました

goto ex_start


:ex_type-choice
echo R 読取り専用ファイル   %ex_type-r%
echo H 隠しファイル         %ex_type-h%
echo A アーカイブファイル   %ex_type-a%
echo S システムファイル     %ex_type-s%
echo E 選択終了

choice /c rhase
if %errorlevel%==1 (
if %ex_type-r%==-r set ex_type-r=+r
if %ex_type-r%==+r set ex_type-r=-r
)
if %errorlevel%==2 (
if %ex_type-h%==-h set ex_type-h=+h
if %ex_type-h%==+h set ex_type-h=-h
)
if %errorlevel%==3 (
if %ex_type-a%==-a set ex_type-a=+a
if %ex_type-a%==+a set ex_type-a=-a
)
if %errorlevel%==4 (
if %ex_type-s%==-s set ex_type-s=+s
if %ex_type-s%==+s set ex_type-s=-s
)
if %errorlevel%==5 goto ex_type-s

goto ex_type-choice

:ex_type-s
set ex_type=%ex_type-r%%ex_type-h%%ex_type-a%%ex_type-s%
set ex_type=%ex_type:+r=%
set ex_type=%ex_type:+h=%
set ex_type=%ex_type:+a=%
set ex_type=%ex_type:+s=%
goto ex_start

:ex_end
cd %systemdrive%\
set ex_output=%ex_n%
set ex_fo-output=%ex_path_d_e%

goto %return_point%_es

echo エラーが発生しました
goto home
*********************************************************************
:blank
title %yy981_title%^|ブランク
choice /m 続行しますか?
if %errorlevel%==2 goto home
cls
pause >nul
set startup_home=1
goto home
*********************************************************************
@:msg
@rem msg_in msg_out msg_mode
@set msg_type=00
@set msg_1_in_m=nul
@set msg_2_in_m=0013256729123453143213122468002468
@set msg_1_in_m=%msg_in%
@set msg_2_in_m=%msg_in%
@if "%msg_mode%"=="1" goto msg_1_start
@if "%msg_mode%"=="2" goto msg_2_start
@
@echo error:msg_mode
@choice /c 12 /m msg_mode?
@set msg_mode=%errorlevel%
@goto msg
@
@rem 1,[1~半角記号      [50~半角数字
@
@rem 2,[1~全角記号      [50~全角数字
@
@rem 3,[1~半角アルファベット
@
@rem 4,[1~全角アルファベット
@
@rem 5,[1~カタカナ
@
@rem 6,[1~ひらがな
@
@
@:msg_1_start
@
@set /a msg_random1=%random%*10/32767
@set /a msg_random2=%random%*10/32767
@set /a msg_random4=%random%*10/32767
@set /a msg_random6=%random%*10/32767
@set /a msg_random7=%random%*10/32767
@set /a msg_random8=%random%*10/32767
@set /a msg_random10=%random%*10/32767
@set /a msg_random11=%random%*10/32767
@set /a msg_random12=%random%*10/32767
@set /a msg_random13=%random%*10/32767
@set /a msg_random14=%random%*10/32767
@set /a msg_random15=%random%*10/32767
@set /a msg_random16=%random%*10/32767
@set /a msg_random17=%random%*10/32767
@set /a msg_random18=%random%*10/32767
@set /a msg_random19=%random%*10/32767
@:msg_1_set_loop
@set msg_1_set_loop=0
@set /a msg_random3=%random%*9/32767+1
@set /a msg_random5=%random%*9/32767+1
@if %msg_random3%==3 set msg_1_set_loop=1
@if %msg_random3%==5 set msg_1_set_loop=1
@if %msg_random3%==7 set msg_1_set_loop=1
@if %msg_random3%==9 set msg_1_set_loop=1
@if %msg_random5%==3 set msg_1_set_loop=1
@if %msg_random5%==5 set msg_1_set_loop=1
@if %msg_random5%==7 set msg_1_set_loop=1
@if %msg_random5%==9 set msg_1_set_loop=1
@if %msg_random3%==%msg_random5% set msg_1_set_loop=1
@if %msg_1_set_loop%==1 goto msg_1_set_loop
@set msg_random%msg_random3%=%msg_type:~0,1%
@set msg_random%msg_random5%=%msg_type:~1,1%
@set /a msg_1_output_end_b=%random%*9/32767+1
@set msg_1_output=_%msg_random1%%msg_random2%%msg_random3%%msg_random4%%msg_random5%%msg_random6%%msg_random7%%msg_random8%%msg_1_output_end_b%%msg_random10%%msg_random11%%msg_random12%%msg_random13%%msg_random14%%msg_random15%
@set /a msg_1_output_end1=%msg_random11%*%msg_1_output_end_b%
@set /a msg_1_output_end2=%msg_random12%*%msg_1_output_end_b%
@set /a msg_1_output_end3=%msg_random13%*%msg_1_output_end_b%
@set /a msg_1_output_end4=%msg_random14%*%msg_1_output_end_b%
@set /a msg_1_output_end5=%msg_random15%*%msg_1_output_end_b%
@set msg_1_output_end1=%msg_1_output_end1:~-1,1%
@set msg_1_output_end2=%msg_1_output_end2:~-1,1%
@set msg_1_output_end3=%msg_1_output_end3:~-1,1%
@set msg_1_output_end4=%msg_1_output_end4:~-1,1%
@set msg_1_output_end5=%msg_1_output_end5:~-1,1%
@set msg_1_output_end=%msg_1_output_end1%%msg_1_output_end2%%msg_1_output_end3%%msg_1_output_end4%%msg_1_output_end5%%msg_random15%%msg_random16%%msg_random17%%msg_random18%%msg_random19%
@
@set msg_1_loop=0
@set msg_1_in_m=%msg_1_in_m%`
@
@rem 暗号化処理開始
@set msg_errorlevel=2
@:msg_1_restart
@set msg_1_in=^%msg_1_in_m:~0,1%
@set msg_1_in_m=%msg_1_in_m:~1,10000000000%
@if ^%msg_1_in%==^" set msg_1_out=102&goto msg_1_s
@if "%msg_1_in%"=="`" goto msg_1_exit
@
@set /a msg_random1=%random%*10/32767
@set /a msg_random2=%random%*10/32767
@set msg_1_out=%msg_random1%%msg_1_in%%msg_random2%
@
@if "^%msg_1_in%"=="^!" set msg_1_out=101
@rem "^%msg_1_in%"=="^"" set msg_1_out=102
@if "^%msg_1_in%"=="^#" set msg_1_out=103
@if "^%msg_1_in%"=="^$" set msg_1_out=104
@if "^%msg_1_in%"=="^%" set msg_1_out=105
@if "^%msg_1_in%"=="^&" set msg_1_out=106
@if "^%msg_1_in%"=="^'" set msg_1_out=107
@if "^%msg_1_in%"=="^(" set msg_1_out=108
@if "^%msg_1_in%"=="^)" set msg_1_out=109
@if "^%msg_1_in%"=="^=" set msg_1_out=110
@if "^%msg_1_in%"=="^~" set msg_1_out=111
@if "^%msg_1_in%"=="^|" set msg_1_out=112
@rem [実装不可]   
@if "^%msg_1_in%"=="^`" set msg_1_out=113
@if "^%msg_1_in%"=="^{" set msg_1_out=114
@if "^%msg_1_in%"=="^+" set msg_1_out=115
@if "^%msg_1_in%"=="^*" set msg_1_out=116
@if "^%msg_1_in%"=="^}" set msg_1_out=117
@if "^%msg_1_in%"=="^<" set msg_1_out=118
@if "^%msg_1_in%"=="^>" set msg_1_out=119
@if "^%msg_1_in%"=="^?" set msg_1_out=120
@if "^%msg_1_in%"=="^_" set msg_1_out=121
@if "^%msg_1_in%"=="^1" set msg_1_out=151
@if "^%msg_1_in%"=="^2" set msg_1_out=152
@if "^%msg_1_in%"=="^3" set msg_1_out=153
@if "^%msg_1_in%"=="^4" set msg_1_out=154
@if "^%msg_1_in%"=="^5" set msg_1_out=155
@if "^%msg_1_in%"=="^6" set msg_1_out=156
@if "^%msg_1_in%"=="^7" set msg_1_out=157
@if "^%msg_1_in%"=="^8" set msg_1_out=158
@if "^%msg_1_in%"=="^9" set msg_1_out=159
@if "^%msg_1_in%"=="^0" set msg_1_out=160
@if "^%msg_1_in%"=="^-" set msg_1_out=161
@rem [未実装]   
@if "^%msg_1_in%"=="^^" set msg_1_out=162
@if "^%msg_1_in%"=="^\" set msg_1_out=163
@if "^%msg_1_in%"=="^@" set msg_1_out=164
@if "^%msg_1_in%"=="^[" set msg_1_out=165
@if "^%msg_1_in%"=="^;" set msg_1_out=166
@if "^%msg_1_in%"=="^:" set msg_1_out=167
@if "^%msg_1_in%"=="^]" set msg_1_out=168
@if "^%msg_1_in%"=="^," set msg_1_out=169
@if "^%msg_1_in%"=="^." set msg_1_out=170
@if "^%msg_1_in%"=="^/" set msg_1_out=171
@if "^%msg_1_in%"=="^ " set msg_1_out=172
@if "^%msg_1_in%"=="^！" set msg_1_out=201
@if "^%msg_1_in%"=="^”" set msg_1_out=202
@if "^%msg_1_in%"=="^＃" set msg_1_out=203
@if "^%msg_1_in%"=="^＄" set msg_1_out=204
@if "^%msg_1_in%"=="^％" set msg_1_out=205
@if "^%msg_1_in%"=="^＆" set msg_1_out=206
@if "^%msg_1_in%"=="^’" set msg_1_out=207
@if "^%msg_1_in%"=="^（" set msg_1_out=208
@if "^%msg_1_in%"=="^）" set msg_1_out=209
@if "^%msg_1_in%"=="^＝" set msg_1_out=210
@if "^%msg_1_in%"=="^～" set msg_1_out=211
@if "^%msg_1_in%"=="^｜" set msg_1_out=212
@if "^%msg_1_in%"=="^‘" set msg_1_out=213
@if "^%msg_1_in%"=="^｛" set msg_1_out=214
@if "^%msg_1_in%"=="^＋" set msg_1_out=215
@if "^%msg_1_in%"=="^＊" set msg_1_out=216
@if "^%msg_1_in%"=="^｝" set msg_1_out=217
@if "^%msg_1_in%"=="^＜" set msg_1_out=218
@if "^%msg_1_in%"=="^＞" set msg_1_out=219
@if "^%msg_1_in%"=="^？" set msg_1_out=220
@if "^%msg_1_in%"=="^＿" set msg_1_out=221
@if "^%msg_1_in%"=="１" set msg_1_out=251
@if "^%msg_1_in%"=="２" set msg_1_out=252
@if "^%msg_1_in%"=="３" set msg_1_out=253
@if "^%msg_1_in%"=="４" set msg_1_out=254
@if "^%msg_1_in%"=="５" set msg_1_out=255
@if "^%msg_1_in%"=="６" set msg_1_out=256
@if "^%msg_1_in%"=="７" set msg_1_out=257
@if "^%msg_1_in%"=="８" set msg_1_out=258
@if "^%msg_1_in%"=="９" set msg_1_out=259
@if "^%msg_1_in%"=="０" set msg_1_out=260
@if "^%msg_1_in%"=="^ー" set msg_1_out=261
@if "^%msg_1_in%"=="^＾" set msg_1_out=262
@if "^%msg_1_in%"=="^￥" set msg_1_out=263
@if "^%msg_1_in%"=="^＠" set msg_1_out=264
@if "^%msg_1_in%"=="^「" set msg_1_out=265
@if "^%msg_1_in%"=="^；" set msg_1_out=266
@if "^%msg_1_in%"=="^：" set msg_1_out=267
@if "^%msg_1_in%"=="^」" set msg_1_out=268
@if "^%msg_1_in%"=="^、" set msg_1_out=269
@if "^%msg_1_in%"=="^。" set msg_1_out=270
@if "^%msg_1_in%"=="^・" set msg_1_out=271
@if "^%msg_1_in%"=="^　" set msg_1_out=272
@if "%msg_1_in%"=="a" set msg_1_out=301
@if "%msg_1_in%"=="b" set msg_1_out=302
@if "%msg_1_in%"=="c" set msg_1_out=303
@if "%msg_1_in%"=="d" set msg_1_out=304
@if "%msg_1_in%"=="e" set msg_1_out=305
@if "%msg_1_in%"=="f" set msg_1_out=306
@if "%msg_1_in%"=="g" set msg_1_out=307
@if "%msg_1_in%"=="h" set msg_1_out=308
@if "%msg_1_in%"=="i" set msg_1_out=309
@if "%msg_1_in%"=="j" set msg_1_out=310
@if "%msg_1_in%"=="k" set msg_1_out=311
@if "%msg_1_in%"=="l" set msg_1_out=312
@if "%msg_1_in%"=="m" set msg_1_out=313
@if "%msg_1_in%"=="n" set msg_1_out=314
@if "%msg_1_in%"=="o" set msg_1_out=315
@if "%msg_1_in%"=="p" set msg_1_out=316
@if "%msg_1_in%"=="q" set msg_1_out=317
@if "%msg_1_in%"=="r" set msg_1_out=318
@if "%msg_1_in%"=="s" set msg_1_out=319
@if "%msg_1_in%"=="t" set msg_1_out=320
@if "%msg_1_in%"=="u" set msg_1_out=321
@if "%msg_1_in%"=="v" set msg_1_out=322
@if "%msg_1_in%"=="w" set msg_1_out=323
@if "%msg_1_in%"=="x" set msg_1_out=324
@if "%msg_1_in%"=="y" set msg_1_out=325
@if "%msg_1_in%"=="z" set msg_1_out=326
@if "%msg_1_in%"=="A" set msg_1_out=351
@if "%msg_1_in%"=="B" set msg_1_out=352
@if "%msg_1_in%"=="C" set msg_1_out=353
@if "%msg_1_in%"=="D" set msg_1_out=354
@if "%msg_1_in%"=="E" set msg_1_out=355
@if "%msg_1_in%"=="F" set msg_1_out=356
@if "%msg_1_in%"=="G" set msg_1_out=357
@if "%msg_1_in%"=="H" set msg_1_out=358
@if "%msg_1_in%"=="I" set msg_1_out=359
@if "%msg_1_in%"=="J" set msg_1_out=360
@if "%msg_1_in%"=="K" set msg_1_out=361
@if "%msg_1_in%"=="L" set msg_1_out=362
@if "%msg_1_in%"=="M" set msg_1_out=363
@if "%msg_1_in%"=="N" set msg_1_out=364
@if "%msg_1_in%"=="O" set msg_1_out=365
@if "%msg_1_in%"=="P" set msg_1_out=366
@if "%msg_1_in%"=="Q" set msg_1_out=367
@if "%msg_1_in%"=="R" set msg_1_out=368
@if "%msg_1_in%"=="S" set msg_1_out=369
@if "%msg_1_in%"=="T" set msg_1_out=370
@if "%msg_1_in%"=="U" set msg_1_out=371
@if "%msg_1_in%"=="V" set msg_1_out=372
@if "%msg_1_in%"=="W" set msg_1_out=373
@if "%msg_1_in%"=="X" set msg_1_out=374
@if "%msg_1_in%"=="Y" set msg_1_out=375
@if "%msg_1_in%"=="Z" set msg_1_out=376
@if "%msg_1_in%"=="ａ" set msg_1_out=401
@if "%msg_1_in%"=="ｂ" set msg_1_out=402
@if "%msg_1_in%"=="ｃ" set msg_1_out=403
@if "%msg_1_in%"=="ｄ" set msg_1_out=404
@if "%msg_1_in%"=="ｅ" set msg_1_out=405
@if "%msg_1_in%"=="ｆ" set msg_1_out=406
@if "%msg_1_in%"=="ｇ" set msg_1_out=407
@if "%msg_1_in%"=="ｈ" set msg_1_out=408
@if "%msg_1_in%"=="ｉ" set msg_1_out=409
@if "%msg_1_in%"=="ｊ" set msg_1_out=410
@if "%msg_1_in%"=="ｋ" set msg_1_out=411
@if "%msg_1_in%"=="ｌ" set msg_1_out=412
@if "%msg_1_in%"=="ｍ" set msg_1_out=413
@if "%msg_1_in%"=="ｎ" set msg_1_out=414
@if "%msg_1_in%"=="ｏ" set msg_1_out=415
@if "%msg_1_in%"=="ｐ" set msg_1_out=416
@if "%msg_1_in%"=="ｑ" set msg_1_out=417
@if "%msg_1_in%"=="ｒ" set msg_1_out=418
@if "%msg_1_in%"=="ｓ" set msg_1_out=419
@if "%msg_1_in%"=="ｔ" set msg_1_out=420
@if "%msg_1_in%"=="ｕ" set msg_1_out=421
@if "%msg_1_in%"=="ｖ" set msg_1_out=422
@if "%msg_1_in%"=="ｗ" set msg_1_out=423
@if "%msg_1_in%"=="ｘ" set msg_1_out=424
@if "%msg_1_in%"=="ｙ" set msg_1_out=425
@if "%msg_1_in%"=="ｚ" set msg_1_out=426
@if "%msg_1_in%"=="Ａ" set msg_1_out=451
@if "%msg_1_in%"=="Ｂ" set msg_1_out=452
@if "%msg_1_in%"=="Ｃ" set msg_1_out=453
@if "%msg_1_in%"=="Ｄ" set msg_1_out=454
@if "%msg_1_in%"=="Ｅ" set msg_1_out=455
@if "%msg_1_in%"=="Ｆ" set msg_1_out=456
@if "%msg_1_in%"=="Ｇ" set msg_1_out=457
@if "%msg_1_in%"=="Ｈ" set msg_1_out=458
@if "%msg_1_in%"=="Ｉ" set msg_1_out=459
@if "%msg_1_in%"=="Ｊ" set msg_1_out=460
@if "%msg_1_in%"=="Ｋ" set msg_1_out=461
@if "%msg_1_in%"=="Ｌ" set msg_1_out=462
@if "%msg_1_in%"=="Ｍ" set msg_1_out=463
@if "%msg_1_in%"=="Ｎ" set msg_1_out=464
@if "%msg_1_in%"=="Ｏ" set msg_1_out=465
@if "%msg_1_in%"=="Ｐ" set msg_1_out=466
@if "%msg_1_in%"=="Ｑ" set msg_1_out=467
@if "%msg_1_in%"=="Ｒ" set msg_1_out=468
@if "%msg_1_in%"=="Ｓ" set msg_1_out=469
@if "%msg_1_in%"=="Ｔ" set msg_1_out=470
@if "%msg_1_in%"=="Ｕ" set msg_1_out=471
@if "%msg_1_in%"=="Ｖ" set msg_1_out=472
@if "%msg_1_in%"=="Ｗ" set msg_1_out=473
@if "%msg_1_in%"=="Ｘ" set msg_1_out=474
@if "%msg_1_in%"=="Ｙ" set msg_1_out=475
@if "%msg_1_in%"=="Ｚ" set msg_1_out=476
@if "%msg_1_in%"=="ア" set msg_1_out=501
@if "%msg_1_in%"=="イ" set msg_1_out=502
@if "%msg_1_in%"=="ウ" set msg_1_out=503
@if "%msg_1_in%"=="エ" set msg_1_out=504
@if "%msg_1_in%"=="オ" set msg_1_out=505
@if "%msg_1_in%"=="カ" set msg_1_out=506
@if "%msg_1_in%"=="キ" set msg_1_out=507
@if "%msg_1_in%"=="ク" set msg_1_out=508
@if "%msg_1_in%"=="ケ" set msg_1_out=509
@if "%msg_1_in%"=="コ" set msg_1_out=510
@if "%msg_1_in%"=="サ" set msg_1_out=511
@if "%msg_1_in%"=="シ" set msg_1_out=512
@if "%msg_1_in%"=="ス" set msg_1_out=513
@if "%msg_1_in%"=="セ" set msg_1_out=514
@if "%msg_1_in%"=="ソ" set msg_1_out=515
@if "%msg_1_in%"=="タ" set msg_1_out=516
@if "%msg_1_in%"=="チ" set msg_1_out=517
@if "%msg_1_in%"=="ツ" set msg_1_out=518
@if "%msg_1_in%"=="テ" set msg_1_out=519
@if "%msg_1_in%"=="ト" set msg_1_out=520
@if "%msg_1_in%"=="ナ" set msg_1_out=521
@if "%msg_1_in%"=="ニ" set msg_1_out=522
@if "%msg_1_in%"=="ヌ" set msg_1_out=523
@if "%msg_1_in%"=="ネ" set msg_1_out=524
@if "%msg_1_in%"=="ノ" set msg_1_out=525
@if "%msg_1_in%"=="ハ" set msg_1_out=526
@if "%msg_1_in%"=="ヒ" set msg_1_out=527
@if "%msg_1_in%"=="フ" set msg_1_out=528
@if "%msg_1_in%"=="ヘ" set msg_1_out=529
@if "%msg_1_in%"=="ホ" set msg_1_out=530
@if "%msg_1_in%"=="マ" set msg_1_out=531
@if "%msg_1_in%"=="ミ" set msg_1_out=532
@if "%msg_1_in%"=="ム" set msg_1_out=533
@if "%msg_1_in%"=="メ" set msg_1_out=534
@if "%msg_1_in%"=="モ" set msg_1_out=535
@if "%msg_1_in%"=="ヤ" set msg_1_out=536
@if "%msg_1_in%"=="ユ" set msg_1_out=537
@if "%msg_1_in%"=="ヨ" set msg_1_out=538
@if "%msg_1_in%"=="ラ" set msg_1_out=539
@if "%msg_1_in%"=="リ" set msg_1_out=540
@if "%msg_1_in%"=="ル" set msg_1_out=541
@if "%msg_1_in%"=="レ" set msg_1_out=542
@if "%msg_1_in%"=="ロ" set msg_1_out=543
@if "%msg_1_in%"=="ワ" set msg_1_out=544
@if "%msg_1_in%"=="ヲ" set msg_1_out=545
@if "%msg_1_in%"=="ン" set msg_1_out=546
@if "%msg_1_in%"=="ヴ" set msg_1_out=547
@if "%msg_1_in%"=="ガ" set msg_1_out=548
@if "%msg_1_in%"=="ギ" set msg_1_out=549
@if "%msg_1_in%"=="グ" set msg_1_out=550
@if "%msg_1_in%"=="ゲ" set msg_1_out=551
@if "%msg_1_in%"=="ゴ" set msg_1_out=552
@if "%msg_1_in%"=="ザ" set msg_1_out=553
@if "%msg_1_in%"=="ジ" set msg_1_out=554
@if "%msg_1_in%"=="ズ" set msg_1_out=555
@if "%msg_1_in%"=="ゼ" set msg_1_out=556
@if "%msg_1_in%"=="ゾ" set msg_1_out=557
@if "%msg_1_in%"=="ダ" set msg_1_out=558
@if "%msg_1_in%"=="ヂ" set msg_1_out=559
@if "%msg_1_in%"=="ヅ" set msg_1_out=560
@if "%msg_1_in%"=="デ" set msg_1_out=561
@if "%msg_1_in%"=="ド" set msg_1_out=562
@if "%msg_1_in%"=="バ" set msg_1_out=563
@if "%msg_1_in%"=="ビ" set msg_1_out=564
@if "%msg_1_in%"=="ブ" set msg_1_out=565
@if "%msg_1_in%"=="ベ" set msg_1_out=566
@if "%msg_1_in%"=="ボ" set msg_1_out=567
@if "%msg_1_in%"=="パ" set msg_1_out=568
@if "%msg_1_in%"=="ピ" set msg_1_out=569
@if "%msg_1_in%"=="プ" set msg_1_out=570
@if "%msg_1_in%"=="ペ" set msg_1_out=571
@if "%msg_1_in%"=="ポ" set msg_1_out=572
@if "%msg_1_in%"=="ァ" set msg_1_out=573
@if "%msg_1_in%"=="ィ" set msg_1_out=574
@if "%msg_1_in%"=="ゥ" set msg_1_out=575
@if "%msg_1_in%"=="ェ" set msg_1_out=576
@if "%msg_1_in%"=="ォ" set msg_1_out=577
@if "%msg_1_in%"=="ヵ" set msg_1_out=578
@if "%msg_1_in%"=="ヶ" set msg_1_out=579
@if "%msg_1_in%"=="ッ" set msg_1_out=580
@if "%msg_1_in%"=="ャ" set msg_1_out=581
@if "%msg_1_in%"=="ュ" set msg_1_out=582
@if "%msg_1_in%"=="ョ" set msg_1_out=583
@if "%msg_1_in%"=="ヮ" set msg_1_out=584
@if "%msg_1_in%"=="あ" set msg_1_out=601
@if "%msg_1_in%"=="い" set msg_1_out=602
@if "%msg_1_in%"=="う" set msg_1_out=603
@if "%msg_1_in%"=="え" set msg_1_out=604
@if "%msg_1_in%"=="お" set msg_1_out=605
@if "%msg_1_in%"=="か" set msg_1_out=606
@if "%msg_1_in%"=="き" set msg_1_out=607
@if "%msg_1_in%"=="く" set msg_1_out=608
@if "%msg_1_in%"=="け" set msg_1_out=609
@if "%msg_1_in%"=="こ" set msg_1_out=610
@if "%msg_1_in%"=="さ" set msg_1_out=611
@if "%msg_1_in%"=="し" set msg_1_out=612
@if "%msg_1_in%"=="す" set msg_1_out=613
@if "%msg_1_in%"=="せ" set msg_1_out=614
@if "%msg_1_in%"=="そ" set msg_1_out=615
@if "%msg_1_in%"=="た" set msg_1_out=616
@if "%msg_1_in%"=="ち" set msg_1_out=617
@if "%msg_1_in%"=="つ" set msg_1_out=618
@if "%msg_1_in%"=="て" set msg_1_out=619
@if "%msg_1_in%"=="と" set msg_1_out=620
@if "%msg_1_in%"=="な" set msg_1_out=621
@if "%msg_1_in%"=="に" set msg_1_out=622
@if "%msg_1_in%"=="ぬ" set msg_1_out=623
@if "%msg_1_in%"=="ね" set msg_1_out=624
@if "%msg_1_in%"=="の" set msg_1_out=625
@if "%msg_1_in%"=="は" set msg_1_out=626
@if "%msg_1_in%"=="ひ" set msg_1_out=627
@if "%msg_1_in%"=="ふ" set msg_1_out=628
@if "%msg_1_in%"=="へ" set msg_1_out=629
@if "%msg_1_in%"=="ほ" set msg_1_out=630
@if "%msg_1_in%"=="ま" set msg_1_out=631
@if "%msg_1_in%"=="み" set msg_1_out=632
@if "%msg_1_in%"=="む" set msg_1_out=633
@if "%msg_1_in%"=="め" set msg_1_out=634
@if "%msg_1_in%"=="も" set msg_1_out=635
@if "%msg_1_in%"=="や" set msg_1_out=636
@if "%msg_1_in%"=="ゆ" set msg_1_out=637
@if "%msg_1_in%"=="よ" set msg_1_out=638
@if "%msg_1_in%"=="ら" set msg_1_out=639
@if "%msg_1_in%"=="り" set msg_1_out=640
@if "%msg_1_in%"=="る" set msg_1_out=641
@if "%msg_1_in%"=="れ" set msg_1_out=642
@if "%msg_1_in%"=="ろ" set msg_1_out=643
@if "%msg_1_in%"=="わ" set msg_1_out=644
@if "%msg_1_in%"=="を" set msg_1_out=645
@if "%msg_1_in%"=="ん" set msg_1_out=646
@if "%msg_1_in%"=="が" set msg_1_out=647
@if "%msg_1_in%"=="ぎ" set msg_1_out=548
@if "%msg_1_in%"=="ぐ" set msg_1_out=649
@if "%msg_1_in%"=="げ" set msg_1_out=650
@if "%msg_1_in%"=="ご" set msg_1_out=651
@if "%msg_1_in%"=="ざ" set msg_1_out=652
@if "%msg_1_in%"=="じ" set msg_1_out=653
@if "%msg_1_in%"=="ず" set msg_1_out=654
@if "%msg_1_in%"=="ぜ" set msg_1_out=655
@if "%msg_1_in%"=="ぞ" set msg_1_out=656
@if "%msg_1_in%"=="だ" set msg_1_out=657
@if "%msg_1_in%"=="ぢ" set msg_1_out=658
@if "%msg_1_in%"=="づ" set msg_1_out=659
@if "%msg_1_in%"=="で" set msg_1_out=660
@if "%msg_1_in%"=="ど" set msg_1_out=661
@if "%msg_1_in%"=="ば" set msg_1_out=662
@if "%msg_1_in%"=="び" set msg_1_out=663
@if "%msg_1_in%"=="ぶ" set msg_1_out=664
@if "%msg_1_in%"=="べ" set msg_1_out=665
@if "%msg_1_in%"=="ぼ" set msg_1_out=666
@if "%msg_1_in%"=="ぱ" set msg_1_out=667
@if "%msg_1_in%"=="ぴ" set msg_1_out=668
@if "%msg_1_in%"=="ぷ" set msg_1_out=669
@if "%msg_1_in%"=="ぺ" set msg_1_out=670
@if "%msg_1_in%"=="ぽ" set msg_1_out=671
@if "%msg_1_in%"=="ぁ" set msg_1_out=672
@if "%msg_1_in%"=="ぃ" set msg_1_out=673
@if "%msg_1_in%"=="ぅ" set msg_1_out=674
@if "%msg_1_in%"=="ぇ" set msg_1_out=675
@if "%msg_1_in%"=="ぉ" set msg_1_out=676
@if "%msg_1_in%"=="っ" set msg_1_out=677
@if "%msg_1_in%"=="ゃ" set msg_1_out=678
@if "%msg_1_in%"=="ゅ" set msg_1_out=679
@if "%msg_1_in%"=="ょ" set msg_1_out=680
@if "%msg_1_in%"=="ゎ" set msg_1_out=681
@
@
@:msg_1_s
@set msg_1_output=%msg_1_output%%msg_1_out%
@if %msg_1_loop%==0 set msg_1_output=%msg_1_output:~1,10000000000%
@set /a msg_1_title=%msg_1_loop%+1
@set /a msg_1_loop=%msg_1_loop%+1
@goto msg_1_restart
@
@:msg_1_exit
@set msg_errorlevel=0
@set msg_out=%msg_1_output%%msg_1_output_end%
@goto msg_end
@
@
@rem ---------------------------------------------
@
@
@:msg_2_start
@
@set msg_2_output=_
@
@set msg_2_loop=0
@
@rem 暗号化タイプ,前後一致確認用情報読み込み
@set /a msg_2_s_in_1=%msg_2_in_m:~2,1%-1
@set /a msg_2_s_in_2=%msg_2_in_m:~4,1%-1
@set msg_2_output_end_b=%msg_2_in_m:~8,1%
@call set msg_2_s_in_1=%%msg_2_in_m:~%msg_2_s_in_1%,1%%
@call set msg_2_s_in_2=%%msg_2_in_m:~%msg_2_s_in_2%,1%%
@
@
@rem 前後一致確認用情報読み込み
@set msg_2_output_end=%msg_2_in_m:~-10,5%
@set msg_2_output_end_start=%msg_2_in_m:~10,5%
@
@rem 暗号化タイプ一致確認
@set msg_2_s_in=%msg_2_s_in_1%%msg_2_s_in_2%
@if not %msg_2_s_in%==%msg_type% echo 解読不能&set msg_errorlevel=1&goto msg_end
@
@rem 前後一致確認用情報計算,確認
@set /a msg_2_output_end1=%msg_2_output_end_start:~0,1%*%msg_2_output_end_b%
@set /a msg_2_output_end2=%msg_2_output_end_start:~1,1%*%msg_2_output_end_b%
@set /a msg_2_output_end3=%msg_2_output_end_start:~2,1%*%msg_2_output_end_b%
@set /a msg_2_output_end4=%msg_2_output_end_start:~3,1%*%msg_2_output_end_b%
@set /a msg_2_output_end5=%msg_2_output_end_start:~4,1%*%msg_2_output_end_b%
@set msg_2_output_end1=%msg_2_output_end1:~-1,1%
@set msg_2_output_end2=%msg_2_output_end2:~-1,1%
@set msg_2_output_end3=%msg_2_output_end3:~-1,1%
@set msg_2_output_end4=%msg_2_output_end4:~-1,1%
@set msg_2_output_end5=%msg_2_output_end5:~-1,1%
@set msg_2_output_end_k=%msg_2_output_end1%%msg_2_output_end2%%msg_2_output_end3%%msg_2_output_end4%%msg_2_output_end5%
@if not %msg_2_output_end%==%msg_2_output_end_k% echo 解読不能&set msg_errorlevel=1&goto msg_end
@
@rem 暗号化文字列切り取り
@set msg_2_in_m=%msg_2_in_m:~15,-10%
@
@
@rem 解読処理開始
@set msg_2_in_m=%msg_2_in_m%`
@set msg_errorlevel=2
@:msg_2_restart
@set msg_2_in=%msg_2_in_m:~0,3%
@set msg_2_in_m=%msg_2_in_m:~3,10000000000%
@if "%msg_2_in%"=="`" goto msg_2_exit
@
@set msg_2_out=%msg_2_in:~1,1%
@
@if %msg_2_in%==101 set msg_2_out=^!
@
@if %msg_2_in%==102 set msg_2_out=^"
@
@if %msg_2_in%==103 set msg_2_out=^#
@
@if %msg_2_in%==104 set msg_2_out=^$
@
@if %msg_2_in%==105 set msg_2_out=^%
@
@if %msg_2_in%==106 set msg_2_out=^&
@
@if %msg_2_in%==107 set msg_2_out=^'
@
@if %msg_2_in%==108 set msg_2_out=^(
@
@if %msg_2_in%==109 set msg_2_out=^)
@
@if %msg_2_in%==110 set msg_2_out=^=
@
@if %msg_2_in%==111 set msg_2_out=^~
@
@if %msg_2_in%==112 set msg_2_out=^|
@
@rem [実装不可]   113=`
@
@if %msg_2_in%==114 set msg_2_out=^{
@
@if %msg_2_in%==115 set msg_2_out=^+
@
@if %msg_2_in%==116 set msg_2_out=^*
@
@if %msg_2_in%==117 set msg_2_out=^}
@
@if %msg_2_in%==118 set msg_2_out=^<
@
@if %msg_2_in%==119 set msg_2_out=^>
@
@if %msg_2_in%==120 set msg_2_out=^?
@
@if %msg_2_in%==121 set msg_2_out=^_
@
@if %msg_2_in%==151 set msg_2_out=^1
@
@if %msg_2_in%==152 set msg_2_out=^2
@
@if %msg_2_in%==153 set msg_2_out=^3
@
@if %msg_2_in%==154 set msg_2_out=^4
@
@if %msg_2_in%==155 set msg_2_out=^5
@
@if %msg_2_in%==156 set msg_2_out=^6
@
@if %msg_2_in%==157 set msg_2_out=^7
@
@if %msg_2_in%==158 set msg_2_out=^8
@
@if %msg_2_in%==159 set msg_2_out=^9
@
@if %msg_2_in%==160 set msg_2_out=^0
@
@if %msg_2_in%==161 set msg_2_out=^-
@
@rem [未実装]   162=^
@
@if %msg_2_in%==163 set msg_2_out=^\ 
@
@if %msg_2_in%==164 set msg_2_out=^@
@
@if %msg_2_in%==165 set msg_2_out=^[
@
@if %msg_2_in%==166 set msg_2_out=^;
@
@if %msg_2_in%==167 set msg_2_out=^:
@
@if %msg_2_in%==168 set msg_2_out=^]
@
@if %msg_2_in%==169 set msg_2_out=^,
@
@if %msg_2_in%==170 set msg_2_out=^.
@
@if %msg_2_in%==171 set msg_2_out=^/
@
@if %msg_2_in%==172 set msg_2_out=^ 
@
@if %msg_2_in%==201 set msg_2_out=^！
@
@if %msg_2_in%==202 set msg_2_out=^”
@
@if %msg_2_in%==203 set msg_2_out=^＃
@
@if %msg_2_in%==204 set msg_2_out=^＄
@
@if %msg_2_in%==205 set msg_2_out=^％
@
@if %msg_2_in%==206 set msg_2_out=^＆
@
@if %msg_2_in%==207 set msg_2_out=^’
@
@if %msg_2_in%==208 set msg_2_out=^（
@
@if %msg_2_in%==209 set msg_2_out=^）
@
@if %msg_2_in%==210 set msg_2_out=^＝
@
@if %msg_2_in%==211 set msg_2_out=^～
@
@if %msg_2_in%==212 set msg_2_out=^｜
@
@if %msg_2_in%==213 set msg_2_out=^‘
@
@if %msg_2_in%==214 set msg_2_out=^｛
@
@if %msg_2_in%==215 set msg_2_out=^＋
@
@if %msg_2_in%==216 set msg_2_out=^＊
@
@if %msg_2_in%==217 set msg_2_out=^｝
@
@if %msg_2_in%==218 set msg_2_out=^＜
@
@if %msg_2_in%==219 set msg_2_out=^＞
@
@if %msg_2_in%==220 set msg_2_out=^？
@
@if %msg_2_in%==221 set msg_2_out=^＿
@
@if %msg_2_in%==251 set msg_2_out=^１
@
@if %msg_2_in%==252 set msg_2_out=^２
@
@if %msg_2_in%==253 set msg_2_out=^３
@
@if %msg_2_in%==254 set msg_2_out=^４
@
@if %msg_2_in%==255 set msg_2_out=^５
@
@if %msg_2_in%==256 set msg_2_out=^６
@
@if %msg_2_in%==257 set msg_2_out=^７
@
@if %msg_2_in%==258 set msg_2_out=^８
@
@if %msg_2_in%==259 set msg_2_out=^９
@
@if %msg_2_in%==260 set msg_2_out=^０
@
@if %msg_2_in%==261 set msg_2_out=^ー
@
@if %msg_2_in%==262 set msg_2_out=^＾
@
@if %msg_2_in%==263 set msg_2_out=^￥
@
@if %msg_2_in%==264 set msg_2_out=^＠
@
@if %msg_2_in%==265 set msg_2_out=^「
@
@if %msg_2_in%==266 set msg_2_out=^；
@
@if %msg_2_in%==267 set msg_2_out=^：
@
@if %msg_2_in%==268 set msg_2_out=^」
@
@if %msg_2_in%==269 set msg_2_out=^、
@
@if %msg_2_in%==270 set msg_2_out=^。
@
@if %msg_2_in%==271 set msg_2_out=^・
@
@if %msg_2_in%==272 set msg_1_out=^　
@
@if %msg_2_in%==301 set msg_2_out=a
@
@if %msg_2_in%==302 set msg_2_out=b
@
@if %msg_2_in%==303 set msg_2_out=c
@
@if %msg_2_in%==304 set msg_2_out=d
@
@if %msg_2_in%==305 set msg_2_out=e
@
@if %msg_2_in%==306 set msg_2_out=f
@
@if %msg_2_in%==307 set msg_2_out=g
@
@if %msg_2_in%==308 set msg_2_out=h
@
@if %msg_2_in%==309 set msg_2_out=i
@
@if %msg_2_in%==310 set msg_2_out=j
@
@if %msg_2_in%==311 set msg_2_out=k
@
@if %msg_2_in%==312 set msg_2_out=l
@
@if %msg_2_in%==313 set msg_2_out=m
@
@if %msg_2_in%==314 set msg_2_out=n
@
@if %msg_2_in%==315 set msg_2_out=o
@
@if %msg_2_in%==316 set msg_2_out=p
@
@if %msg_2_in%==317 set msg_2_out=q
@
@if %msg_2_in%==318 set msg_2_out=r
@
@if %msg_2_in%==319 set msg_2_out=s
@
@if %msg_2_in%==320 set msg_2_out=t
@
@if %msg_2_in%==321 set msg_2_out=u
@
@if %msg_2_in%==322 set msg_2_out=v
@
@if %msg_2_in%==323 set msg_2_out=w
@
@if %msg_2_in%==324 set msg_2_out=x
@
@if %msg_2_in%==325 set msg_2_out=y
@
@if %msg_2_in%==326 set msg_2_out=z
@
@if %msg_2_in%==351 set msg_2_out=A
@
@if %msg_2_in%==352 set msg_2_out=B
@
@if %msg_2_in%==353 set msg_2_out=C
@
@if %msg_2_in%==354 set msg_2_out=D
@
@if %msg_2_in%==355 set msg_2_out=E
@
@if %msg_2_in%==356 set msg_2_out=F
@
@if %msg_2_in%==357 set msg_2_out=G
@
@if %msg_2_in%==358 set msg_2_out=H
@
@if %msg_2_in%==359 set msg_2_out=I
@
@if %msg_2_in%==360 set msg_2_out=J
@
@if %msg_2_in%==361 set msg_2_out=K
@
@if %msg_2_in%==362 set msg_2_out=L
@
@if %msg_2_in%==363 set msg_2_out=M
@
@if %msg_2_in%==364 set msg_2_out=N
@
@if %msg_2_in%==365 set msg_2_out=O
@
@if %msg_2_in%==366 set msg_2_out=P
@
@if %msg_2_in%==367 set msg_2_out=Q
@
@if %msg_2_in%==368 set msg_2_out=R
@
@if %msg_2_in%==369 set msg_2_out=S
@
@if %msg_2_in%==370 set msg_2_out=T
@
@if %msg_2_in%==371 set msg_2_out=U
@
@if %msg_2_in%==372 set msg_2_out=V
@
@if %msg_2_in%==373 set msg_2_out=W
@
@if %msg_2_in%==374 set msg_2_out=X
@
@if %msg_2_in%==375 set msg_2_out=Y
@
@if %msg_2_in%==376 set msg_2_out=Z
@
@if %msg_2_in%==401 set msg_2_out=ａ
@
@if %msg_2_in%==402 set msg_2_out=ｂ
@
@if %msg_2_in%==403 set msg_2_out=ｃ
@
@if %msg_2_in%==404 set msg_2_out=ｄ
@
@if %msg_2_in%==405 set msg_2_out=ｅ
@
@if %msg_2_in%==406 set msg_2_out=ｆ
@
@if %msg_2_in%==407 set msg_2_out=ｇ
@
@if %msg_2_in%==408 set msg_2_out=ｈ
@
@if %msg_2_in%==409 set msg_2_out=ｉ
@
@if %msg_2_in%==410 set msg_2_out=ｊ
@
@if %msg_2_in%==411 set msg_2_out=ｋ
@
@if %msg_2_in%==412 set msg_2_out=ｌ
@
@if %msg_2_in%==413 set msg_2_out=ｍ
@
@if %msg_2_in%==414 set msg_2_out=ｎ
@
@if %msg_2_in%==415 set msg_2_out=ｏ
@
@if %msg_2_in%==416 set msg_2_out=ｐ
@
@if %msg_2_in%==417 set msg_2_out=ｑ
@
@if %msg_2_in%==418 set msg_2_out=ｒ
@
@if %msg_2_in%==419 set msg_2_out=ｓ
@
@if %msg_2_in%==420 set msg_2_out=ｔ
@
@if %msg_2_in%==421 set msg_2_out=ｕ
@
@if %msg_2_in%==422 set msg_2_out=ｖ
@
@if %msg_2_in%==423 set msg_2_out=ｗ
@
@if %msg_2_in%==424 set msg_2_out=ｘ
@
@if %msg_2_in%==425 set msg_2_out=ｙ
@
@if %msg_2_in%==426 set msg_2_out=ｚ
@
@if %msg_2_in%==451 set msg_2_out=Ａ
@
@if %msg_2_in%==452 set msg_2_out=Ｂ
@
@if %msg_2_in%==453 set msg_2_out=Ｃ
@
@if %msg_2_in%==454 set msg_2_out=Ｄ
@
@if %msg_2_in%==455 set msg_2_out=Ｅ
@
@if %msg_2_in%==456 set msg_2_out=Ｆ
@
@if %msg_2_in%==457 set msg_2_out=Ｇ
@
@if %msg_2_in%==458 set msg_2_out=Ｈ
@
@if %msg_2_in%==459 set msg_2_out=Ｉ
@
@if %msg_2_in%==460 set msg_2_out=Ｊ
@
@if %msg_2_in%==461 set msg_2_out=Ｋ
@
@if %msg_2_in%==462 set msg_2_out=Ｌ
@
@if %msg_2_in%==463 set msg_2_out=Ｍ
@
@if %msg_2_in%==464 set msg_2_out=Ｎ
@
@if %msg_2_in%==465 set msg_2_out=Ｏ
@
@if %msg_2_in%==466 set msg_2_out=Ｐ
@
@if %msg_2_in%==467 set msg_2_out=Ｑ
@
@if %msg_2_in%==468 set msg_2_out=Ｒ
@
@if %msg_2_in%==469 set msg_2_out=Ｓ
@
@if %msg_2_in%==470 set msg_2_out=Ｔ
@
@if %msg_2_in%==471 set msg_2_out=Ｕ
@
@if %msg_2_in%==472 set msg_2_out=Ｖ
@
@if %msg_2_in%==473 set msg_2_out=Ｗ
@
@if %msg_2_in%==474 set msg_2_out=Ｘ
@
@if %msg_2_in%==475 set msg_2_out=Ｙ
@
@if %msg_2_in%==476 set msg_2_out=Ｚ
@
@if %msg_2_in%==501 set msg_2_out=ア
@
@if %msg_2_in%==502 set msg_2_out=イ
@
@if %msg_2_in%==503 set msg_2_out=ウ
@
@if %msg_2_in%==504 set msg_2_out=エ
@
@if %msg_2_in%==505 set msg_2_out=オ
@
@if %msg_2_in%==506 set msg_2_out=カ
@
@if %msg_2_in%==507 set msg_2_out=キ
@
@if %msg_2_in%==508 set msg_2_out=ク
@
@if %msg_2_in%==509 set msg_2_out=ケ
@
@if %msg_2_in%==510 set msg_2_out=コ
@
@if %msg_2_in%==511 set msg_2_out=サ
@
@if %msg_2_in%==512 set msg_2_out=シ
@
@if %msg_2_in%==513 set msg_2_out=ス
@
@if %msg_2_in%==514 set msg_2_out=セ
@
@if %msg_2_in%==515 set msg_2_out=ソ
@
@if %msg_2_in%==516 set msg_2_out=タ
@
@if %msg_2_in%==517 set msg_2_out=チ
@
@if %msg_2_in%==518 set msg_2_out=ツ
@
@if %msg_2_in%==519 set msg_2_out=テ
@
@if %msg_2_in%==520 set msg_2_out=ト
@
@if %msg_2_in%==521 set msg_2_out=ナ
@
@if %msg_2_in%==522 set msg_2_out=ニ
@
@if %msg_2_in%==523 set msg_2_out=ヌ
@
@if %msg_2_in%==524 set msg_2_out=ネ
@
@if %msg_2_in%==525 set msg_2_out=ノ
@
@if %msg_2_in%==526 set msg_2_out=ハ
@
@if %msg_2_in%==527 set msg_2_out=ヒ
@
@if %msg_2_in%==528 set msg_2_out=フ
@
@if %msg_2_in%==529 set msg_2_out=ヘ
@
@if %msg_2_in%==530 set msg_2_out=ホ
@
@if %msg_2_in%==531 set msg_2_out=マ
@
@if %msg_2_in%==532 set msg_2_out=ミ
@
@if %msg_2_in%==533 set msg_2_out=ム
@
@if %msg_2_in%==534 set msg_2_out=メ
@
@if %msg_2_in%==535 set msg_2_out=モ
@
@if %msg_2_in%==536 set msg_2_out=ヤ
@
@if %msg_2_in%==537 set msg_2_out=ユ
@
@if %msg_2_in%==538 set msg_2_out=ヨ
@
@if %msg_2_in%==539 set msg_2_out=ラ
@
@if %msg_2_in%==540 set msg_2_out=リ
@
@if %msg_2_in%==541 set msg_2_out=ル
@
@if %msg_2_in%==542 set msg_2_out=レ
@
@if %msg_2_in%==543 set msg_2_out=ロ
@
@if %msg_2_in%==544 set msg_2_out=ワ
@
@if %msg_2_in%==545 set msg_2_out=ヲ
@
@if %msg_2_in%==546 set msg_2_out=ン
@
@if %msg_2_in%==547 set msg_2_out=ヴ
@
@if %msg_2_in%==548 set msg_2_out=ガ
@
@if %msg_2_in%==549 set msg_2_out=ギ
@
@if %msg_2_in%==550 set msg_2_out=グ
@
@if %msg_2_in%==551 set msg_2_out=ゲ
@
@if %msg_2_in%==552 set msg_2_out=ゴ
@
@if %msg_2_in%==553 set msg_2_out=ザ
@
@if %msg_2_in%==554 set msg_2_out=ジ
@
@if %msg_2_in%==555 set msg_2_out=ズ
@
@if %msg_2_in%==556 set msg_2_out=ゼ
@
@if %msg_2_in%==557 set msg_2_out=ゾ
@
@if %msg_2_in%==558 set msg_2_out=ダ
@
@if %msg_2_in%==559 set msg_2_out=ヂ
@
@if %msg_2_in%==560 set msg_2_out=ヅ
@
@if %msg_2_in%==561 set msg_2_out=デ
@
@if %msg_2_in%==562 set msg_2_out=ド
@
@if %msg_2_in%==563 set msg_2_out=バ
@
@if %msg_2_in%==564 set msg_2_out=ビ
@
@if %msg_2_in%==565 set msg_2_out=ブ
@
@if %msg_2_in%==566 set msg_2_out=ベ
@
@if %msg_2_in%==567 set msg_2_out=ボ
@
@if %msg_2_in%==568 set msg_2_out=パ
@
@if %msg_2_in%==569 set msg_2_out=ピ
@
@if %msg_2_in%==570 set msg_2_out=プ
@
@if %msg_2_in%==571 set msg_2_out=ペ
@
@if %msg_2_in%==572 set msg_2_out=ポ
@
@if %msg_2_in%==573 set msg_2_out=ァ
@
@if %msg_2_in%==574 set msg_2_out=ィ
@
@if %msg_2_in%==575 set msg_2_out=ゥ
@
@if %msg_2_in%==576 set msg_2_out=ェ
@
@if %msg_2_in%==577 set msg_2_out=ォ
@
@if %msg_2_in%==578 set msg_2_out=ヵ
@
@if %msg_2_in%==579 set msg_2_out=ヶ
@
@if %msg_2_in%==580 set msg_2_out=ッ
@
@if %msg_2_in%==581 set msg_2_out=ャ
@
@if %msg_2_in%==582 set msg_2_out=ュ
@
@if %msg_2_in%==583 set msg_2_out=ョ
@
@if %msg_2_in%==584 set msg_2_out=ヮ
@
@if %msg_2_in%==601 set msg_2_out=あ
@
@if %msg_2_in%==602 set msg_2_out=い
@
@if %msg_2_in%==603 set msg_2_out=う
@
@if %msg_2_in%==604 set msg_2_out=え
@
@if %msg_2_in%==605 set msg_2_out=お
@
@if %msg_2_in%==606 set msg_2_out=か
@
@if %msg_2_in%==607 set msg_2_out=き
@
@if %msg_2_in%==608 set msg_2_out=く
@
@if %msg_2_in%==609 set msg_2_out=け
@
@if %msg_2_in%==610 set msg_2_out=こ
@
@if %msg_2_in%==611 set msg_2_out=さ
@
@if %msg_2_in%==612 set msg_2_out=し
@
@if %msg_2_in%==613 set msg_2_out=す
@
@if %msg_2_in%==614 set msg_2_out=せ
@
@if %msg_2_in%==615 set msg_2_out=そ
@
@if %msg_2_in%==616 set msg_2_out=た
@
@if %msg_2_in%==617 set msg_2_out=ち
@
@if %msg_2_in%==618 set msg_2_out=つ
@
@if %msg_2_in%==619 set msg_2_out=て
@
@if %msg_2_in%==620 set msg_2_out=と
@
@if %msg_2_in%==621 set msg_2_out=な
@
@if %msg_2_in%==622 set msg_2_out=に
@
@if %msg_2_in%==623 set msg_2_out=ぬ
@
@if %msg_2_in%==624 set msg_2_out=ね
@
@if %msg_2_in%==625 set msg_2_out=の
@
@if %msg_2_in%==626 set msg_2_out=は
@
@if %msg_2_in%==627 set msg_2_out=ひ
@
@if %msg_2_in%==628 set msg_2_out=ふ
@
@if %msg_2_in%==629 set msg_2_out=へ
@
@if %msg_2_in%==630 set msg_2_out=ほ
@
@if %msg_2_in%==631 set msg_2_out=ま
@
@if %msg_2_in%==632 set msg_2_out=み
@
@if %msg_2_in%==633 set msg_2_out=む
@
@if %msg_2_in%==634 set msg_2_out=め
@
@if %msg_2_in%==635 set msg_2_out=も
@
@if %msg_2_in%==636 set msg_2_out=や
@
@if %msg_2_in%==637 set msg_2_out=ゆ
@
@if %msg_2_in%==638 set msg_2_out=よ
@
@if %msg_2_in%==639 set msg_2_out=ら
@
@if %msg_2_in%==640 set msg_2_out=り
@
@if %msg_2_in%==641 set msg_2_out=る
@
@if %msg_2_in%==642 set msg_2_out=れ
@
@if %msg_2_in%==643 set msg_2_out=ろ
@
@if %msg_2_in%==644 set msg_2_out=わ
@
@if %msg_2_in%==645 set msg_2_out=を
@
@if %msg_2_in%==646 set msg_2_out=ん
@
@if %msg_2_in%==647 set msg_2_out=が
@
@if %msg_2_in%==648 set msg_2_out=ぎ
@
@if %msg_2_in%==649 set msg_2_out=ぐ
@
@if %msg_2_in%==650 set msg_2_out=げ
@
@if %msg_2_in%==651 set msg_2_out=ご
@
@if %msg_2_in%==652 set msg_2_out=ざ
@
@if %msg_2_in%==653 set msg_2_out=じ
@
@if %msg_2_in%==654 set msg_2_out=ず
@
@if %msg_2_in%==655 set msg_2_out=ぜ
@
@if %msg_2_in%==656 set msg_2_out=ぞ
@
@if %msg_2_in%==657 set msg_2_out=だ
@
@if %msg_2_in%==658 set msg_2_out=ぢ
@
@if %msg_2_in%==659 set msg_2_out=づ
@
@if %msg_2_in%==660 set msg_2_out=で
@
@if %msg_2_in%==661 set msg_2_out=ど
@
@if %msg_2_in%==662 set msg_2_out=ば
@
@if %msg_2_in%==663 set msg_2_out=び
@
@if %msg_2_in%==664 set msg_2_out=ぶ
@
@if %msg_2_in%==665 set msg_2_out=べ
@
@if %msg_2_in%==666 set msg_2_out=ぼ
@
@if %msg_2_in%==667 set msg_2_out=ば
@
@if %msg_2_in%==668 set msg_2_out=び
@
@if %msg_2_in%==669 set msg_2_out=ぶ
@
@if %msg_2_in%==670 set msg_2_out=べ
@
@if %msg_2_in%==671 set msg_2_out=ぼ
@
@if %msg_2_in%==672 set msg_2_out=ぁ
@
@if %msg_2_in%==673 set msg_2_out=ぃ
@
@if %msg_2_in%==674 set msg_2_out=ぅ
@
@if %msg_2_in%==675 set msg_2_out=ぇ
@
@if %msg_2_in%==676 set msg_2_out=ぉ
@
@if %msg_2_in%==677 set msg_2_out=っ
@
@if %msg_2_in%==678 set msg_2_out=ゃ
@
@if %msg_2_in%==679 set msg_2_out=ゅ
@
@if %msg_2_in%==680 set msg_2_out=ょ
@
@if %msg_2_in%==681 set msg_2_out=ゎ
@
@:msg_2_s
@set msg_2_output=%msg_2_output%%msg_2_out%
@if %msg_2_loop%==0 set msg_2_output=%msg_2_output:~1,10000000000%
@set /a msg_2_title=%msg_2_loop%+1
@set /a msg_2_loop=%msg_2_loop%+1
@goto msg_2_restart
@
@:msg_2_exit
@set msg_errorlevel=0
@set msg_out=%msg_2_output%
@goto msg_end
@
@
@:msg_end
@if %msg_errorlevel%==1 echo 解読不能
@if %msg_errorlevel%==2 echo ERROR
@
@goto %return_point%_ms
*********************************************************************
:s_home

title %yy981_title%^|setting-systems


set return_point=s_home
set file_y_b=1
goto file_y
:s_home_fs

echo.
echo.
echo.

set s_cmd=%s_yy981path:~1,1%
set s_alf=%s_yy981path:~2,1%

if "%s_alf%"==" " (
if %s_cmd%==1 set s_home_sr=0&goto @1d_1
if %s_cmd%==2 set s_home_sr=0&goto @1d_2
if %s_cmd%==3 set s_home_sr=0&goto @1d_3
if %s_cmd%==4 set s_home_sr=0&goto @1d_4
if %s_cmd%==5 set s_home_sr=0&goto @1d_5
if %s_cmd%==6 set s_home_sr=0&goto @1d_6
if %s_cmd%==7 set s_home_sr=0&goto @1d_7
if %s_cmd%==8 set s_home_sr=0&goto @1d_8
if %s_cmd%==9 set s_home_sr=0&goto @1d_9
)

title %yy981_title%^|コマンドデスクトップ設定^|[%s_yy981path%]

goto @1d_%s_cmd%_%s_alf%
echo エラー修正完了
set s_cmd=1
if %s_home_sr%==5 (
echo yy981_setting-systems項目の標準エラー修正システムを5回実行しましたが、エラーが修正できませんでした どうしますか?
rem _
choice /n /m "1.デバックへ 2.yy981の再起動 3.ホームページを開いてダウンロードしなおす"
if %errorlevel%==1 goto debug
if %errorlevel%==2 goto @1b_b
if %errorlevel%==3 start https://cxyzt26408.wixsite.com/yy981
)
set /a s_home_sr=%s_home_sr%+1
goto s_home
*********************************************************************
:home_system


rem spath
if %yy981_spath%==blank set yy981_spath_on=0&goto home_2_fs
set cmd=%yy981_spath:~1,1%
set alf=%yy981_spath:~2,1%
echo blank >%yy981_d%\profile\%pf%\setting\yy981_spath.yy981
if %yy981_spath:~1,1% leq 7 goto 1~7
if %yy981_spath:~1,1% leq 9 goto 8~9
echo エラー
goto home
*********************************************************************
:pass
set pson=error
if not "%return_point%"=="pass" set return_point_p=%return_point%


@set msg_in=%ps%
set return_point=pass
set msg_mode=2
goto msg
:pass_ms
@set ps=%msg_out%

set psn=error
set /p psn=パスワードを入力してください(何も設定していない場合は 00000 です)
if "%psn%"=="error" set pson=2

if %ps%==%psn% (
set psn=""
echo ロックを解除しました
set ps=nul
set pson=1
goto %return_point_p%_ps
)

echo パスワードもしくは、プロファイルが間違っています

set ps=nul
choice /m 再入力?
if %errorlevel%==1 goto pass

set psn=""
set ps=nul
if not %pson%==2 set pson=0
goto %return_point_p%_ps
*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************

*********************************************************************
/////////////////////////////////////////////////////////////////////


:yy981_start

rem 毎開始時共通処理内容(set)
echo %yy981_d%>"%yy981_kd%\yy981_system-path.yy981"
set cmd=0
set m_ver_h=1
set yy981_y=1
set home_sr=0

set shortcutfile=1 
if exist %yy981_d_back%\profile\%pf%\setting\shortcutfile.yy981 set /p shortcutfile=<%yy981_d_back%\profile\%pf%\setting\shortcutfile.yy981
if exist %yy981_d_back%\profile\%pf%\setting\user_d.yy981 set /p user_d=<%yy981_d_back%\profile\%pf%\setting\user_d.yy981

if not exist %yy981_d%\soft\log.yy981 set startup=1 & goto sii

@set self-security=A8AmCM67ZA32wq148nJi4Q3rVYyKs3g2sX4nmtvYn1Z6GFwJBFy2qln70xU3J2w63Y6wyOMwO23weD1641gYO6wHM1Y5237OfO1Qcvl7n6RYqkLqtc4XlMY6Ik9l6ql8xC
@set self-security=%self-security:1=%
@set self-security=%self-security:2=%
@set self-security=%self-security:3=%
@set self-security=%self-security:4=%
@set self-security=%self-security:6=%
@set self-security=%self-security:7=%
@set self-security=%self-security:8=%
@set self-security=%self-security:a=%
@set self-security=%self-security:b=%
@set self-security=%self-security:c=%
@set self-security=%self-security:d=%
@set self-security=%self-security:e=%
@set self-security=%self-security:f=%
@set self-security=%self-security:g=%
@set self-security=%self-security:h=%
@set self-security=%self-security:i=%
@set self-security=%self-security:j=%
@set self-security=%self-security:k=%
@set self-security=%self-security:l=%
@set self-security=%self-security:m=%
@set self-security=%self-security:n=%
@set self-security=%self-security:o=%
@set self-security=%self-security:p=%
@set self-security=%self-security:q=%
@set self-security=%self-security:r=%
@set self-security=%self-security:s=%
@set self-security=%self-security:t=%
@set self-security=%self-security:u=%
@set self-security=%self-security:v=%
@set self-security=%self-security:w=%
@set self-security=%self-security:x=%
@set self-security=%self-security:y=%
@set self-security=%self-security:9=1%
@set self-security=%self-security:Z=y%
@set self-security=%self-security:0=9%
@set self-security=%self-security:5=8%
@if not "yy981"=="%self-security%" start /min msg %username% /w このファイルは改ざんされた可能性が非常に高いため削除しました^

公式の配布元(https://cxyzt26408.wixsite.com/yy981)からダウンロードしてください by %self-security% &timeout /t 1 /nobreak >nul&del %0

rem 準備
set cmd=0
goto sjb

:sii
rem yy981リセット
if %m_ver_h%==0 rmdir %systemdrive%yy981 /s /q
if %m_ver_h%==0 mkdir %systemdrive%yy981

rem verごとのフォルダ
cd %systemdrive%\

rem 各種データ
cd %yy981_d%\
mkdir temp profile soft

rem _データ作成
cd %yy981_d%\profile\
mkdir _

rem プロファイル
cd %yy981_d%\profile\_\
mkdir setting\cmddsk cmddsk


rem プロファイル複製
cd %yy981_d%\profile\

echo d|xcopy /e _ z >nul
echo d|xcopy /e _ 1 >nul
echo d|xcopy /e _ 2 >nul
echo d|xcopy /e _ 3 >nul
echo d|xcopy /e _ 4 >nul
echo d|xcopy /e _ 5 >nul
echo d|xcopy /e _ 6 >nul
echo d|xcopy /e _ 7 >nul
echo d|xcopy /e _ 8 >nul
echo d|xcopy /e _ 9 >nul

rem 生成時記録
echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >%yy981_d%\soft\yy981_生成時.yy981

rem lock生成時書き込み
cd %yy981_d%\
echo 0 >%yy981_d%\profile\z\setting\lock.yy981


if %initial%==0 (
cd %yy981_kd%\
set /p yy981_d_back=<%yy981_kd%\yy981_system-path.yy981
echo d | xcopy /e /y %yy981_d_back%\profile %yy981_d%\profile >nul
)

goto sjb

:sjb

rem 最終準備処理+毎開始時共通処理内容(file)
cd %systemdrive%\

if not exist %yy981_d%\profile\%pf%\cmddsk\_.yy981 (
rem c8_タイトル
type nul >%yy981_d%\profile\%pf%\cmddsk\_.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_a.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_b.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_c.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_d.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_e.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_f.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_g.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_h.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_i.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_j.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_k.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_l.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_m.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_n.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_o.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_p.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_q.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_r.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_s.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_t.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_u.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_v.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_w.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_x.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_y.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\8_t_z.yy981
rem =============================================
rem c8_内容
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_a.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_b.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_c.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_d.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_e.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_f.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_g.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_h.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_i.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_j.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_k.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_l.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_m.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_n.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_o.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_p.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_q.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_r.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_s.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_t.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_u.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_v.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_w.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_x.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_y.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\8_n_z.yy981
rem =============================================
rem =============================================
rem =============================================
rem c9_タイトル
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_a.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_b.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_c.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_d.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_e.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_f.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_g.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_h.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_i.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_j.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_k.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_l.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_m.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_n.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_o.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_p.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_q.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_r.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_s.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_t.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_u.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_v.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_w.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_x.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_y.yy981
echo ユーザー未設定>%yy981_d%\profile\%pf%\cmddsk\9_t_z.yy981
rem =============================================
rem c9_内容
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_a.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_b.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_c.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_d.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_e.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_f.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_g.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_h.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_i.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_j.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_k.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_l.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_m.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_n.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_o.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_p.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_q.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_r.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_s.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_t.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_u.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_v.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_w.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_x.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_y.yy981
echo echo ユーザーが設定できます>%yy981_d%\profile\%pf%\cmddsk\9_n_z.yy981
)

if not exist %yy981_d%\soft\log.yy981 echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >%yy981_d%\soft\log.yy981
echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >>%yy981_d%\soft\log.yy981

if %initial%==0 if "%shortcutfile%"=="1 " (
echo @echo off >%yy981_temp%\yy981-program_starter.bat
echo title yy981_starter >>%yy981_temp%\yy981-program_starter.bat
echo :yy981-program_starter_loopstart >>%yy981_temp%\yy981-program_starter.bat
echo call "%yy981_d%\yy981ver%yy981ver%.exe" >>%yy981_temp%\yy981-program_starter.bat
echo if exist %yy981_temp%\exit del %yy981_temp%\exit^&exit >>%yy981_temp%\yy981-program_starter.bat
echo msg %username% /w yy981_programがエラーによって終了したので再起動します >>%yy981_temp%\yy981-program_starter.bat
echo goto yy981-program_starter_loopstart >>%yy981_temp%\yy981-program_starter.bat
)
if %initial%==1 (
echo @echo off >"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo title yy981_starter >>"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo :yy981-program_starter_loopstart >"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo call "%yy981_d%\yy981ver%yy981ver%.exe" >>"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo if exist %yy981_temp%\exit del %yy981_temp%\exit^&exit >>"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo msg %username% /w yy981_programがエラーによって終了したので再起動します >>"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
echo goto yy981-program_starter_loopstart >>"%systemdrive%\users\%username%\desktop\yy981-program_ショートカット.bat"
)

rem =====
if not exist %yy981_temp%\na.bat (
echo set na_out=[?]>>%yy981_temp%\na.bat
echo if %%na_in%%==0 set na_out=[N]>>%yy981_temp%\na.bat
echo if %%na_in%%==1 set na_out=[Y]>>%yy981_temp%\na.bat
)
rem =====

cd %systemdrive%\
cls
set startup=0
set file_y_b=0

set return_point=g_j
set file_y_b=1
goto file_y
:g_j_fs

set cmd=0
set cmd_u_b=%yy981_d_back%profile\%pf%\setting\cmd_u_b.yy981
if %cmd_u_b%==0 set cmd=1
set yy981_startup=0
set startup=0
set startup_home=1

goto home

rem /////////////////////////////////////////////////////////////////////
:home
if exist %yy981_d%\profile\%pf%\setting\name.yy981 (set /p yy981_title-p=<%yy981_d%\profile\%pf%\setting\name.yy981
) else (set yy981_title-p=profilename)

set yy981_title-p=%yy981_title-p:~-100,-1%
title %yy981_title%{%yy981_title-p%}^|systems

endlocal
set return_point=home_1
goto file_y
:home_1_fs

goto home_system
:home_2_fs

if %startup_home%==0 (echo.&echo.&echo.) else (set startup_home=0)

if %cmd%==0 set home_sr=0&goto cmddsk0
if %cmd%==1 set home_sr=0&goto cmddsk1
if %cmd%==2 set home_sr=0&goto cmddsk2
if %cmd%==3 set home_sr=0&goto cmddsk3
if %cmd%==4 set home_sr=0&goto cmddsk4
if %cmd%==5 set home_sr=0&goto cmddsk5
if %cmd%==6 set home_sr=0&goto cmddsk6
if %cmd%==7 set home_sr=0&goto cmddsk7
if %cmd%==8 set home_sr=0&goto cmddsk8
if %cmd%==9 set home_sr=0&goto cmddsk9
if %cmd%==p set home_sr=0&goto pfs

echo エラー修正完了
if %cmd_u_b%==1 set cmd=0
if %cmd_u_b%==0 set cmd=1
if %home_sr%==5 (
echo yy981_systems項目の標準エラー修正システムを5回実行しましたが、エラーを修正できませんでした どうしますか?
rem _
choice /n /m "1.デバックへ 2.yy981の再起動 3.ホームページを開いてダウンロードしなおす"
if %errorlevel%==1 goto debug
if %errorlevel%==2 goto @1b_b
if %errorlevel%==3 start https://cxyzt26408.wixsite.com/yy981
)
set /a home_sr=%home_sr%+1
goto home

/////////////////////////////////////////////////////////////////////
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:pfs
;

choice /m プロファイルを変更しますか？
if %errorlevel%==2 (
set cmd=0
if %cmd_u_b%==0 set cmd=1
goto home
)

set file_y_b=1
set return_point=pfs
goto file_y
:pfs_fs

title %yy981_title%^|プロファイル選択
echo プロファイルを選択

echo プロファイル1:%pfname1%
echo プロファイル2:%pfname2%
echo プロファイル3:%pfname3%
echo プロファイル4:%pfname4%
echo プロファイル5:%pfname5%
echo プロファイル6:%pfname6%
echo プロファイル7:%pfname7%
echo プロファイル8:%pfname8%
echo プロファイル9:%pfname9%

choice /c 123456789
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 set pf=1
if %errorlevel%==2 set pf=2
if %errorlevel%==3 set pf=3
if %errorlevel%==4 set pf=4
if %errorlevel%==5 set pf=5
if %errorlevel%==6 set pf=6
if %errorlevel%==7 set pf=7
if %errorlevel%==8 set pf=8
if %errorlevel%==9 set pf=9

echo プロファイル%pf%に変更して再起動
rem set cmd=0
rem if %cmd_u_b%==0 set cmd=1
echo %pf% >%yy981_d%\profile\z\setting\pf.yy981
goto start

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk1
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ1(pcシステム and yy981-programシステム)

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. pc系
echo b. yy981-program系
echo c. 設定
echo d. コマンドデスクトップ設定
echo e. 情報
echo f. 説明
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk2
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ2(アプリ)

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. explorer
echo b. browser
echo c. microsoft
echo d. 未設定
echo e. 未設定
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk3
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ3(ツール-1[bat])

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. 時計系
echo b. 乱数生成
echo c. 圧縮^&解凍
echo d. explorer
echo e. ファイル内容によるファイル検索
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk4
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ4(ツール-2[bat])

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. 未設定
echo b. 未設定
echo c. 未設定
echo d. 未設定
echo e. 未設定
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk5
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ5(ゲーム-1[bat])

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. 宝探しゲーム的なもの
echo b. 未設定
echo c. 未設定
echo d. 未設定
echo e. 未設定
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk6
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ6(ゲーム-2[bat])

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. 未設定
echo b. 未設定
echo c. 未設定
echo d. 未設定
echo e. 未設定
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk7
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ7(余白)

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. 未設定
echo b. 未設定
echo c. 未設定
echo d. 未設定
echo e. 未設定
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 1~7
if %errorlevel%==12 set alf=b&goto 1~7
if %errorlevel%==13 set alf=c&goto 1~7
if %errorlevel%==14 set alf=d&goto 1~7
if %errorlevel%==15 set alf=e&goto 1~7
if %errorlevel%==16 set alf=f&goto 1~7
if %errorlevel%==17 set alf=g&goto 1~7
if %errorlevel%==18 set alf=h&goto 1~7
if %errorlevel%==19 set alf=i&goto 1~7
if %errorlevel%==20 set alf=j&goto 1~7
if %errorlevel%==21 set alf=k&goto 1~7
if %errorlevel%==22 set alf=l&goto 1~7
if %errorlevel%==23 set alf=m&goto 1~7
if %errorlevel%==24 set alf=n&goto 1~7
if %errorlevel%==25 set alf=o&goto 1~7
if %errorlevel%==26 set alf=p&goto 1~7
if %errorlevel%==27 set alf=q&goto 1~7
if %errorlevel%==28 set alf=r&goto 1~7
if %errorlevel%==29 set alf=s&goto 1~7
if %errorlevel%==30 set alf=t&goto 1~7
if %errorlevel%==31 set alf=u&goto 1~7
if %errorlevel%==32 set alf=v&goto 1~7
if %errorlevel%==33 set alf=w&goto 1~7
if %errorlevel%==34 set alf=x&goto 1~7
if %errorlevel%==35 set alf=y&goto 1~7
if %errorlevel%==36 set alf=z&goto 1~7

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk8
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ8(ユーザー指定-1)

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. %#yy981_user-setting_8_t_a.yy981%
echo b. %#yy981_user-setting_8_t_b.yy981%
echo c. %#yy981_user-setting_8_t_c.yy981%
echo d. %#yy981_user-setting_8_t_d.yy981%
echo e. %#yy981_user-setting_8_t_e.yy981%
echo f. %#yy981_user-setting_8_t_f.yy981%
echo g. %#yy981_user-setting_8_t_g.yy981%
echo h. %#yy981_user-setting_8_t_h.yy981%
echo i. %#yy981_user-setting_8_t_i.yy981%
echo j. %#yy981_user-setting_8_t_j.yy981%
echo k. %#yy981_user-setting_8_t_k.yy981%
echo l. %#yy981_user-setting_8_t_l.yy981%
echo m. %#yy981_user-setting_8_t_m.yy981%
echo n. %#yy981_user-setting_8_t_n.yy981%
echo o. %#yy981_user-setting_8_t_o.yy981%
echo p. %#yy981_user-setting_8_t_p.yy981%
echo q. %#yy981_user-setting_8_t_q.yy981%
echo r. %#yy981_user-setting_8_t_r.yy981%
echo s. %#yy981_user-setting_8_t_s.yy981%
echo t. %#yy981_user-setting_8_t_t.yy981%
echo u. %#yy981_user-setting_8_t_u.yy981%
echo v. %#yy981_user-setting_8_t_v.yy981%
echo w. %#yy981_user-setting_8_t_w.yy981%
echo x. %#yy981_user-setting_8_t_x.yy981%
echo y. %#yy981_user-setting_8_t_y.yy981%
echo z. %#yy981_user-setting_8_t_z.yy981%

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 8~9
if %errorlevel%==12 set alf=b&goto 8~9
if %errorlevel%==13 set alf=c&goto 8~9
if %errorlevel%==14 set alf=d&goto 8~9
if %errorlevel%==15 set alf=e&goto 8~9
if %errorlevel%==16 set alf=f&goto 8~9
if %errorlevel%==17 set alf=g&goto 8~9
if %errorlevel%==18 set alf=h&goto 8~9
if %errorlevel%==19 set alf=i&goto 8~9
if %errorlevel%==20 set alf=j&goto 8~9
if %errorlevel%==21 set alf=k&goto 8~9
if %errorlevel%==22 set alf=l&goto 8~9
if %errorlevel%==23 set alf=m&goto 8~9
if %errorlevel%==24 set alf=n&goto 8~9
if %errorlevel%==25 set alf=o&goto 8~9
if %errorlevel%==26 set alf=p&goto 8~9
if %errorlevel%==27 set alf=q&goto 8~9
if %errorlevel%==28 set alf=r&goto 8~9
if %errorlevel%==29 set alf=s&goto 8~9
if %errorlevel%==30 set alf=t&goto 8~9
if %errorlevel%==31 set alf=u&goto 8~9
if %errorlevel%==32 set alf=v&goto 8~9
if %errorlevel%==33 set alf=w&goto 8~9
if %errorlevel%==34 set alf=x&goto 8~9
if %errorlevel%==35 set alf=y&goto 8~9
if %errorlevel%==36 set alf=z&goto 8~9

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk9
;
title %yy981_title%{%yy981_title-p%}^|デスクトップ9(ユーザー指定-2)

if %cmd_u_b%==0 echo 1～9キーでcmdデスクトップ切り替え 0でプロファイル切り替えへ
if %cmd_u_b%==1 echo 1～9キーでcmdデスクトップ切り替え 0で新分岐へ

echo a. %#yy981_user-setting_9_t_a.yy981%
echo b. %#yy981_user-setting_9_t_b.yy981%
echo c. %#yy981_user-setting_9_t_c.yy981%
echo d. %#yy981_user-setting_9_t_d.yy981%
echo e. %#yy981_user-setting_9_t_e.yy981%
echo f. %#yy981_user-setting_9_t_f.yy981%
echo g. %#yy981_user-setting_9_t_g.yy981%
echo h. %#yy981_user-setting_9_t_h.yy981%
echo i. %#yy981_user-setting_9_t_i.yy981%
echo j. %#yy981_user-setting_9_t_j.yy981%
echo k. %#yy981_user-setting_9_t_k.yy981%
echo l. %#yy981_user-setting_9_t_l.yy981%
echo m. %#yy981_user-setting_9_t_m.yy981%
echo n. %#yy981_user-setting_9_t_n.yy981%
echo o. %#yy981_user-setting_9_t_o.yy981%
echo p. %#yy981_user-setting_9_t_p.yy981%
echo q. %#yy981_user-setting_9_t_q.yy981%
echo r. %#yy981_user-setting_9_t_r.yy981%
echo s. %#yy981_user-setting_9_t_s.yy981%
echo t. %#yy981_user-setting_9_t_t.yy981%
echo u. %#yy981_user-setting_9_t_u.yy981%
echo v. %#yy981_user-setting_9_t_v.yy981%
echo w. %#yy981_user-setting_9_t_w.yy981%
echo x. %#yy981_user-setting_9_t_x.yy981%
echo y. %#yy981_user-setting_9_t_y.yy981%
echo z. %#yy981_user-setting_9_t_z.yy981%

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if %errorlevel%==1 (set cmd=1&goto home)
if %errorlevel%==2 (set cmd=2&goto home)
if %errorlevel%==3 (set cmd=3&goto home)
if %errorlevel%==4 (set cmd=4&goto home)
if %errorlevel%==5 (set cmd=5&goto home)
if %errorlevel%==6 (set cmd=6&goto home)
if %errorlevel%==7 (set cmd=7&goto home)
if %errorlevel%==8 (set cmd=8&goto home)
if %errorlevel%==9 (set cmd=9&goto home)
if %errorlevel%==10 (set cmd=0&goto home)

if %errorlevel%==11 set alf=a&goto 8~9
if %errorlevel%==12 set alf=b&goto 8~9
if %errorlevel%==13 set alf=c&goto 8~9
if %errorlevel%==14 set alf=d&goto 8~9
if %errorlevel%==15 set alf=e&goto 8~9
if %errorlevel%==16 set alf=f&goto 8~9
if %errorlevel%==17 set alf=g&goto 8~9
if %errorlevel%==18 set alf=h&goto 8~9
if %errorlevel%==19 set alf=i&goto 8~9
if %errorlevel%==20 set alf=j&goto 8~9
if %errorlevel%==21 set alf=k&goto 8~9
if %errorlevel%==22 set alf=l&goto 8~9
if %errorlevel%==23 set alf=m&goto 8~9
if %errorlevel%==24 set alf=n&goto 8~9
if %errorlevel%==25 set alf=o&goto 8~9
if %errorlevel%==26 set alf=p&goto 8~9
if %errorlevel%==27 set alf=q&goto 8~9
if %errorlevel%==28 set alf=r&goto 8~9
if %errorlevel%==29 set alf=s&goto 8~9
if %errorlevel%==30 set alf=t&goto 8~9
if %errorlevel%==31 set alf=u&goto 8~9
if %errorlevel%==32 set alf=v&goto 8~9
if %errorlevel%==33 set alf=w&goto 8~9
if %errorlevel%==34 set alf=x&goto 8~9
if %errorlevel%==35 set alf=y&goto 8~9
if %errorlevel%==36 set alf=z&goto 8~9

echo エラーが発生しました
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
_____________________________________________________________________
:@1a 
title %sn%(pc系)


echo a. pcを再起動
echo b. pcをシャットダウン
echo c. pcをスリープ
echo d. pcを休止
echo e. アカウントからサインアウト
echo f. 未設定
echo g. 未設定
echo h. 未設定
echo i. 未設定
echo j. 未設定
echo k. 未設定
echo l. 未設定
echo m. 未設定
echo n. 未設定
echo o. 未設定
echo p. 未設定
echo q. 未設定
echo r. 未設定
echo s. 未設定
echo t. 未設定
echo u. 未設定
echo v. 未設定
echo w. 未設定
echo x. 未設定
echo y. 未設定
echo z. 未設定

choice /c 0abcdefghijklmnopqrstuvwxyz /n /m "A～Z or 0"
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto home

if %errorlevel%==2 goto %yy981path%_a
if %errorlevel%==3 goto %yy981path%_b
if %errorlevel%==4 goto %yy981path%_c
if %errorlevel%==5 goto %yy981path%_d
if %errorlevel%==6 goto %yy981path%_e
if %errorlevel%==7 goto %yy981path%_f
if %errorlevel%==8 goto %yy981path%_g
if %errorlevel%==9 goto %yy981path%_h
if %errorlevel%==10 goto %yy981path%_i
if %errorlevel%==11 goto %yy981path%_j
if %errorlevel%==12 goto %yy981path%_k
if %errorlevel%==13 goto %yy981path%_l
if %errorlevel%==14 goto %yy981path%_m
if %errorlevel%==15 goto %yy981path%_n
if %errorlevel%==16 goto %yy981path%_o
if %errorlevel%==17 goto %yy981path%_p
if %errorlevel%==18 goto %yy981path%_q
if %errorlevel%==19 goto %yy981path%_r
if %errorlevel%==20 goto %yy981path%_s
if %errorlevel%==21 goto %yy981path%_t
if %errorlevel%==22 goto %yy981path%_u
if %errorlevel%==23 goto %yy981path%_v
if %errorlevel%==24 goto %yy981path%_w
if %errorlevel%==25 goto %yy981path%_x
if %errorlevel%==26 goto %yy981path%_y
if %errorlevel%==27 goto %yy981path%_z

echo エラーが発生しました
goto home


---------------------------------------------------------------------
:@1a_a
title %sn%(pcを再起動)
echo pcを再起動しますか？


choice
if %errorlevel%==1 shutdown /r /t 0


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_b
title %sn%(pcをシャットダウン)
echo pcをシャットダウンしますか？


choice
if %errorlevel%==1 shutdown /s /t 0


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_c
title %sn%(pcをスリープ)
echo pcをスリープしますか？


choice
if %errorlevel%==1 rundll32 powrprof.dll,SetSuspendState 0,1,0


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_d
title %sn%(pcを休止)
echo pcを休止しますか？


choice
if %errorlevel%==1 shutdown /h


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_e
title %sn%(アカウントからサインアウト)
echo アカウントからサインアウトしますか？


choice
if %errorlevel%==1 shutdown /l


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_f
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_g
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_h
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_i
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_j
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_k
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_l
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_m
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_n
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_o
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_p
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_q
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_r
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_s
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_t
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_u
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_v
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_w
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_x
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_y
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1a_z
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1b 
title %sn%(yy981系)


echo a. 終了

echo b. 再起動

echo c. 設定をエクスポート

echo d. 設定をインポート

echo e. プロファイルのリセット


choice /c 0abcde /n /m "A～D or 0"
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto home

if %errorlevel%==2 goto %yy981path%_a
if %errorlevel%==3 goto %yy981path%_b
if %errorlevel%==4 goto %yy981path%_c
if %errorlevel%==5 goto %yy981path%_d
if %errorlevel%==6 goto %yy981path%_e
if %errorlevel%==7 goto %yy981path%_f
if %errorlevel%==8 goto %yy981path%_g
if %errorlevel%==9 goto %yy981path%_h
if %errorlevel%==10 goto %yy981path%_i
if %errorlevel%==11 goto %yy981path%_j
if %errorlevel%==12 goto %yy981path%_k
if %errorlevel%==13 goto %yy981path%_l
if %errorlevel%==14 goto %yy981path%_m
if %errorlevel%==15 goto %yy981path%_n
if %errorlevel%==16 goto %yy981path%_o
if %errorlevel%==17 goto %yy981path%_p
if %errorlevel%==18 goto %yy981path%_q
if %errorlevel%==19 goto %yy981path%_r
if %errorlevel%==20 goto %yy981path%_s
if %errorlevel%==21 goto %yy981path%_t
if %errorlevel%==22 goto %yy981path%_u
if %errorlevel%==23 goto %yy981path%_v
if %errorlevel%==24 goto %yy981path%_w
if %errorlevel%==25 goto %yy981path%_x
if %errorlevel%==26 goto %yy981path%_y
if %errorlevel%==27 goto %yy981path%_z


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_a
title %sn%(終了)


choice /m yy981を終了しますか?
if %errorlevel%==2 (
echo キャンセルしました
echo 何かキーを押すとホームに戻ります
pause>nul
goto home

)
type nul >%yy981_temp%\exit
exit


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_b
title %sn%(再起動)


choice /m yy981を再起動しますか?
if %errorlevel%==2 (
echo キャンセルしました
echo 何かキーを押すとホームに戻ります
pause>nul
goto home

)
echo @timeout /t 3 /nobreak ^>nul ^& call %yy981_temp%\yy981-program_starter.bat >%temp%\_.bat
start %temp%\_.bat
type nul >%yy981_temp%\exit
exit


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_c
title %sn%(設定をエクスポート)


cd %yy981_temp%\
rem echo d|xcopy /e /y %yy981_d%\profile\%pf% %yy981_temp%\cab >nul
rem echo d|xcopy /e /y %yy981_d%\profile\z %yy981_temp%\cab >nul

cd %yy981_d%\profile\

echo 1. プロファイル1
echo 2. プロファイル2
echo 3. プロファイル3
echo 4. プロファイル4
echo 5. プロファイル5
echo 6. プロファイル6
echo 7. プロファイル7
echo 8. プロファイル8
echo 9. プロファイル9
echo a. 全て
echo b. 現在使用中のプロファイル

choice /c 0123456789ab
if %errorlevel%==1 goto home
if %errorlevel%==2 set set_ex=%yy981_d%\profile\1
if %errorlevel%==3 set set_ex=%yy981_d%\profile\2
if %errorlevel%==4 set set_ex=%yy981_d%\profile\3
if %errorlevel%==5 set set_ex=%yy981_d%\profile\4
if %errorlevel%==6 set set_ex=%yy981_d%\profile\5
if %errorlevel%==7 set set_ex=%yy981_d%\profile\6
if %errorlevel%==8 set set_ex=%yy981_d%\profile\7
if %errorlevel%==9 set set_ex=%yy981_d%\profile\8
if %errorlevel%==10 set set_ex=%yy981_d%\profile\9
if %errorlevel%==11 set set_ex=%yy981_d%\profile
if %errorlevel%==12 set set_ex=%yy981_d%\profile\%pf%



cd %yy981_temp%\
set BEFORE_STRING=%set_ex%\
set AFTER_STRING=

setlocal enabledelayedexpansion
echo .Set DestinationDir= > cab.ddf
for %%f in (%set_ex%\*) do (
    echo "%%f" >> cab.ddf
)
for /d /r %set_ex% %%d in (*) do (
    set line=%%d
    echo line !line! >nul
    echo before !BEFORE_STRING! >nul
    echo after !AFTER_STRING! >nul
    echo .Set DestinationDir="!line:%BEFORE_STRING%=%AFTER_STRING%!" >> cab.ddf
    for %%f in ("%%d\*") do (
        echo "%%f" >> cab.ddf
    )
)

makecab.exe /f cab.ddf >nul
move /y disk1\1.cab .\ >nul
if exist disk1 rd disk1
rem if exist cab.ddf del /F cab.ddf
rem if exist setup.inf del /F setup.inf
rem if exist setup.rpt del /F setup.rpt

copy /y %yy981_temp%\1.cab %user_d%\yy981_setting.y9 >nul

echo ユーザーディレクトリに[%user_d%\yy981_setting.y9]という名前で出力しました
cd %systemdrive%\


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_d
title %sn%(設定をインポート)


set return_point=@1b_d
goto ex
:@1b_d_es
echo このファイルはどのデータですか?
echo 1. プロファイル1
echo 2. プロファイル2
echo 3. プロファイル3
echo 4. プロファイル4
echo 5. プロファイル5
echo 6. プロファイル6
echo 7. プロファイル7
echo 8. プロファイル8
echo 9. プロファイル9
echo a. 全て
echo b. 現在使用中のプロファイル

choice /c 0123456789ab
if %errorlevel%==1 goto home
if %errorlevel%==2 set set_ex=%yy981_d%\profile\1
if %errorlevel%==3 set set_ex=%yy981_d%\profile\2
if %errorlevel%==4 set set_ex=%yy981_d%\profile\3
if %errorlevel%==5 set set_ex=%yy981_d%\profile\4
if %errorlevel%==6 set set_ex=%yy981_d%\profile\5
if %errorlevel%==7 set set_ex=%yy981_d%\profile\6
if %errorlevel%==8 set set_ex=%yy981_d%\profile\7
if %errorlevel%==9 set set_ex=%yy981_d%\profile\8
if %errorlevel%==10 set set_ex=%yy981_d%\profile\9
if %errorlevel%==11 set set_ex=%yy981_d%\profile
if %errorlevel%==12 set set_ex=%yy981_d%\profile\%pf%

expand /f:* %ex_output% %set_ex% >nul


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_e
title %sn%(プロファイルのリセット)


choice /m 本当にリセットしますか?
if %errorlevel%==2 echo キャンセルしました&goto home

set return_point=@1b_e
goto pass
:@1b_e_ps
if %pson%==error echo error&goto @1c_2
if %pson%==1 goto @1b_e_go
if %pson%==0 echo パスワード入力に失敗したのでホームに戻ります&goto home

:@1b_e_go


set set_ex=%yy981_d%\profile\%pf%
cd %yy981_temp%\
set BEFORE_STRING=%set_ex%\
set AFTER_STRING=

setlocal enabledelayedexpansion
echo .Set DestinationDir= > cab.ddf
for %%f in (%set_ex%\*) do (
    echo "%%f" >> cab.ddf
)
for /d /r %set_ex% %%d in (*) do (
    set line=%%d
    echo line !line! >nul
    echo before !BEFORE_STRING! >nul
    echo after !AFTER_STRING! >nul
    echo .Set DestinationDir="!line:%BEFORE_STRING%=%AFTER_STRING%!" >> cab.ddf
    for %%f in ("%%d\*") do (
        echo "%%f" >> cab.ddf
    )
)

makecab.exe /f cab.ddf >nul
move /y disk1\1.cab .\ >nul
if exist disk1 rd disk1
rem if exist cab.ddf del /F cab.ddf
rem if exist setup.inf del /F setup.inf
rem if exist setup.rpt del /F setup.rpt

copy /y %yy981_temp%\1.cab %user_d%\yy981_setting.y9 >nul

echo ユーザーディレクトリに[%user_d%\yy981_setting.y9]という名前でバックアップ用のデータを出力しました
cd %systemdrive%\
rmdir %yy981_d%\profile\%pf%

cd %yy981_d%\profile\
echo d|xcopy /e _ %pf% >nul
cd %systemdrive%\
echo プロファイル%pf%をリセットしました


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_f
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_g
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_h
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_i
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_j
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_k
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_l
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_m
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_n
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_o
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_p
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_q
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_r
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_s
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_t
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_u
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_v
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_w
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_x
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_y
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1b_z
title %sn%()





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1c 
title %yy981_title%^|設定


set return_point=@1c
set file_y_b=1
goto file_y
:@1c_fs

echo.
echo.

echo 0. ホームに戻る
echo 1. [@]表示色
echo 2. [#]パスワード
set na_in=%cmd_u_b%
%yy981_na%
echo 3. %na_out%新分岐
set na_in=%shortcutfile%
%yy981_na%
echo 4. %na_out%ユーザーディレクトリ
echo 5. [@]プロファイル名変更

set settingpath=#
set /p settingpath=入力欄:

echo.
echo.
if %settingpath%==# echo 上記の数字を入力してください&goto @1c
if %settingpath%==0 goto home
if %settingpath%==1 goto @1c_%settingpath%
if %settingpath%==2 goto @1c_%settingpath%
if %settingpath%==3 goto @1c_%settingpath%
if %settingpath%==4 goto @1c_%settingpath%
if %settingpath%==5 goto @1c_%settingpath%

echo 上記の数字を入力してください
goto @1c
---------------------------------------------------------------------
:@1c_1
title %sn%(表示色)


echo 0：黒

echo 1：青

echo 2：緑

echo 3：水色

echo 4：赤

echo 5：紫

echo 6：黄色

echo 7：白

echo 8：灰色

echo 9：明るい青

echo A：明るい緑

echo B：明るい水色

echo C：明るい赤

echo D：明るい紫

echo E：明るい黄色

echo F：輝く白

echo.

echo       ^| 初期設定   現在設定

echo 背景色^| 0           %color:~0,1%

echo 文字色^| 3           %color:~1,1%

echo.

set @1c_b_a_h=%color:~1,1%
echo 背景色を選択

choice /c 0123456789abcdef
if %errorlevel%==1 set @1c_b_a_h=0
if %errorlevel%==2 set @1c_b_a_h=1
if %errorlevel%==3 set @1c_b_a_h=2
if %errorlevel%==4 set @1c_b_a_h=3
if %errorlevel%==5 set @1c_b_a_h=4
if %errorlevel%==6 set @1c_b_a_h=5
if %errorlevel%==7 set @1c_b_a_h=6
if %errorlevel%==8 set @1c_b_a_h=7
if %errorlevel%==9 set @1c_b_a_h=8
if %errorlevel%==10 set @1c_b_a_h=9
if %errorlevel%==11 set @1c_b_a_h=a
if %errorlevel%==12 set @1c_b_a_h=b
if %errorlevel%==13 set @1c_b_a_h=c
if %errorlevel%==14 set @1c_b_a_h=d
if %errorlevel%==15 set @1c_b_a_h=e
if %errorlevel%==16 set @1c_b_a_h=f


set @1c_b_a_m=%color:~0,1%
echo 文字色を選択

choice /c 0123456789abcdef
if %errorlevel%==1 set @1c_b_a_m=0
if %errorlevel%==2 set @1c_b_a_m=1
if %errorlevel%==3 set @1c_b_a_m=2
if %errorlevel%==4 set @1c_b_a_m=3
if %errorlevel%==5 set @1c_b_a_m=4
if %errorlevel%==6 set @1c_b_a_m=5
if %errorlevel%==7 set @1c_b_a_m=6
if %errorlevel%==8 set @1c_b_a_m=7
if %errorlevel%==9 set @1c_b_a_m=8
if %errorlevel%==10 set @1c_b_a_m=9
if %errorlevel%==11 set @1c_b_a_m=a
if %errorlevel%==12 set @1c_b_a_m=b
if %errorlevel%==13 set @1c_b_a_m=c
if %errorlevel%==14 set @1c_b_a_m=d
if %errorlevel%==15 set @1c_b_a_m=e
if %errorlevel%==16 set @1c_b_a_m=f


echo %@1c_b_a_h%%@1c_b_a_m% >%yy981_d%\profile\%pf%\setting\color.yy981


echo 何かキーを押すとホームに戻ります
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_2
title %sn%(パスワード)


choice /m 変更しますか?
if %errorlevel%==2 (
echo キャンセルしました
goto home
)

set return_point=@1c_2_1
goto pass
:@1c_2_1_ps
if %pson%==error echo error&goto @1c_2
if %pson%==1 goto @1c_2_set
if %pson%==0 echo パスワード入力に失敗したのでホームに戻ります&goto home

:@1c_2_return


:@1c_2_set
set @1c_2_in=00000
set @1c_2_in2=00000
set /p @1c_2_in=新しいパスワードを入力してください※特殊記号を除く(空白の場合は00000):
set /p @1c_2_in2=[確認用]新しいパスワードを入力してください※特殊記号を除く(空白の場合は00000):

if not "%@1c_2_in%"=="%@1c_2_in2%" (
echo.
echo 新しいパスワードの2つの入力が違います
goto @1c_2_set
)

@set msg_in=%@1c_2_in%
set return_point=@1c_2_2
set msg_mode=1
goto msg
:@1c_2_2_ms
@set ps=%msg_out%

@echo %ps%>%yy981_d%\profile\%pf%\setting\pass.yy981

echo 何かキーを押すとホームに戻ります
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_3


choice /m 新分岐
if %errorlevel%==1 echo 1 >%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981
if %errorlevel%==2 echo 0 >%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981


echo 何かキーを押すとホームに戻ります
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_4


choice ユーザーディレクトリ(パスに空白を含めないでください)を変更?
if %errorlevel%==2 goto @1c

set return_point=@1c_4
goto ex
:@1c_4_es
echo %ex_output%>%yy981_d%\profile\%pf%\setting\user_d.yy981

echo 何かキーを押すとホームに戻ります
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_5


echo 1. %pfname1%
echo 2. %pfname2%
echo 3. %pfname3%
echo 4. %pfname4%
echo 5. %pfname5%
echo 6. %pfname6%
echo 7. %pfname7%
echo 8. %pfname8%
echo 9. %pfname9%

choice /c 123456789 /m 名前を変更するプロファイルを選択
if %errorlevel%==1 set pfsname_s=1
if %errorlevel%==2 set pfsname_s=2
if %errorlevel%==3 set pfsname_s=3
if %errorlevel%==4 set pfsname_s=4
if %errorlevel%==5 set pfsname_s=5
if %errorlevel%==6 set pfsname_s=6
if %errorlevel%==7 set pfsname_s=7
if %errorlevel%==8 set pfsname_s=8
if %errorlevel%==9 set pfsname_s=9

set pfsname_s_m=#
set /p pfsname_s_m=名前を入力:

if %pfsname_s_m%==# echo 文字を入力してください&goto :@1c_5
echo %pfsname_s_m% >%yy981_d%\profile\%pfsname_s%\setting\name.yy981


echo 何かキーを押すとホームに戻ります
pause>nul
goto @1c
_____________________________________________________________________
:@1d 
title %sn%(コマンドデスクトップ設定)


echo.
echo.

echo 1. コマンドデスクトップ1
echo 2. コマンドデスクトップ2
echo 3. コマンドデスクトップ3
echo 4. コマンドデスクトップ4
echo 5. コマンドデスクトップ5
echo 6. コマンドデスクトップ6
echo 7. コマンドデスクトップ7
echo 8. コマンドデスクトップ8
echo 9. コマンドデスクトップ9

choice /c 0123456789 /n /m "1～9 or 0"
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto home

if %errorlevel%==2 goto %yy981path%_1
if %errorlevel%==3 goto %yy981path%_2
if %errorlevel%==4 goto %yy981path%_3
if %errorlevel%==5 goto %yy981path%_4
if %errorlevel%==6 goto %yy981path%_5
if %errorlevel%==7 goto %yy981path%_6
if %errorlevel%==8 goto %yy981path%_7
if %errorlevel%==9 goto %yy981path%_8
if %errorlevel%==10 goto %yy981path%_9

---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
:@1d_1
title %yy981_title%^|設定^|デスクトップ1


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9  set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@1a&goto s_home
if %errorlevel%==12 set s_yy981path=@1b&goto s_home
if %errorlevel%==13 set s_yy981path=@1c&goto s_home
if %errorlevel%==14 set s_yy981path=@1d&goto s_home
if %errorlevel%==15 set s_yy981path=@1e&goto s_home
if %errorlevel%==16 set s_yy981path=@1f&goto s_home
if %errorlevel%==17 set s_yy981path=@1g&goto s_home
if %errorlevel%==18 set s_yy981path=@1h&goto s_home
if %errorlevel%==19 set s_yy981path=@1i&goto s_home
if %errorlevel%==20 set s_yy981path=@1j&goto s_home
if %errorlevel%==21 set s_yy981path=@1k&goto s_home
if %errorlevel%==22 set s_yy981path=@1l&goto s_home
if %errorlevel%==23 set s_yy981path=@1m&goto s_home
if %errorlevel%==24 set s_yy981path=@1n&goto s_home
if %errorlevel%==25 set s_yy981path=@1o&goto s_home
if %errorlevel%==26 set s_yy981path=@1p&goto s_home
if %errorlevel%==27 set s_yy981path=@1q&goto s_home
if %errorlevel%==28 set s_yy981path=@1r&goto s_home
if %errorlevel%==29 set s_yy981path=@1s&goto s_home
if %errorlevel%==30 set s_yy981path=@1t&goto s_home
if %errorlevel%==31 set s_yy981path=@1u&goto s_home
if %errorlevel%==32 set s_yy981path=@1v&goto s_home
if %errorlevel%==33 set s_yy981path=@1w&goto s_home
if %errorlevel%==34 set s_yy981path=@1x&goto s_home
if %errorlevel%==35 set s_yy981path=@1y&goto s_home
if %errorlevel%==36 set s_yy981path=@1z&goto s_home



@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_2
title %yy981_title%^|設定^|デスクトップ2


echo.echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@2a&goto s_home
if %errorlevel%==12 set s_yy981path=@2b&goto s_home
if %errorlevel%==13 set s_yy981path=@2c&goto s_home
if %errorlevel%==14 set s_yy981path=@2d&goto s_home
if %errorlevel%==15 set s_yy981path=@2e&goto s_home
if %errorlevel%==16 set s_yy981path=@2f&goto s_home
if %errorlevel%==17 set s_yy981path=@2g&goto s_home
if %errorlevel%==18 set s_yy981path=@2h&goto s_home
if %errorlevel%==19 set s_yy981path=@2i&goto s_home
if %errorlevel%==20 set s_yy981path=@2j&goto s_home
if %errorlevel%==21 set s_yy981path=@2k&goto s_home
if %errorlevel%==22 set s_yy981path=@2l&goto s_home
if %errorlevel%==23 set s_yy981path=@2m&goto s_home
if %errorlevel%==24 set s_yy981path=@2n&goto s_home
if %errorlevel%==25 set s_yy981path=@2o&goto s_home
if %errorlevel%==26 set s_yy981path=@2p&goto s_home
if %errorlevel%==27 set s_yy981path=@2q&goto s_home
if %errorlevel%==28 set s_yy981path=@2r&goto s_home
if %errorlevel%==29 set s_yy981path=@2s&goto s_home
if %errorlevel%==30 set s_yy981path=@2t&goto s_home
if %errorlevel%==31 set s_yy981path=@2u&goto s_home
if %errorlevel%==32 set s_yy981path=@2v&goto s_home
if %errorlevel%==33 set s_yy981path=@2w&goto s_home
if %errorlevel%==34 set s_yy981path=@2x&goto s_home
if %errorlevel%==35 set s_yy981path=@2y&goto s_home
if %errorlevel%==36 set s_yy981path=@2z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_3
title %yy981_title%^|設定^|デスクトップ3


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@3a&goto s_home
if %errorlevel%==12 set s_yy981path=@3b&goto s_home
if %errorlevel%==13 set s_yy981path=@3c&goto s_home
if %errorlevel%==14 set s_yy981path=@3d&goto s_home
if %errorlevel%==15 set s_yy981path=@3e&goto s_home
if %errorlevel%==16 set s_yy981path=@3f&goto s_home
if %errorlevel%==17 set s_yy981path=@3g&goto s_home
if %errorlevel%==18 set s_yy981path=@3h&goto s_home
if %errorlevel%==19 set s_yy981path=@3i&goto s_home
if %errorlevel%==20 set s_yy981path=@3j&goto s_home
if %errorlevel%==21 set s_yy981path=@3k&goto s_home
if %errorlevel%==22 set s_yy981path=@3l&goto s_home
if %errorlevel%==23 set s_yy981path=@3m&goto s_home
if %errorlevel%==24 set s_yy981path=@3n&goto s_home
if %errorlevel%==25 set s_yy981path=@3o&goto s_home
if %errorlevel%==26 set s_yy981path=@3p&goto s_home
if %errorlevel%==27 set s_yy981path=@3q&goto s_home
if %errorlevel%==28 set s_yy981path=@3r&goto s_home
if %errorlevel%==29 set s_yy981path=@3s&goto s_home
if %errorlevel%==30 set s_yy981path=@3t&goto s_home
if %errorlevel%==31 set s_yy981path=@3u&goto s_home
if %errorlevel%==32 set s_yy981path=@3v&goto s_home
if %errorlevel%==33 set s_yy981path=@3w&goto s_home
if %errorlevel%==34 set s_yy981path=@3x&goto s_home
if %errorlevel%==35 set s_yy981path=@3y&goto s_home
if %errorlevel%==36 set s_yy981path=@3z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_4
title %yy981_title%^|設定^|デスクトップ4


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@4a&goto s_home
if %errorlevel%==12 set s_yy981path=@4b&goto s_home
if %errorlevel%==13 set s_yy981path=@4c&goto s_home
if %errorlevel%==14 set s_yy981path=@4d&goto s_home
if %errorlevel%==15 set s_yy981path=@4e&goto s_home
if %errorlevel%==16 set s_yy981path=@4f&goto s_home
if %errorlevel%==17 set s_yy981path=@4g&goto s_home
if %errorlevel%==18 set s_yy981path=@4h&goto s_home
if %errorlevel%==19 set s_yy981path=@4i&goto s_home
if %errorlevel%==20 set s_yy981path=@4j&goto s_home
if %errorlevel%==21 set s_yy981path=@4k&goto s_home
if %errorlevel%==22 set s_yy981path=@4l&goto s_home
if %errorlevel%==23 set s_yy981path=@4m&goto s_home
if %errorlevel%==24 set s_yy981path=@4n&goto s_home
if %errorlevel%==25 set s_yy981path=@4o&goto s_home
if %errorlevel%==26 set s_yy981path=@4p&goto s_home
if %errorlevel%==27 set s_yy981path=@4q&goto s_home
if %errorlevel%==28 set s_yy981path=@4r&goto s_home
if %errorlevel%==29 set s_yy981path=@4s&goto s_home
if %errorlevel%==30 set s_yy981path=@4t&goto s_home
if %errorlevel%==31 set s_yy981path=@4u&goto s_home
if %errorlevel%==32 set s_yy981path=@4v&goto s_home
if %errorlevel%==33 set s_yy981path=@4w&goto s_home
if %errorlevel%==34 set s_yy981path=@4x&goto s_home
if %errorlevel%==35 set s_yy981path=@4y&goto s_home
if %errorlevel%==36 set s_yy981path=@4z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_5
title %yy981_title%^|設定^|デスクトップ5


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@5a&goto s_home
if %errorlevel%==12 set s_yy981path=@5b&goto s_home
if %errorlevel%==13 set s_yy981path=@5c&goto s_home
if %errorlevel%==14 set s_yy981path=@5d&goto s_home
if %errorlevel%==15 set s_yy981path=@5e&goto s_home
if %errorlevel%==16 set s_yy981path=@5f&goto s_home
if %errorlevel%==17 set s_yy981path=@5g&goto s_home
if %errorlevel%==18 set s_yy981path=@5h&goto s_home
if %errorlevel%==19 set s_yy981path=@5i&goto s_home
if %errorlevel%==20 set s_yy981path=@5j&goto s_home
if %errorlevel%==21 set s_yy981path=@5k&goto s_home
if %errorlevel%==22 set s_yy981path=@5l&goto s_home
if %errorlevel%==23 set s_yy981path=@5m&goto s_home
if %errorlevel%==24 set s_yy981path=@5n&goto s_home
if %errorlevel%==25 set s_yy981path=@5o&goto s_home
if %errorlevel%==26 set s_yy981path=@5p&goto s_home
if %errorlevel%==27 set s_yy981path=@5q&goto s_home
if %errorlevel%==28 set s_yy981path=@5r&goto s_home
if %errorlevel%==29 set s_yy981path=@5s&goto s_home
if %errorlevel%==30 set s_yy981path=@5t&goto s_home
if %errorlevel%==31 set s_yy981path=@5u&goto s_home
if %errorlevel%==32 set s_yy981path=@5v&goto s_home
if %errorlevel%==33 set s_yy981path=@5w&goto s_home
if %errorlevel%==34 set s_yy981path=@5x&goto s_home
if %errorlevel%==35 set s_yy981path=@5y&goto s_home
if %errorlevel%==36 set s_yy981path=@5z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_6
title %yy981_title%^|設定^|デスクトップ6


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@6a&goto s_home
if %errorlevel%==12 set s_yy981path=@6b&goto s_home
if %errorlevel%==13 set s_yy981path=@6c&goto s_home
if %errorlevel%==14 set s_yy981path=@6d&goto s_home
if %errorlevel%==15 set s_yy981path=@6e&goto s_home
if %errorlevel%==16 set s_yy981path=@6f&goto s_home
if %errorlevel%==17 set s_yy981path=@6g&goto s_home
if %errorlevel%==18 set s_yy981path=@6h&goto s_home
if %errorlevel%==19 set s_yy981path=@6i&goto s_home
if %errorlevel%==20 set s_yy981path=@6j&goto s_home
if %errorlevel%==21 set s_yy981path=@6k&goto s_home
if %errorlevel%==22 set s_yy981path=@6l&goto s_home
if %errorlevel%==23 set s_yy981path=@6m&goto s_home
if %errorlevel%==24 set s_yy981path=@6n&goto s_home
if %errorlevel%==25 set s_yy981path=@6o&goto s_home
if %errorlevel%==26 set s_yy981path=@6p&goto s_home
if %errorlevel%==27 set s_yy981path=@6q&goto s_home
if %errorlevel%==28 set s_yy981path=@6r&goto s_home
if %errorlevel%==29 set s_yy981path=@6s&goto s_home
if %errorlevel%==30 set s_yy981path=@6t&goto s_home
if %errorlevel%==31 set s_yy981path=@6u&goto s_home
if %errorlevel%==32 set s_yy981path=@6v&goto s_home
if %errorlevel%==33 set s_yy981path=@6w&goto s_home
if %errorlevel%==34 set s_yy981path=@6x&goto s_home
if %errorlevel%==35 set s_yy981path=@6y&goto s_home
if %errorlevel%==36 set s_yy981path=@6z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_7
title %yy981_title%^|設定^|デスクトップ1


echo.
echo.
echo a. 設定項目なし
echo b. 設定項目なし
echo c. 設定項目なし
echo d. 設定項目なし
echo e. 設定項目なし
echo f. 設定項目なし
echo g. 設定項目なし
echo h. 設定項目なし
echo i. 設定項目なし
echo j. 設定項目なし
echo k. 設定項目なし
echo l. 設定項目なし
echo m. 設定項目なし
echo n. 設定項目なし
echo o. 設定項目なし
echo p. 設定項目なし
echo q. 設定項目なし
echo r. 設定項目なし
echo s. 設定項目なし
echo t. 設定項目なし
echo u. 設定項目なし
echo v. 設定項目なし
echo w. 設定項目なし
echo x. 設定項目なし
echo y. 設定項目なし
echo z. 設定項目なし

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@7a&goto s_home
if %errorlevel%==12 set s_yy981path=@7b&goto s_home
if %errorlevel%==13 set s_yy981path=@7c&goto s_home
if %errorlevel%==14 set s_yy981path=@7d&goto s_home
if %errorlevel%==15 set s_yy981path=@7e&goto s_home
if %errorlevel%==16 set s_yy981path=@7f&goto s_home
if %errorlevel%==17 set s_yy981path=@7g&goto s_home
if %errorlevel%==18 set s_yy981path=@7h&goto s_home
if %errorlevel%==19 set s_yy981path=@7i&goto s_home
if %errorlevel%==20 set s_yy981path=@7j&goto s_home
if %errorlevel%==21 set s_yy981path=@7k&goto s_home
if %errorlevel%==22 set s_yy981path=@7l&goto s_home
if %errorlevel%==23 set s_yy981path=@7m&goto s_home
if %errorlevel%==24 set s_yy981path=@7n&goto s_home
if %errorlevel%==25 set s_yy981path=@7o&goto s_home
if %errorlevel%==26 set s_yy981path=@7p&goto s_home
if %errorlevel%==27 set s_yy981path=@7q&goto s_home
if %errorlevel%==28 set s_yy981path=@7r&goto s_home
if %errorlevel%==29 set s_yy981path=@7s&goto s_home
if %errorlevel%==30 set s_yy981path=@7t&goto s_home
if %errorlevel%==31 set s_yy981path=@7u&goto s_home
if %errorlevel%==32 set s_yy981path=@7v&goto s_home
if %errorlevel%==33 set s_yy981path=@7w&goto s_home
if %errorlevel%==34 set s_yy981path=@7x&goto s_home
if %errorlevel%==35 set s_yy981path=@7y&goto s_home
if %errorlevel%==36 set s_yy981path=@7z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_a





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_b





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_c





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_d





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_e





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_f





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_g





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_h





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_i





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_j





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_k





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_l





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_m





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_n





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_o





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_p





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_q





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_r





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_s





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_t





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_u





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_v





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_w





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_x





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_y





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_z





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
:@1d_8
title %yy981_title%^|設定^|デスクトップ1


echo.
echo.
echo a. %#yy981_user-setting_8_t_a.yy981%
echo b. %#yy981_user-setting_8_t_b.yy981%
echo c. %#yy981_user-setting_8_t_c.yy981%
echo d. %#yy981_user-setting_8_t_d.yy981%
echo e. %#yy981_user-setting_8_t_e.yy981%
echo f. %#yy981_user-setting_8_t_f.yy981%
echo g. %#yy981_user-setting_8_t_g.yy981%
echo h. %#yy981_user-setting_8_t_h.yy981%
echo i. %#yy981_user-setting_8_t_i.yy981%
echo j. %#yy981_user-setting_8_t_j.yy981%
echo k. %#yy981_user-setting_8_t_k.yy981%
echo l. %#yy981_user-setting_8_t_l.yy981%
echo m. %#yy981_user-setting_8_t_m.yy981%
echo n. %#yy981_user-setting_8_t_n.yy981%
echo o. %#yy981_user-setting_8_t_o.yy981%
echo p. %#yy981_user-setting_8_t_p.yy981%
echo q. %#yy981_user-setting_8_t_q.yy981%
echo r. %#yy981_user-setting_8_t_r.yy981%
echo s. %#yy981_user-setting_8_t_s.yy981%
echo t. %#yy981_user-setting_8_t_t.yy981%
echo u. %#yy981_user-setting_8_t_u.yy981%
echo v. %#yy981_user-setting_8_t_v.yy981%
echo w. %#yy981_user-setting_8_t_w.yy981%
echo x. %#yy981_user-setting_8_t_x.yy981%
echo y. %#yy981_user-setting_8_t_y.yy981%
echo z. %#yy981_user-setting_8_t_z.yy981%

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1～Z
rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

if %errorlevel%==1 goto @1d

if %errorlevel%==2 set s_yy981path=@1 &goto s_home
if %errorlevel%==3 set s_yy981path=@2 &goto s_home
if %errorlevel%==4 set s_yy981path=@3 &goto s_home
if %errorlevel%==5 set s_yy981path=@4 &goto s_home
if %errorlevel%==6 set s_yy981path=@5 &goto s_home
if %errorlevel%==7 set s_yy981path=@6 &goto s_home
if %errorlevel%==8 set s_yy981path=@7 &goto s_home
if %errorlevel%==9 set s_yy981path=@8 &goto s_home
if %errorlevel%==10 set s_yy981path=@9 &goto s_home
if %errorlevel%==11 set s_yy981path=@8a&goto s_home
if %errorlevel%==12 set s_yy981path=@8b&goto s_home
if %errorlevel%==13 set s_yy981path=@8c&goto s_home
if %errorlevel%==14 set s_yy981path=@8d&goto s_home
if %errorlevel%==15 set s_yy981path=@8e&goto s_home
if %errorlevel%==16 set s_yy981path=@8f&goto s_home
if %errorlevel%==17 set s_yy981path=@8g&goto s_home
if %errorlevel%==18 set s_yy981path=@8h&goto s_home
if %errorlevel%==19 set s_yy981path=@8i&goto s_home
if %errorlevel%==20 set s_yy981path=@8j&goto s_home
if %errorlevel%==21 set s_yy981path=@8k&goto s_home
if %errorlevel%==22 set s_yy981path=@8l&goto s_home
if %errorlevel%==23 set s_yy981path=@8m&goto s_home
if %errorlevel%==24 set s_yy981path=@8n&goto s_home
if %errorlevel%==25 set s_yy981path=@8o&goto s_home
if %errorlevel%==26 set s_yy981path=@8p&goto s_home
if %errorlevel%==27 set s_yy981path=@8q&goto s_home
if %errorlevel%==28 set s_yy981path=@8r&goto s_home
if %errorlevel%==29 set s_yy981path=@8s&goto s_home
if %errorlevel%==30 set s_yy981path=@8t&goto s_home
if %errorlevel%==31 set s_yy981path=@8u&goto s_home
if %errorlevel%==32 set s_yy981path=@8v&goto s_home
if %errorlevel%==33 set s_yy981path=@8w&goto s_home
if %errorlevel%==34 set s_yy981path=@8x&goto s_home
if %errorlevel%==35 set s_yy981path=@8y&goto s_home
if %errorlevel%==36 set s_yy981path=@8z&goto s_home


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_8_a


choice /c 12 /m "1.タイトル 2.内容"
if %errorlevel%==1 (
set cmddsk_setting_type=t
set /p cmddsk_setting_m=<%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set /p cmddsk_setting_m=プログラムに影響を及ぼす記号以外の文字列を入力:
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=@%s_cmd%&goto s_home
)
if %errorlevel%==2 set cmddsk_setting_type=n

choice /c 12 /m "1.自由入力 2.ファイルを選択"
if %errorlevel%==1 (
set /p cmddsk_setting_m=<%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set /p cmddsk_setting_m=上矢印記号を挟んだコードを入力:
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=@1 &goto @1d_%s_cmd%
)
goto ex
:@1d_8_a_fs
set cmddsk_setting_m=call %ex_output%
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=1 goto @1d_%s_cmd%


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
_____________________________________________________________________
:@1e 
title %yy981_title%^|information


echo {出力に含める[y,n]}{項目名}

set @1e_system_n=0
set @1e_

:@1e_loop
echo ok. 選択を終了

echo [Microsoft Windows]
echo w1. [%@1e_w1%]バージョン
echo w2. [%@1e_w2%]ディスク空き容量
echo w3. [%@1e_w3%]システム構成情報
echo w4. [%@1e_w4%]ネットワークの設定
echo w5. [%@1e_w5%]ログイン中ユーザのログイン情報
echo w6. [%@1e_w6%]デバイスドライバ
echo w7. [%@1e_w7%]環境変数

echo [yy981 Program]
echo y1. [%@1e_y1%]バージョン
echo y2. [%@1e_y2%]ディレクトリ
echo y3. [%@1e_y3%]プログラムファイル
echo y4. [%@1e_y4%]構造

set @1e_in=#
set /p @1e_in=入力欄:
echo.
set @1e_in_ok=0
if %@1e_in:~0,1%==y set @1e_in_ok=1
if %@1e_in:~0,1%==n set @1e_in_ok=1
if %@1e_in:~0,1%==o set @1e_in_ok=1
if %@1e_in_ok%==0 goto @1e_loop
if %@1e_in%==# goto @1e_loop
if %@1e_in%==ok goto @1e_end
if %@1e_in:~1,3%==all (
if %@1e_in:~0,1%==o goto @1e_loop
set @1e_w1=%@1e_in:~0,1%
set @1e_w2=%@1e_in:~0,1%
set @1e_w3=%@1e_in:~0,1%
set @1e_w4=%@1e_in:~0,1%
set @1e_w5=%@1e_in:~0,1%
set @1e_w6=%@1e_in:~0,1%
set @1e_w7=%@1e_in:~0,1%
rem
set @1e_y1=%@1e_in:~0,1%
set @1e_y2=%@1e_in:~0,1%
set @1e_y3=%@1e_in:~0,1%
set @1e_y4=%@1e_in:~0,1%
goto @1e_loop
)
set @1e_system_n=1
if %@1e_in:~0,1%==y set @1e_%@1e_in:~1,2%=y
if %@1e_in:~0,1%==n set @1e_%@1e_in:~1,2%=n
echo.
echo.
goto @1e_loop


:@1e_end
type nul >%yy981_temp%\information.yy981
if "%@1e_w1%"=="y" ver >>%yy981_temp%\information.yy981
if "%@1e_w2%"=="y" fsutil volume diskfree %systemdrive%\ >>%yy981_temp%\information.yy981
if "%@1e_w3%"=="y" systeminfo /fo list >>%yy981_temp%\information.yy981
if "%@1e_w4%"=="y" ipconfig /all >>%yy981_temp%\information.yy981
if "%@1e_w5%"=="y" whoami /all >>%yy981_temp%\information.yy981
if "%@1e_w6%"=="y" driverquery >>%yy981_temp%\information.yy981
if "%@1e_w7%"=="y" (
echo マシン名                               %computername% >>%yy981_temp%\information.yy981
echo ログインユーザのホームドライブ         %homedrive% >>%yy981_temp%\information.yy981
echo ログインユーザのホームディレクトリ     %homepath% >>%yy981_temp%\information.yy981
echo OS名                                   %os% >>%yy981_temp%\information.yy981
echo パス                                   %path% >>%yy981_temp%\information.yy981
echo ProgramDataフォルダのパス              %programdata% >>%yy981_temp%\information.yy981
echo ProgramFilesフォルダのパス             %programfiles% >>%yy981_temp%\information.yy981
echo システムドライブ                       %systemdrive% >>%yy981_temp%\information.yy981
echo システムルート                         %systemroot% >>%yy981_temp%\information.yy981
echo ログインドメイン                       %userdomain% >>%yy981_temp%\information.yy981
echo ログインユーザ名                       %username% >>%yy981_temp%\information.yy981
echo 一時フォルダのパス                     %temp% >>%yy981_temp%\information.yy981
echo 実行ファイルの拡張子一覧               %pathext% >>%yy981_temp%\information.yy981
echo cmd.exeへのパス                        %comspec% >>%yy981_temp%\information.yy981
)

if "%@1e_y1%"=="y" echo yy981 Program [Version %yy981ver%] >>%yy981_temp%\information.yy981
if "%@1e_y2%"=="y" echo ディレクトリ=%yy981_d% >>%yy981_temp%\information.yy981
if "%@1e_y3%"=="y" echo プログラムファイル=%0 >>%yy981_temp%\information.yy981
if "%@1e_y4%"=="y" tree %yy981_d% /f >>%yy981_temp%\information.yy981

echo [読み込み中です]
echo.
more %yy981_temp%\information.yy981
echo.
echo 1. 何もしない
echo 2. クリップボードにコピー
echo 3. ユーザーディレクトリに出力
choice /c 123
if %errorlevel%==2 type %yy981_temp%\information.yy981|clip
if %errorlevel%==3 copy /y %yy981_temp%\information.yy981 %user_d%\yy981_information.txt


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1f 
title %sn%(説明)


echo ^<利用規約^>
echo 現時点ではこのページにあるbatファイルは個人利用に限り、制作物の無断での複製、改変、転載、再配布及び転送等の行為を禁止します
echo windowsでのみ正常に動作します
echo このファイルを使うことによるどんな損害も責任をとれません　ご了承ください
echo 常識の範囲内で使用してください
echo.



echo ^<システムについて^>
echo yy981-program_ver5以降はシステムドライブ直下に「yy981」というフォルダーが生成されます
echo このフォルダーやフォルダー内のファイルはyy981-programの実行にのみ使用します
echo 具体的に表記すると現時点では、設定の保存,タイマーなどのバックグラウンド処理に使うファイルの生成　等です
echo yy981-programはユーザーによる操作がない限りyy981フォルダーのみを操作します
echo (その他の例外時としては新バージョンの初期準備時にwindowsのtempフォルダーに一時的なファイルを生成し、処理が終わると削除します)
echo 簡単に言うと通常はyy981という生成されたフォルダーのみをyy981-programは操作するということです
echo.
echo yy981-programのショートカットを既定値では[yy981ver%yy981ver%_ショートカット]という名前で以下の場所に作成します
echo ドキュメント(%systemdrive%\users\%username%\documents)
echo デスクトップ(%systemdrive%\users\%username%\desktop)
echo yy981-programがあった場所(上記の場所に重複する場合は上書きされます)
echo.

echo ^<yy981-program^>
echo yy981_path=@{コマンドデスクトップ}{アルファベット選択}
echo 大抵は選択で0を選択する場合バックします
echo ユーザーディレクトリ=ユーザーとのファイルやフォルダのやり取りをするフォルダ
echo.
echo [@1c(設定)]
echo Y=Yes   N=No   ?=読み込み不能   @=サブ設定あり   #=何らかの理由で表示不能
echo.
echo ------------------------------------------------------------------------------------------------------------------------------------------------
echo [2023/01/25 0:50 ^| ver%yy981ver% ^| yy981]
echo.


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@1z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2a 
title %sn%(explorerを起動)


start explorer


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2b 
title %sn%(browser)


echo 0. ホームに戻る

echo a. microsoft edge

echo b. google chrome

echo c. brave

echo d. firefox

echo e. waterfox

echo f. internet explorer

echo g. opera

echo h. vivaldi

echo i. floorp

echo j. palemoon

echo k. srwareiron

echo l. sleipnir

echo m. chromium

echo n. slimjet

echo o. kinza

choice /c 0abcefghijklmno /n /m "a～n or 0"
if %errorlevel%==1 goto home
if %errorlevel%==2 start msedge.exe
if %errorlevel%==3 start chrome.exe
if %errorlevel%==4 start brave.exe
if %errorlevel%==5 start waterfox.exe
if %errorlevel%==6 start iexplore.exe
if %errorlevel%==7 start opera.exe
if %errorlevel%==8 start vivald.exe
if %errorlevel%==9 start floorp.exe
if %errorlevel%==10 start palemoon
if %errorlevel%==11 start iron.exe
if %errorlevel%==12 start sleipnir.exe
if %errorlevel%==13 start chromium.exe
if %errorlevel%==14 start slimjet.exe
if %errorlevel%==15 start kinza.exe


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2c 
title %sn%(microsoft)


echo 0. ホームに戻る
echo 1. アプリ
echo 2. web

choice /c 012
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @2c_app
if %errorlevel%==3 goto @2c_web

:@2c_app

echo 1. office(分析中)
echo 2. powerpoint
echo 3. word
echo 4. excel
echo 5. outlook(分析中)
echo 6. onenote
echo 7. teams(分析中)
echo 8. onedrive

choice /c 012345678
if %errorlevel%==1 goto home
if %errorlevel%==2 echo 分析中です&goto home
if %errorlevel%==3 start powerpnt.exe
if %errorlevel%==4 start winword.exe
if %errorlevel%==5 start excel.exe
if %errorlevel%==6 echo 分析中です&goto home
if %errorlevel%==7 start onenote.exe
if %errorlevel%==8 echo 分析中です&goto home
if %errorlevel%==9 echo 分析中です&goto home


goto @2c_end
:@2c_web

echo 1. office
echo 2. powerpoint
echo 3. word
echo 4. excel
echo 5. outlook
echo 6. onenote
echo 7. teams
echo 8. onedrive

choice /c 012345678
if %errorlevel%==1 goto home
if %errorlevel%==2 start https://www.office.com/
if %errorlevel%==3 start https://www.office.com/launch/powerpoint/
if %errorlevel%==4 start https://www.office.com/launch/word/
if %errorlevel%==5 start https://www.office.com/launch/excel/
if %errorlevel%==6 start https://outlook.live.com/
if %errorlevel%==7 start https://www.onenote.com/
if %errorlevel%==8 start https://teams.microsoft.com/
if %errorlevel%==9 start https://onedrive.live.com/


:@2c_end

echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2d 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2e 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@2z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3a 
title %sn%(時計系)


echo 1. 時計
echo 2. タイマー

choice /c 012
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @3a_1
if %errorlevel%==3 goto @3a_2


:@3a_1
echo タイトルに表示されます
echo.

:@3a_restart
title %sn%(時計系)_Eキーで終了(その他のキーは表示が狂うので押さないでください)_時間=%date:~0,4%/%date:~5,2%/%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%
choice /c ep /n /cs /t 1 /d p >nul
if %errorlevel%==1 goto @3a
goto @3a_restart


:@3a_2
set @3a_2_cmd=rem _

set @3a_2_時間=0 
set @3a_2_分=0 
set @3a_2_秒=0 

echo 時間は24以下の整数、分・秒は60以下の整数を入力してください

set /p @3a_2_時間=何時間?
set /p @3a_2_分=何分?
set /p @3a_2_秒=何秒?

set /a @3a_2_時間秒=%@3a_2_時間%*3600 >nul
set /a @3a_2_分秒=%@3a_2_分%*60 >nul
set /a @3a_2_秒秒=%@3a_2_秒% >nul
set /a @3a_2_計測時間_=%@3a_2_時間秒%+%@3a_2_分秒% >nul
set /a @3a_2_計測時間=%@3a_2_計測時間_%+%@3a_2_秒秒% >nul

echo %@3a_2_計測時間%秒計測します(%@3a_2_時間%時間-%@3a_2_分%分-%@3a_2_秒%秒)

echo 何かキーを押してカウントダウンを開始
pause>nul
echo 終了時に9回電子音が鳴り、メッセージボックスが表示されます

echo timeout /t %@3a_2_計測時間% /nobreak^&msg %username% 時間です by.タイマー^& for /l ^%%%%a in (1,1,3) do echo x^|choice ^& timeout /t 1^
 >%yy981_temp%\@3a_2_timer.bat

start /min %yy981_temp%\@3a_2_timer.bat
echo タイマーを起動しました
echo.


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3b 
title %sn%(乱数生成)


echo 1. ランダム文字列生成
echo 2. 乱数生成

choice /c 12
if %errorlevel%==1 goto @3a_1
if %errorlevel%==2 goto @3b_2

:@3b_1
echo [処理に時間がかかる場合があります]
echo.

set @3b_type= 
set @3b_loop=1
set /p @3b_u_loop=文字数を入力してください:
set @3b_output= 
set @3b_nul= 

echo 1. 数字
echo 2. アルファベット小文字
echo 3. アルファベット大文字
echo 4. アルファベット小文字+アルファベット大文字
echo 5. 数字+アルファベット小文字
echo 6. 数字+アルファベット大文字
echo 7. 数字+アルファベット小文字+アルファベット大文字

:@3b_restart
%@3b_type%choice /c 1234567%@3b_nul%
if %errorlevel%==1 set @3b_type=echo 1^|&goto @3b_start_1
if %errorlevel%==2 set @3b_type=echo 2^|&goto @3b_start_2
if %errorlevel%==3 set @3b_type=echo 3^|&goto @3b_start_3
if %errorlevel%==4 set @3b_type=echo 4^|&goto @3b_start_4
if %errorlevel%==5 set @3b_type=echo 5^|&goto @3b_start_5
if %errorlevel%==6 set @3b_type=echo 6^|&goto @3b_start_6
if %errorlevel%==7 set @3b_type=echo 7^|&goto @3b_start_7

echo エラー
goto @3b_restart

:@3b_start_1
goto @3b_numbers

:@3b_start_2
goto @3b_alphabet_k

:@3b_start_3
goto @3b_alphabet_o

:@3b_start_4
set /a @3b_start_test=%random%*2/32767
if %@3b_start_test%==0 goto @3b_alphabet_k
if %@3b_start_test%==1 goto @3b_alphabet_o

:@3b_start_5
set /a @3b_start_test=%random%*2/32767
if %@3b_start_test%==0 goto @3b_alphabet_k
if %@3b_start_test%==1 goto @3b_numbers

:@3b_start_6
set /a @3b_start_test=%random%*2/32767
if %@3b_start_test%==0 goto @3b_alphabet_o
if %@3b_start_test%==1 goto @3b_numbers

:@3b_start_7
set /a @3b_start_test=%random%*3/32767
if %@3b_start_test%==0 goto @3b_alphabet_k
if %@3b_start_test%==1 goto @3b_alphabet_o
if %@3b_start_test%==2 goto @3b_numbers

rem -------------------------

:@3b_alphabet_k
set /a @3b_alphabet_k=%random%*27/32767

if %@3b_alphabet_k%==1 set @3b__output_=a
if %@3b_alphabet_k%==2 set @3b__output_=b
if %@3b_alphabet_k%==3 set @3b__output_=c
if %@3b_alphabet_k%==4 set @3b__output_=d
if %@3b_alphabet_k%==5 set @3b__output_=e
if %@3b_alphabet_k%==6 set @3b__output_=f
if %@3b_alphabet_k%==7 set @3b__output_=g
if %@3b_alphabet_k%==8 set @3b__output_=h
if %@3b_alphabet_k%==9 set @3b__output_=i
if %@3b_alphabet_k%==10 set @3b__output_=l
if %@3b_alphabet_k%==11 set @3b__output_=k
if %@3b_alphabet_k%==12 set @3b__output_=l
if %@3b_alphabet_k%==13 set @3b__output_=m
if %@3b_alphabet_k%==14 set @3b__output_=n
if %@3b_alphabet_k%==15 set @3b__output_=o
if %@3b_alphabet_k%==16 set @3b__output_=p
if %@3b_alphabet_k%==17 set @3b__output_=q
if %@3b_alphabet_k%==18 set @3b__output_=r
if %@3b_alphabet_k%==19 set @3b__output_=s
if %@3b_alphabet_k%==20 set @3b__output_=t
if %@3b_alphabet_k%==21 set @3b__output_=u
if %@3b_alphabet_k%==22 set @3b__output_=v
if %@3b_alphabet_k%==23 set @3b__output_=w
if %@3b_alphabet_k%==24 set @3b__output_=x
if %@3b_alphabet_k%==25 set @3b__output_=y
if %@3b_alphabet_k%==26 set @3b__output_=z

if %@3b_alphabet_k%==0 goto @3b_alphabet_k
goto @3b_set

:@3b_alphabet_o
set /a @3b_alphabet_o=%random%*27/32767

if %@3b_alphabet_o%==1 set @3b__output_=A
if %@3b_alphabet_o%==2 set @3b__output_=B
if %@3b_alphabet_o%==3 set @3b__output_=C
if %@3b_alphabet_o%==4 set @3b__output_=D
if %@3b_alphabet_o%==5 set @3b__output_=E
if %@3b_alphabet_o%==6 set @3b__output_=F
if %@3b_alphabet_o%==7 set @3b__output_=G
if %@3b_alphabet_o%==8 set @3b__output_=H
if %@3b_alphabet_o%==9 set @3b__output_=I
if %@3b_alphabet_o%==10 set @3b__output_=J
if %@3b_alphabet_o%==11 set @3b__output_=K
if %@3b_alphabet_o%==12 set @3b__output_=L
if %@3b_alphabet_o%==13 set @3b__output_=M
if %@3b_alphabet_o%==14 set @3b__output_=N
if %@3b_alphabet_o%==15 set @3b__output_=O
if %@3b_alphabet_o%==16 set @3b__output_=P
if %@3b_alphabet_o%==17 set @3b__output_=Q
if %@3b_alphabet_o%==18 set @3b__output_=R
if %@3b_alphabet_o%==19 set @3b__output_=S
if %@3b_alphabet_o%==20 set @3b__output_=T
if %@3b_alphabet_o%==21 set @3b__output_=U
if %@3b_alphabet_o%==22 set @3b__output_=V
if %@3b_alphabet_o%==23 set @3b__output_=W
if %@3b_alphabet_o%==24 set @3b__output_=X
if %@3b_alphabet_o%==25 set @3b__output_=Y
if %@3b_alphabet_o%==26 set @3b__output_=Z

if %@3b_alphabet_o%==0 goto @3b_alphabet_o
goto @3b_set

:@3b_numbers
set /a @3b_numbers=%random%*10/32767
set @3b__output_=%@3b_numbers%
goto @3b_set

:@3b_set
set @3b_nul=^>nul
set @3b_output=%@3b_output%%@3b__output_%
if %@3b_loop%==%@3b_u_loop% goto @3b_end
set /a @3b_loop=%@3b_loop%+1
goto @3b_restart

:@3b_end
echo.
echo ^<出力^>
echo%@3b_output%
echo.

choice /m 乱数をコピーしますか?
if %errorlevel%==1 echo%@3b_output%|clip

choice /m もう一度実行しますか?
if %errorlevel%==1 goto @3b_2


echo 何かキーを押すとホームに戻ります
pause>nul
goto home


:@3b_2
echo 1~nまでの数字をランダムに生成

set /p @3b_2_input=n部分を入力:
:@3b_2_restart
set /a @3b_2_output=%random%*%@3b_2_input%/32767
set /a @3b_2_output=%@3b_2_output%+1
echo ^<出力^>
echo %@3b_2_output%
echo.
echo 1. もう一度実行(入力あり)
echo 2. もう一度実行(入力なし)
echo 3. ホームへ戻る

choice /c 123
if %errorlevel%==1 goto @3b_2
if %errorlevel%==2 goto @3b_2_restart

echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3c 
title %sn%(圧縮^&解凍)
goto @3c_1

:@3c_start
choice /m ホームに戻りますか?
if %errorlevel%==1 (
echo 何かキーを押すとホームに戻ります
pause>nul
goto home
)

:@3c_1
set return_point=@3c
goto ex
:@3c_es
if %ex_no%==1 echo 中止しました&goto home
set @3c_in=%ex_output%
set @3c_e_in=%ex_n_e%
set @3c_fo-in=%ex_fo-output%

echo 1. キャビネット(オート)
echo 2. キャビネット(圧縮)
echo 3. キャビネット(解凍)
echo 4. LZX(オート)※準備中です
echo 5. LZX(圧縮)
echo 6. LZX(解凍)

choice /c 0123456
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @3c_cabinet_automatic
if %errorlevel%==3 goto @3c_cabinet_a
if %errorlevel%==4 goto @3c_cabinet_k
if %errorlevel%==5 echo 準備中です&goto @3c_start
if %errorlevel%==6 goto @3c_ntfs_a
if %errorlevel%==7 goto @3c_ntfs_k

echo エラー
goto @3c_start

:@3c_cabinet_automatic
for %%f in (%@3c_in%) do if %%~xf==.cab goto @3c_cabinet_k
goto @3c_cabinet_a

:@3c_cabinet_a
echo 1. ファイル
echo 2. フォルダー

choice /c 12
if %errorlevel%==1 makecab %@3c_in% "%@3c_e_in%.cab" >nul
if %errorlevel%==2 goto @3c_cabinet_a_2
echo キャビネット圧縮
goto @3c_start

:@3c_cabinet_a_2
cd %yy981_temp%\
set set_ex=

cd %yy981_temp%\
set BEFORE_STRING=2%set_ex%\"
set AFTER_STRING=

setlocal enabledelayedexpansion
echo .Set DestinationDir= > cab.ddf
for %%f in ("%set_ex%\*") do (
    echo "%%f" >> cab.ddf
)
for /d /r "%set_ex%" %%d in (*) do (
    set line=%%d
    echo line !line! >nul
    echo before !BEFORE_STRING! >nul
    echo after !AFTER_STRING! >nul
    echo .Set DestinationDir="!line:%BEFORE_STRING%=%AFTER_STRING%!" >> cab.ddf
    for %%f in ("%%d\*") do (
        echo "%%f" >> cab.ddf
    )
)

makecab.exe /f cab.ddf 

move /y %yy981_temp%\disk1\1.cab %yy981_temp%\@3c_cabinet_a_2.cab >nul
if exist disk1 rd disk1
rem if exist cab.ddf del /F cab.ddf
rem if exist setup.inf del /F setup.inf
rem if exist setup.rpt del /F setup.rpt

copy /y %yy981_temp%\@3c_cabinet_a_2.cab %user_d%\yy981_@3c.cab >nul

cd %systemdrive%\
goto @3c_start

:@3c_cabinet_k
expand /r %@3c_in% >nul
echo キャビネット解凍
goto @3c_start

:@3c_ntfs_a
echo 1. ファイル
echo 2. フォルダー

choice /c 12
if %errorlevel%==1 compact /c %@3c_fo-in% /i
if %errorlevel%==2 compact /c /s:%@3c_fo-in% /i
goto @3c_start

:@3c_ntfs_k
echo 1. ファイル
echo 2. フォルダー

choice /c 12
if %errorlevel%==1 compact /u %@3c_in% /i
if %errorlevel%==2 compact /u /s:%@3c_fo-in% /i
goto @3c_start


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3d 
title %sn%

cd %systemdrive%\users\%username%\documents\

set @3d_mode=0
set @3d_type-f4=0
set @3d_type-r=+r
set @3d_type-h=+h
set @3d_type-a=+a
set @3d_type-s=-s
set @3d_n_m_s_s=0
set @3d_return-point=nul
goto @3d_type-s

echo ^&が含まれるファイルやフォルダは使用できません
:@3d_start

echo.
echo.

if %@3d_return-point%==file_4 echo [移動先のフォルダーにあるファイルを選択]
if %@3d_return-point%==file_1 echo [ファイル選択]

echo 上のほうにフォルダ　下のほうにファイルが表示されます

echo [操作方法]

echo フォルダ名         そのフォルダに移動

echo ファイル名         そのファイルを編集等

echo y9/reload          再読み込み

echo y9/cmd             デバック用

echo y9/back            上のフォルダに移動

echo y9/uback           ユーザーのフォルダに移動

echo y9/xback           最上のフォルダに移動

echo y9/type            表示内容の選択

echo y9/exit            終了

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo dir /b /a:d%@3d_type% ^| find /c /v ""^>%yy981_temp%\@3d_1.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat
echo dir /b /a:-d%@3d_type% ^| find /c /v ""^>%yy981_temp%\@3d_2.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat

set /p @3d_1=<%yy981_temp%\@3d_1.yy981
set /p @3d_2=<%yy981_temp%\@3d_2.yy981
set /a @3d_3=%@3d_1%+%@3d_2%+1
set /a @3d_4=%@3d_3%-1
set /a @3d_5=%@3d_1%+1
set /a @3d_6=%@3d_3%+1
cd>%yy981_temp%\cd.yy981 & set /p @3d_path_d_m=<%yy981_temp%\cd.yy981
set @3d_path_d=^"%@3d_path_d_m%\^"
set @3d_path_d_e=%@3d_path_d_m%\
if %@3d_path_d%=="%systemdrive%\\" set @3d_path_d_e=%@3d_path_d_e:~0,3%

echo [%@3d_path_d_e% ^| D=%@3d_1%,F=%@3d_2%,ALL=%@3d_4% ^| O=(%@3d_type%)]

type nul >%yy981_temp%\@3d_dir.yy981
echo dir /b /o /a:d%@3d_type% ^>^>%yy981_temp%\@3d_dir.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min /wait %yy981_temp%\ex.bat
echo ^<=============================================^> >>%yy981_temp%\@3d_dir.yy981
echo dir /b /o /a:-d%@3d_type% ^>^>%yy981_temp%\@3d_dir.yy981 >%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min %yy981_temp%\ex.bat

for /l %%a in (1,1,%@3d_3%) do (
findstr /n /r "." %yy981_temp%\@3d_dir.yy981 | findstr /r "^%%a:"
)



echo.

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:@3d_n_m_s
rem (((数字入力)))

set @3d_n_m_s=y9/reload
set /p @3d_n_m_s=数字を入力(y9/backと入力すると1つ上に戻る):
set @3d_n_m_s=%@3d_n_m_s:^&=%

if %@3d_n_m_s%==%@3d_5%    echo これはフォルダとファイルを区切るものです&goto @3d_start
if %@3d_n_m_s%==y9/reload goto @3d_start
if %@3d_n_m_s%==y9/cmd    goto @3d_cmd
if %@3d_n_m_s%==y9/back   cd .. >nul & goto @3d_start
if %@3d_n_m_s%==y9/uback  cd %systemdrive%\users\%username%\ >nul & goto @3d_start
if %@3d_n_m_s%==y9/xback  cd %systemdrive%\ & goto @3d_start
if %@3d_n_m_s%==y9/type   goto @3d_type-choice
if %@3d_n_m_s%==y9/exit   goto home
set @3d_n_m_s=%@3d_n_m_s: =%

findstr /n /r "." %yy981_temp%\@3d_dir.yy981 | findstr /r "^%@3d_n_m_s%:">%yy981_temp%\@3d_dir_h.yy981
for /f "delims=" %%a in (%yy981_temp%\@3d_dir_h.yy981) do set @3d_dir_h=%%a

if %@3d_n_m_s% geq %@3d_6% echo エラー(ファイルorフォルダ名の左側に表示された数字を入力してください)&goto @3d_n_m_s
if %@3d_n_m_s% leq 0 echo エラー(1以上を入力してください)&goto @3d_n_m_s
if %@3d_n_m_s% leq 9 set @3d_s=%@3d_dir_h:~2%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 99 set @3d_s=%@3d_dir_h:~3%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 999 set @3d_s=%@3d_dir_h:~4%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 9999 set @3d_s=%@3d_dir_h:~5%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 99999 set @3d_s=%@3d_dir_h:~6%&goto @3d_n_m_s_s
if %@3d_n_m_s% geq 100000 echo エラー(数字以外もしくは100000以上には対応していません)&goto @3d_n_m_s

echo エラー
goto @3d_start

:@3d_n_m_s_s
set @3d_n=^"%@3d_path_d_e%%@3d_s%^"
set @3d_n_e=%@3d_path_d_e%%@3d_s%
echo cd %@3d_n% >%yy981_temp%\ex.bat
echo echo %%errorlevel%%_ ^>%yy981_temp%\@3d_df.yy981 >>%yy981_temp%\ex.bat
echo exit >>%yy981_temp%\ex.bat
start /min %yy981_temp%\ex.bat
:@3d_df_loop
if not exist %yy981_temp%\@3d_df.yy981 goto @3d_df_loop
set /p @3d_df=<%yy981_temp%\@3d_df.yy981
set @3d_df=%@3d_df:~0,1%
del %yy981_temp%\@3d_df.yy981
if %@3d_df%==1 (
if %@3d_mode%==0 goto @3d_file
if %@3d_mode%==1 goto @3d_mode1_exit
if %@3d_mode%==2 goto @3d_mode1_exit
echo エラー&goto @3d_start
)
cd %@3d_n% & goto @3d_start

:@3d_mode1_exit
choice /m このファイルを選択しますか?
if %errorlevel%==2 goto @3d_start
if %@3d_mode%==2 goto @3d_end
set @3d_mode=0
goto @3d_%@3d_return-point%_exit

rem cmd
:@3d_cmd
set cmd=rem _
set /p cmd=cmd_
%cmd%

goto @3d_start

:@3d_file

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rem 処理部分
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,キャンセル

echo 1,実行

echo 2,コピー

echo 3,削除

echo 4,移動

echo 5,名前の変更

choice /c:012345
if %errorlevel%==1 goto @3d_start
if %errorlevel%==2 goto @3d_file_1
if %errorlevel%==3 goto @3d_file_2
if %errorlevel%==4 goto @3d_file_3
if %errorlevel%==5 goto @3d_file_4
if %errorlevel%==6 goto @3d_file_5





:@3d_file_1

echo %@3d_n_e%を実行しますか?(E=NOTEPADで開く C=ファイルを開くものを選択)

choice /c ynec
if %errorlevel%==1 start %@3d_n% %@3d_n% & goto @3d_start
if %errorlevel%==2 echo %@3d_n_e%の実行をキャンセルしました & goto @3d_start
if %errorlevel%==3 (
start notepad %@3d_n%
goto @3d_start
)
set @3d_mode1_n=%@3d_n%
set @3d_mode=1
set @3d_return-point=file_1
goto @3d_start

:@3d_file_1_exit
start "%@3d_n%" %@3d_mode1_n%
echo %@3d_n_e%を実行します

goto @3d_start
:@3d_file_2

echo %@3d_n_e%をコピーしますか?

choice
if %errorlevel%==2 echo %@3d_n%のコピーをキャンセルしました & goto @3d_start

copy %@3d_n% "y9 - %@3d_s%" >nul
echo [%@3d_n_e%]を["y9 - %@3d_s%"]という名前でコピーしました

goto @3d_start
:@3d_file_3

echo %@3d_n_e%を削除しますか?

choice
if %errorlevel%==2 echo %@3d_n%の削除をキャンセルしました & goto @3d_start
del %@3d_n%
echo %@3d_n_e%を削除しました
goto @3d_start

:@3d_file_4
echo %@3d_n_e%を移動させますか?
set @3d_file_4=^"%@3d_n_e%^"

choice
if %errorlevel%==2 echo %@3d_n_e%の移動をキャンセルしました & goto @3d_start
set @3d_mode=1
set @3d_return-point=file_4
goto @3d_start

:@3d_file_4_exit

move %@3d_file_4% ^"%@3d_path_d_m%^" >nul
echo %@3d_n_e%を%@3d_mode1_path_d_m%に移動しました

goto @3d_start
:@3d_file_5
echo %@3d_n_e%の名前を変更しますか?

choice
if %errorlevel%==2 echo %@3d_n%の名前の変更をキャンセルしました & goto @3d_start
set /p @3d_file_5_name=%@3d_n%変更後の名前を入力:

ren %@3d_n% %@3d_file_5_name%
echo %@3d_n_e%を%@3d_file_5_name%に変更しました

goto @3d_start


:@3d_type-choice
echo R 読取り専用ファイル   %@3d_type-r%
echo H 隠しファイル         %@3d_type-h%
echo A アーカイブファイル   %@3d_type-a%
echo S システムファイル     %@3d_type-s%
echo E 選択終了

choice /c rhase
if %errorlevel%==1 (
if %@3d_type-r%==-r set @3d_type-r=+r
if %@3d_type-r%==+r set @3d_type-r=-r
)
if %errorlevel%==2 (
if %@3d_type-h%==-h set @3d_type-h=+h
if %@3d_type-h%==+h set @3d_type-h=-h
)
if %errorlevel%==3 (
if %@3d_type-a%==-a set @3d_type-a=+a
if %@3d_type-a%==+a set @3d_type-a=-a
)
if %errorlevel%==4 (
if %@3d_type-s%==-s set @3d_type-s=+s
if %@3d_type-s%==+s set @3d_type-s=-s
)
if %errorlevel%==5 goto @3d_type-s

goto @3d_type-choice

:@3d_type-s
set @3d_type=%@3d_type-r%%@3d_type-h%%@3d_type-a%%@3d_type-s%
set @3d_type=%@3d_type:+r=%
set @3d_type=%@3d_type:+h=%
set @3d_type=%@3d_type:+a=%
set @3d_type=%@3d_type:+s=%
goto @3d_start

:@3d_end


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3e 
title %sn%(ファイル内容によるファイル検索)


choice /m "続けますか? 少しcmdの知識が必要です"
if %errorlevel%==2 goto home

:@3e_f_start
set @3e_file="*.txt" 
:@3e_start
echo (今:%@3e_file%)"で囲んでください 後ろにスペースを空け、前に*.を付けてください(例:"*.bat" )
set /p @3e_file="調べる対象のファイル拡張子を追加:"
choice /c ync /m "OK?(Y=OK,N=調べる対象のファイルを追加,C=調べる対象のファイルをクリア):"
if %errorlevel%==1 goto @3e_g_start
if %errorlevel%==2 goto @3e_start
if %errorlevel%==3 set @3e_file=&goto @3e_start

:@3e_g_start
rem @3e_ex_mode0=一般
rem @3e_ex_mode1=指定後@3e_ex_mode0に戻る
rem @3e_ex_mode2=埋め込み

cd %systemdrive%\users\%username%\documents\

set @3e_ex_mode=2
set @3e_ex_type-f4=0
set @3e_ex_type-r=+r
set @3e_ex_type-h=+h
set @3e_ex_type-a=+a
set @3e_ex_type-s=-s
set @3e_ex_n_m_s_s=0
set @3e_ex_return-point=nul
echo 上のほうにフォルダ　下のほうにファイルが表示されます

echo [操作方法]

echo フォルダ名         そのフォルダに移動

echo ファイル名         そのファイルを編集等

echo y9/reload          再読み込み

echo y9/cmd             デバック用

echo y9/back            上のフォルダに移動

echo y9/uback           ユーザーのフォルダに移動

echo y9/xback           最上のフォルダに移動

echo y9/type            表示内容の選択
goto @3e_ex_type-s

:@3e_ex_start

echo.
echo.

echo 指定したいフォルダ内のファイルを選択してください
if %@3e_ex_return-point%==file_4 echo [移動先のフォルダーにあるファイルを選択]
if %@3e_ex_return-point%==file_1 echo [ファイル選択]

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo dir /b /a:d%@3e_ex_type% ^| find /c /v ""^>%temp%\@3e_ex_1.yy981 >%temp%\ex.bat
echo exit >>%temp%\ex.bat
start /min /wait %temp%\ex.bat
echo dir /b /a:-d%@3e_ex_type% ^| find /c /v ""^>%temp%\@3e_ex_2.yy981 >%temp%\ex.bat
echo exit >>%temp%\ex.bat
start /min /wait %temp%\ex.bat

set /p @3e_ex_1=<%temp%\@3e_ex_1.yy981
set /p @3e_ex_2=<%temp%\@3e_ex_2.yy981
set /a @3e_ex_3=%@3e_ex_1%+%@3e_ex_2%+1
set /a @3e_ex_4=%@3e_ex_3%-1
set /a @3e_ex_5=%@3e_ex_1%+1
set /a @3e_ex_6=%@3e_ex_3%+1
cd>%temp%\cd.yy981 & set /p @3e_ex_path_d_m=<%temp%\cd.yy981
set @3e_ex_path_d=^"%@3e_ex_path_d_m%\^"
set @3e_ex_path_d_e=%@3e_ex_path_d_m%\
if %@3e_ex_path_d%=="%systemdrive%\\" set @3e_ex_path_d_e=%@3e_ex_path_d_e:~0,3%

echo [%@3e_ex_path_d_e% ^| D=%@3e_ex_1%,F=%@3e_ex_2%,ALL=%@3e_ex_4% ^| O=(%@3e_ex_type%)]

type nul >%temp%\@3e_ex_dir.yy981
echo dir /b /o /a:d%@3e_ex_type% ^>^>%temp%\@3e_ex_dir.yy981 >%temp%\ex.bat
echo exit >>%temp%\ex.bat
start /min /wait %temp%\ex.bat
echo ^<=============================================^> >>%temp%\@3e_ex_dir.yy981
echo dir /b /o /a:-d%@3e_ex_type% ^>^>%temp%\@3e_ex_dir.yy981 >%temp%\ex.bat
echo exit >>%temp%\ex.bat
start /min %temp%\ex.bat

for /l %%a in (1,1,%@3e_ex_3%) do (
findstr /n /r "." %temp%\@3e_ex_dir.yy981 | findstr /r "^%%a:"
)



echo.

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:@3e_ex_n_m_s
rem (((数字入力)))

set @3e_ex_n_m_s=y9/reload
set /p @3e_ex_n_m_s=数字を入力(y9/backと入力すると1つ上に戻る):
set @3e_ex_n_m_s=%@3e_ex_n_m_s:^&=%
rem ↑ここ何とかできそう

if %@3e_ex_n_m_s%==%@3e_ex_5%    echo これはフォルダとファイルを区切るものです&goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/reload goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/cmd    goto @3e_ex_cmd
if %@3e_ex_n_m_s%==y9/back   cd .. >nul & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/uback  cd %systemdrive%\users\%username%\ >nul & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/xback  cd %systemdrive%\ & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/type   goto @3e_ex_type-choice
set @3e_ex_n_m_s=%@3e_ex_n_m_s: =%

findstr /n /r "." %temp%\@3e_ex_dir.yy981 | findstr /r "^%@3e_ex_n_m_s%:">%temp%\@3e_ex_dir_h.yy981
for /f "delims=" %%a in (%temp%\@3e_ex_dir_h.yy981) do set @3e_ex_dir_h=%%a

if %@3e_ex_n_m_s% geq %@3e_ex_6% echo エラー(ファイルorフォルダ名の左側に表示された数字を入力してください)&goto @3e_ex_n_m_s
if %@3e_ex_n_m_s% leq 0 echo エラー(1以上を入力してください)&goto @3e_ex_n_m_s
if %@3e_ex_n_m_s% leq 9 set @3e_ex_s=%@3e_ex_dir_h:~2%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 99 set @3e_ex_s=%@3e_ex_dir_h:~3%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 999 set @3e_ex_s=%@3e_ex_dir_h:~4%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 9999 set @3e_ex_s=%@3e_ex_dir_h:~5%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 99999 set @3e_ex_s=%@3e_ex_dir_h:~6%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% geq 100000 echo エラー(数字以外もしくは100000以上には対応していません)&goto @3e_ex_n_m_s

echo エラー
goto @3e_ex_start

:@3e_ex_n_m_s_s
set @3e_ex_n=^"%@3e_ex_path_d_e%%@3e_ex_s%^"
set @3e_ex_n_e=%@3e_ex_path_d_e%%@3e_ex_s%
echo cd %@3e_ex_n% >%temp%\ex.bat
echo echo %%errorlevel%%_ ^>%temp%\@3e_ex_df.yy981 >>%temp%\ex.bat
echo exit >>%temp%\ex.bat
start /min %temp%\ex.bat
:@3e_ex_df_loop
if not exist %temp%\@3e_ex_df.yy981 goto @3e_ex_df_loop
set /p @3e_ex_df=<%temp%\@3e_ex_df.yy981
set @3e_ex_df=%@3e_ex_df:~0,1%
del %temp%\@3e_ex_df.yy981
if %@3e_ex_df%==1 (
if %@3e_ex_mode%==0 goto @3e_ex_file
if %@3e_ex_mode%==1 goto @3e_ex_mode1_exit
if %@3e_ex_mode%==2 goto @3e_ex_mode1_exit
echo エラー&goto @3e_ex_start
)
cd %@3e_ex_n% & goto @3e_ex_start

:@3e_ex_mode1_exit
choice /m このファイルを選択しますか?
if %errorlevel%==2 goto @3e_ex_start
if %@3e_ex_mode%==2 goto @3e_ex_end
set @3e_ex_mode=0
goto @3e_ex_%@3e_ex_return-point%_exit

rem cmd
:@3e_ex_cmd
set cmd=rem _
set /p cmd=cmd_
%cmd%

goto @3e_ex_start

:@3e_ex_file

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rem 処理部分
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,キャンセル

echo 1,実行

echo 2,コピー

echo 3,削除

echo 4,移動

echo 5,名前の変更

choice /c:012345
if %errorlevel%==1 goto @3e_ex_start
if %errorlevel%==2 goto @3e_ex_file_1
if %errorlevel%==3 goto @3e_ex_file_2
if %errorlevel%==4 goto @3e_ex_file_3
if %errorlevel%==5 goto @3e_ex_file_4
if %errorlevel%==6 goto @3e_ex_file_5





:@3e_ex_file_1

echo %@3e_ex_n_e%を実行しますか?(E=NOTEPADで開く C=ファイルを開くものを選択)

choice /c ynec
if %errorlevel%==1 start %@3e_ex_n% %@3e_ex_n% & goto @3e_ex_start
if %errorlevel%==2 echo %@3e_ex_n_e%の実行をキャンセルしました & goto @3e_ex_start
if %errorlevel%==3 (
start notepad %@3e_ex_n%
goto @3e_ex_start
)
set @3e_ex_mode1_n=%@3e_ex_n%
set @3e_ex_mode=1
set @3e_ex_return-point=file_1
goto @3e_ex_start

:@3e_ex_file_1_exit
start "%@3e_ex_n%" %@3e_ex_mode1_n%
echo %@3e_ex_n_e%を実行します

goto @3e_ex_start
:@3e_ex_file_2

echo %@3e_ex_n_e%をコピーしますか?

choice
if %errorlevel%==2 echo %@3e_ex_n%のコピーをキャンセルしました & goto @3e_ex_start

copy %@3e_ex_n% "y9 - %@3e_ex_s%" >nul
echo [%@3e_ex_n_e%]を["y9 - %@3e_ex_s%"]という名前でコピーしました

goto @3e_ex_start
:@3e_ex_file_3

echo %@3e_ex_n_e%を削除しますか?

choice
if %errorlevel%==2 echo %@3e_ex_n%の削除をキャンセルしました & goto @3e_ex_start
del %@3e_ex_n%
echo %@3e_ex_n_e%を削除しました
goto @3e_ex_start

:@3e_ex_file_4
echo %@3e_ex_n_e%を移動させますか?
set @3e_ex_file_4=^"%@3e_ex_n_e%^"

choice
if %errorlevel%==2 echo %@3e_ex_n_e%の移動をキャンセルしました & goto @3e_ex_start
set @3e_ex_mode=1
set @3e_ex_return-point=file_4
goto @3e_ex_start

:@3e_ex_file_4_exit

move %@3e_ex_file_4% ^"%@3e_ex_path_d_m%^" >nul
echo %@3e_ex_n_e%を%@3e_ex_mode1_path_d_m%に移動しました

goto @3e_ex_start
:@3e_ex_file_5
echo %@3e_ex_n_e%の名前を変更しますか?

choice
if %errorlevel%==2 echo %@3e_ex_n%の名前の変更をキャンセルしました & goto @3e_ex_start
set /p @3e_ex_file_5_name=%@3e_ex_n%変更後の名前を入力:

ren %@3e_ex_n% %@3e_ex_file_5_name%
echo %@3e_ex_n_e%を%@3e_ex_file_5_name%に変更しました

goto @3e_ex_start


:@3e_ex_type-choice
echo R 読取り専用ファイル   %@3e_ex_type-r%
echo H 隠しファイル         %@3e_ex_type-h%
echo A アーカイブファイル   %@3e_ex_type-a%
echo S システムファイル     %@3e_ex_type-s%
echo E 選択終了

choice /c rhase
if %errorlevel%==1 (
if %@3e_ex_type-r%==-r set @3e_ex_type-r=+r
if %@3e_ex_type-r%==+r set @3e_ex_type-r=-r
)
if %errorlevel%==2 (
if %@3e_ex_type-h%==-h set @3e_ex_type-h=+h
if %@3e_ex_type-h%==+h set @3e_ex_type-h=-h
)
if %errorlevel%==3 (
if %@3e_ex_type-a%==-a set @3e_ex_type-a=+a
if %@3e_ex_type-a%==+a set @3e_ex_type-a=-a
)
if %errorlevel%==4 (
if %@3e_ex_type-s%==-s set @3e_ex_type-s=+s
if %@3e_ex_type-s%==+s set @3e_ex_type-s=-s
)
if %errorlevel%==5 goto @3e_ex_type-s

goto @3e_ex_type-choice

:@3e_ex_type-s
set @3e_ex_type=%@3e_ex_type-r%%@3e_ex_type-h%%@3e_ex_type-a%%@3e_ex_type-s%
set @3e_ex_type=%@3e_ex_type:+r=%
set @3e_ex_type=%@3e_ex_type:+h=%
set @3e_ex_type=%@3e_ex_type:+a=%
set @3e_ex_type=%@3e_ex_type:+s=%
goto @3e_ex_start

:@3e_ex_end
cd %@3e_ex_path_d%


set @3e_option=/S 
echo /B 行の先頭に一致するもののみ対象とする
echo /E 行の末尾に一致するもののみ対象とする
echo /I 大文字小文字を区別しない
echo /L 検索文字列をリテラルとして検索する
echo /M 検索文字列に一致するものが１つでも存在するファイル名を表示する
echo /N 検索結果に行番号を表示する
echo /O 検索結果に文字位置を表示する
echo /R 検索文字列を正規表現として検索する
echo /S サブフォルダも含めて検索する
echo /V 検索文字列に一致しない行を検索対象とする
echo /X 検索文字列が完全に一致する行を検索対象とする
:@3e_g_o
set /p @3e_option="オプションを設定(スペースで区切ってください)(今:%option%):"
choice /m OK?
if %errorlevel%==2 goto @3e_g_o

choice /c au /m "文字コードを選択(A=ANSI,U=UTF-8(通常はUTF-8です)):"
if %errorlevel%==1 set @3e_chara=932
if %errorlevel%==2 set @3e_chara=65001
:@3e_find
set /p @3e_find=検索する文字列を入力:
chcp %@3e_chara%
findstr %@3e_option% ""%@3e_find%"" %@3e_file%
pause
chcp 932
choice /c elr /m "E=終了,L=始めからやり直す,R=検索する文字列を入力するところからやり直す:"
if %errorlevel%==2 goto @3e_f_start
if %errorlevel%==3 goto @3e_find
cd %systemdrive%\


echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3y
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@3z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4a 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4b 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4c 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4d 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4e 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@4z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5a 
title %sn%(宝探しゲーム的なもの)


rem echo ver1

rem echo ver2

rem choice /c 12
if %errorlevel%==1 goto 
if %errorlevel%==2 goto 

echo [ゲームのルールについて]

echo マスはこのような座標で表します(0は除く)　一般的なもの


echo [-1,1]  [1,1]
echo [-1,-1] [1,-1]

echo 困ったら適当にやってみてください

echo スコアが少ないほうがいいです

set @5a_隻数=1

set @5a_-10#10=■
set @5a_-9#10=■
set @5a_-8#10=■
set @5a_-7#10=■
set @5a_-6#10=■
set @5a_-5#10=■
set @5a_-4#10=■
set @5a_-3#10=■
set @5a_-2#10=■
set @5a_-1#10=■
set @5a_10#10=■
set @5a_9#10=■
set @5a_8#10=■
set @5a_7#10=■
set @5a_6#10=■
set @5a_5#10=■
set @5a_4#10=■
set @5a_3#10=■
set @5a_2#10=■
set @5a_1#10=■

set @5a_-10#9=■
set @5a_-9#9=■
set @5a_-8#9=■
set @5a_-7#9=■
set @5a_-6#9=■
set @5a_-5#9=■
set @5a_-4#9=■
set @5a_-3#9=■
set @5a_-2#9=■
set @5a_-1#9=■
set @5a_10#9=■
set @5a_9#9=■
set @5a_8#9=■
set @5a_7#9=■
set @5a_6#9=■
set @5a_5#9=■
set @5a_4#9=■
set @5a_3#9=■
set @5a_2#9=■
set @5a_1#9=■

set @5a_-10#8=■
set @5a_-9#8=■
set @5a_-8#8=■
set @5a_-7#8=■
set @5a_-6#8=■
set @5a_-5#8=■
set @5a_-4#8=■
set @5a_-3#8=■
set @5a_-2#8=■
set @5a_-1#8=■
set @5a_10#8=■
set @5a_9#8=■
set @5a_8#8=■
set @5a_7#8=■
set @5a_6#8=■
set @5a_5#8=■
set @5a_4#8=■
set @5a_3#8=■
set @5a_2#8=■
set @5a_1#8=■

set @5a_-10#7=■
set @5a_-9#7=■
set @5a_-8#7=■
set @5a_-7#7=■
set @5a_-6#7=■
set @5a_-5#7=■
set @5a_-4#7=■
set @5a_-3#7=■
set @5a_-2#7=■
set @5a_-1#7=■
set @5a_10#7=■
set @5a_9#7=■
set @5a_8#7=■
set @5a_7#7=■
set @5a_6#7=■
set @5a_5#7=■
set @5a_4#7=■
set @5a_3#7=■
set @5a_2#7=■
set @5a_1#7=■

set @5a_-10#6=■
set @5a_-9#6=■
set @5a_-8#6=■
set @5a_-7#6=■
set @5a_-6#6=■
set @5a_-5#6=■
set @5a_-4#6=■
set @5a_-3#6=■
set @5a_-2#6=■
set @5a_-1#6=■
set @5a_10#6=■
set @5a_9#6=■
set @5a_8#6=■
set @5a_7#6=■
set @5a_6#6=■
set @5a_5#6=■
set @5a_4#6=■
set @5a_3#6=■
set @5a_2#6=■
set @5a_1#6=■

set @5a_-10#5=■
set @5a_-9#5=■
set @5a_-8#5=■
set @5a_-7#5=■
set @5a_-6#5=■
set @5a_-5#5=■
set @5a_-4#5=■
set @5a_-3#5=■
set @5a_-2#5=■
set @5a_-1#5=■
set @5a_10#5=■
set @5a_9#5=■
set @5a_8#5=■
set @5a_7#5=■
set @5a_6#5=■
set @5a_5#5=■
set @5a_4#5=■
set @5a_3#5=■
set @5a_2#5=■
set @5a_1#5=■

set @5a_-10#4=■
set @5a_-9#4=■
set @5a_-8#4=■
set @5a_-7#4=■
set @5a_-6#4=■
set @5a_-5#4=■
set @5a_-4#4=■
set @5a_-3#4=■
set @5a_-2#4=■
set @5a_-1#4=■
set @5a_10#4=■
set @5a_9#4=■
set @5a_8#4=■
set @5a_7#4=■
set @5a_6#4=■
set @5a_5#4=■
set @5a_4#4=■
set @5a_3#4=■
set @5a_2#4=■
set @5a_1#4=■

set @5a_-10#3=■
set @5a_-9#3=■
set @5a_-8#3=■
set @5a_-7#3=■
set @5a_-6#3=■
set @5a_-5#3=■
set @5a_-4#3=■
set @5a_-3#3=■
set @5a_-2#3=■
set @5a_-1#3=■
set @5a_10#3=■
set @5a_9#3=■
set @5a_8#3=■
set @5a_7#3=■
set @5a_6#3=■
set @5a_5#3=■
set @5a_4#3=■
set @5a_3#3=■
set @5a_2#3=■
set @5a_1#3=■

set @5a_-10#2=■
set @5a_-9#2=■
set @5a_-8#2=■
set @5a_-7#2=■
set @5a_-6#2=■
set @5a_-5#2=■
set @5a_-4#2=■
set @5a_-3#2=■
set @5a_-2#2=■
set @5a_-1#2=■
set @5a_10#2=■
set @5a_9#2=■
set @5a_8#2=■
set @5a_7#2=■
set @5a_6#2=■
set @5a_5#2=■
set @5a_4#2=■
set @5a_3#2=■
set @5a_2#2=■
set @5a_1#2=■

set @5a_-10#1=■
set @5a_-9#1=■
set @5a_-8#1=■
set @5a_-7#1=■
set @5a_-6#1=■
set @5a_-5#1=■
set @5a_-4#1=■
set @5a_-3#1=■
set @5a_-2#1=■
set @5a_-1#1=■
set @5a_10#1=■
set @5a_9#1=■
set @5a_8#1=■
set @5a_7#1=■
set @5a_6#1=■
set @5a_5#1=■
set @5a_4#1=■
set @5a_3#1=■
set @5a_2#1=■
set @5a_1#1=■

rem __________________________________________________

set @5a_-10#-10=■
set @5a_-9#-10=■
set @5a_-8#-10=■
set @5a_-7#-10=■
set @5a_-6#-10=■
set @5a_-5#-10=■
set @5a_-4#-10=■
set @5a_-3#-10=■
set @5a_-2#-10=■
set @5a_-1#-10=■
set @5a_10#-10=■
set @5a_9#-10=■
set @5a_8#-10=■
set @5a_7#-10=■
set @5a_6#-10=■
set @5a_5#-10=■
set @5a_4#-10=■
set @5a_3#-10=■
set @5a_2#-10=■
set @5a_1#-10=■

set @5a_-10#-9=■
set @5a_-9#-9=■
set @5a_-8#-9=■
set @5a_-7#-9=■
set @5a_-6#-9=■
set @5a_-5#-9=■
set @5a_-4#-9=■
set @5a_-3#-9=■
set @5a_-2#-9=■
set @5a_-1#-9=■
set @5a_10#-9=■
set @5a_9#-9=■
set @5a_8#-9=■
set @5a_7#-9=■
set @5a_6#-9=■
set @5a_5#-9=■
set @5a_4#-9=■
set @5a_3#-9=■
set @5a_2#-9=■
set @5a_1#-9=■

set @5a_-10#-8=■
set @5a_-9#-8=■
set @5a_-8#-8=■
set @5a_-7#-8=■
set @5a_-6#-8=■
set @5a_-5#-8=■
set @5a_-4#-8=■
set @5a_-3#-8=■
set @5a_-2#-8=■
set @5a_-1#-8=■
set @5a_10#-8=■
set @5a_9#-8=■
set @5a_8#-8=■
set @5a_7#-8=■
set @5a_6#-8=■
set @5a_5#-8=■
set @5a_4#-8=■
set @5a_3#-8=■
set @5a_2#-8=■
set @5a_1#-8=■

set @5a_-10#-7=■
set @5a_-9#-7=■
set @5a_-8#-7=■
set @5a_-7#-7=■
set @5a_-6#-7=■
set @5a_-5#-7=■
set @5a_-4#-7=■
set @5a_-3#-7=■
set @5a_-2#-7=■
set @5a_-1#-7=■
set @5a_10#-7=■
set @5a_9#-7=■
set @5a_8#-7=■
set @5a_7#-7=■
set @5a_6#-7=■
set @5a_5#-7=■
set @5a_4#-7=■
set @5a_3#-7=■
set @5a_2#-7=■
set @5a_1#-7=■

set @5a_-10#-6=■
set @5a_-9#-6=■
set @5a_-8#-6=■
set @5a_-7#-6=■
set @5a_-6#-6=■
set @5a_-5#-6=■
set @5a_-4#-6=■
set @5a_-3#-6=■
set @5a_-2#-6=■
set @5a_-1#-6=■
set @5a_10#-6=■
set @5a_9#-6=■
set @5a_8#-6=■
set @5a_7#-6=■
set @5a_6#-6=■
set @5a_5#-6=■
set @5a_4#-6=■
set @5a_3#-6=■
set @5a_2#-6=■
set @5a_1#-6=■

set @5a_-10#-5=■
set @5a_-9#-5=■
set @5a_-8#-5=■
set @5a_-7#-5=■
set @5a_-6#-5=■
set @5a_-5#-5=■
set @5a_-4#-5=■
set @5a_-3#-5=■
set @5a_-2#-5=■
set @5a_-1#-5=■
set @5a_10#-5=■
set @5a_9#-5=■
set @5a_8#-5=■
set @5a_7#-5=■
set @5a_6#-5=■
set @5a_5#-5=■
set @5a_4#-5=■
set @5a_3#-5=■
set @5a_2#-5=■
set @5a_1#-5=■

set @5a_-10#-4=■
set @5a_-9#-4=■
set @5a_-8#-4=■
set @5a_-7#-4=■
set @5a_-6#-4=■
set @5a_-5#-4=■
set @5a_-4#-4=■
set @5a_-3#-4=■
set @5a_-2#-4=■
set @5a_-1#-4=■
set @5a_10#-4=■
set @5a_9#-4=■
set @5a_8#-4=■
set @5a_7#-4=■
set @5a_6#-4=■
set @5a_5#-4=■
set @5a_4#-4=■
set @5a_3#-4=■
set @5a_2#-4=■
set @5a_1#-4=■

set @5a_-10#-3=■
set @5a_-9#-3=■
set @5a_-8#-3=■
set @5a_-7#-3=■
set @5a_-6#-3=■
set @5a_-5#-3=■
set @5a_-4#-3=■
set @5a_-3#-3=■
set @5a_-2#-3=■
set @5a_-1#-3=■
set @5a_10#-3=■
set @5a_9#-3=■
set @5a_8#-3=■
set @5a_7#-3=■
set @5a_6#-3=■
set @5a_5#-3=■
set @5a_4#-3=■
set @5a_3#-3=■
set @5a_2#-3=■
set @5a_1#-3=■

set @5a_-10#-2=■
set @5a_-9#-2=■
set @5a_-8#-2=■
set @5a_-7#-2=■
set @5a_-6#-2=■
set @5a_-5#-2=■
set @5a_-4#-2=■
set @5a_-3#-2=■
set @5a_-2#-2=■
set @5a_-1#-2=■
set @5a_10#-2=■
set @5a_9#-2=■
set @5a_8#-2=■
set @5a_7#-2=■
set @5a_6#-2=■
set @5a_5#-2=■
set @5a_4#-2=■
set @5a_3#-2=■
set @5a_2#-2=■
set @5a_1#-2=■

set @5a_-10#-1=■
set @5a_-9#-1=■
set @5a_-8#-1=■
set @5a_-7#-1=■
set @5a_-6#-1=■
set @5a_-5#-1=■
set @5a_-4#-1=■
set @5a_-3#-1=■
set @5a_-2#-1=■
set @5a_-1#-1=■
set @5a_10#-1=■
set @5a_9#-1=■
set @5a_8#-1=■
set @5a_7#-1=■
set @5a_6#-1=■
set @5a_5#-1=■
set @5a_4#-1=■
set @5a_3#-1=■
set @5a_2#-1=■
set @5a_1#-1=■



set @5a_スコア=0

rem __________________________________________________

:@5a_retry#x
set /a @5a_ランダム1#x=%random%*21/32767-10
if %@5a_ランダム1#x%==0 goto @5a_retry#x

:@5a_retry#y
set /a @5a_ランダム1#y=%random%*21/32767-10
if %@5a_ランダム1#y%==0 goto @5a_retry#y




set @5a_ランダム1=%@5a_ランダム1#x%#%@5a_ランダム1#y%


rem _______________
echo 何かキーを押して開始
pause>nul

rem ____________________________________________________________________________________________________

:@5a_スタート
cls
echo スコア:%@5a_スコア%
echo %@5a_-10#10%%@5a_-9#10%%@5a_-8#10%%@5a_-7#10%%@5a_-6#10%%@5a_-5#10%%@5a_-4#10%%@5a_-3#10%%@5a_-2#10%%@5a_-1#10%  %@5a_1#10%%@5a_2#10%%@5a_3#10%%@5a_4#10%%@5a_5#10%%@5a_6#10%%@5a_7#10%%@5a_8#10%%@5a_9#10%%@5a_10#10%
echo %@5a_-10#9%%@5a_-9#9%%@5a_-8#9%%@5a_-7#9%%@5a_-6#9%%@5a_-5#9%%@5a_-4#9%%@5a_-3#9%%@5a_-2#9%%@5a_-1#9%  %@5a_1#9%%@5a_2#9%%@5a_3#9%%@5a_4#9%%@5a_5#9%%@5a_6#9%%@5a_7#9%%@5a_8#9%%@5a_9#9%%@5a_10#9%
echo %@5a_-10#8%%@5a_-9#8%%@5a_-8#8%%@5a_-7#8%%@5a_-6#8%%@5a_-5#8%%@5a_-4#8%%@5a_-3#8%%@5a_-2#8%%@5a_-1#8%  %@5a_1#8%%@5a_2#8%%@5a_3#8%%@5a_4#8%%@5a_5#8%%@5a_6#8%%@5a_7#8%%@5a_8#8%%@5a_9#8%%@5a_10#8%
echo %@5a_-10#7%%@5a_-9#7%%@5a_-8#7%%@5a_-7#7%%@5a_-6#7%%@5a_-5#7%%@5a_-4#7%%@5a_-3#7%%@5a_-2#7%%@5a_-1#7%  %@5a_1#7%%@5a_2#7%%@5a_3#7%%@5a_4#7%%@5a_5#7%%@5a_6#7%%@5a_7#7%%@5a_8#7%%@5a_9#7%%@5a_10#7%
echo %@5a_-10#6%%@5a_-9#6%%@5a_-8#6%%@5a_-7#6%%@5a_-6#6%%@5a_-5#6%%@5a_-4#6%%@5a_-3#6%%@5a_-2#6%%@5a_-1#6%  %@5a_1#6%%@5a_2#6%%@5a_3#6%%@5a_4#6%%@5a_5#6%%@5a_6#6%%@5a_7#6%%@5a_8#6%%@5a_9#6%%@5a_10#6%
echo %@5a_-10#5%%@5a_-9#5%%@5a_-8#5%%@5a_-7#5%%@5a_-6#5%%@5a_-5#5%%@5a_-4#5%%@5a_-3#5%%@5a_-2#5%%@5a_-1#5%  %@5a_1#5%%@5a_2#5%%@5a_3#5%%@5a_4#5%%@5a_5#5%%@5a_6#5%%@5a_7#5%%@5a_8#5%%@5a_9#5%%@5a_10#5%
echo %@5a_-10#4%%@5a_-9#4%%@5a_-8#4%%@5a_-7#4%%@5a_-6#4%%@5a_-5#4%%@5a_-4#4%%@5a_-3#4%%@5a_-2#4%%@5a_-1#4%  %@5a_1#4%%@5a_2#4%%@5a_3#4%%@5a_4#4%%@5a_5#4%%@5a_6#4%%@5a_7#4%%@5a_8#4%%@5a_9#4%%@5a_10#4%
echo %@5a_-10#3%%@5a_-9#3%%@5a_-8#3%%@5a_-7#3%%@5a_-6#3%%@5a_-5#3%%@5a_-4#3%%@5a_-3#3%%@5a_-2#3%%@5a_-1#3%  %@5a_1#3%%@5a_2#3%%@5a_3#3%%@5a_4#3%%@5a_5#3%%@5a_6#3%%@5a_7#3%%@5a_8#3%%@5a_9#3%%@5a_10#3%
echo %@5a_-10#2%%@5a_-9#2%%@5a_-8#2%%@5a_-7#2%%@5a_-6#2%%@5a_-5#2%%@5a_-4#2%%@5a_-3#2%%@5a_-2#2%%@5a_-1#2%  %@5a_1#2%%@5a_2#2%%@5a_3#2%%@5a_4#2%%@5a_5#2%%@5a_6#2%%@5a_7#2%%@5a_8#2%%@5a_9#2%%@5a_10#2%
echo %@5a_-10#1%%@5a_-9#1%%@5a_-8#1%%@5a_-7#1%%@5a_-6#1%%@5a_-5#1%%@5a_-4#1%%@5a_-3#1%%@5a_-2#1%%@5a_-1#1%  %@5a_1#1%%@5a_2#1%%@5a_3#1%%@5a_4#1%%@5a_5#1%%@5a_6#1%%@5a_7#1%%@5a_8#1%%@5a_9#1%%@5a_10#1%
echo.
echo %@5a_-10#-1%%@5a_-9#-1%%@5a_-8#-1%%@5a_-7#-1%%@5a_-6#-1%%@5a_-5#-1%%@5a_-4#-1%%@5a_-3#-1%%@5a_-2#-1%%@5a_-1#-1%  %@5a_1#-1%%@5a_2#-1%%@5a_3#-1%%@5a_4#-1%%@5a_5#-1%%@5a_6#-1%%@5a_7#-1%%@5a_8#-1%%@5a_9#-1%%@5a_10#-1%
echo %@5a_-10#-2%%@5a_-9#-2%%@5a_-8#-2%%@5a_-7#-2%%@5a_-6#-2%%@5a_-5#-2%%@5a_-4#-2%%@5a_-3#-2%%@5a_-2#-2%%@5a_-1#-2%  %@5a_1#-2%%@5a_2#-2%%@5a_3#-2%%@5a_4#-2%%@5a_5#-2%%@5a_6#-2%%@5a_7#-2%%@5a_8#-2%%@5a_9#-2%%@5a_10#-2%
echo %@5a_-10#-3%%@5a_-9#-3%%@5a_-8#-3%%@5a_-7#-3%%@5a_-6#-3%%@5a_-5#-3%%@5a_-4#-3%%@5a_-3#-3%%@5a_-2#-3%%@5a_-1#-3%  %@5a_1#-3%%@5a_2#-3%%@5a_3#-3%%@5a_4#-3%%@5a_5#-3%%@5a_6#-3%%@5a_7#-3%%@5a_8#-3%%@5a_9#-3%%@5a_10#-3%
echo %@5a_-10#-4%%@5a_-9#-4%%@5a_-8#-4%%@5a_-7#-4%%@5a_-6#-4%%@5a_-5#-4%%@5a_-4#-4%%@5a_-3#-4%%@5a_-2#-4%%@5a_-1#-4%  %@5a_1#-4%%@5a_2#-4%%@5a_3#-4%%@5a_4#-4%%@5a_5#-4%%@5a_6#-4%%@5a_7#-4%%@5a_8#-4%%@5a_9#-4%%@5a_10#-4%
echo %@5a_-10#-5%%@5a_-9#-5%%@5a_-8#-5%%@5a_-7#-5%%@5a_-6#-5%%@5a_-5#-5%%@5a_-4#-5%%@5a_-3#-5%%@5a_-2#-5%%@5a_-1#-5%  %@5a_1#-5%%@5a_2#-5%%@5a_3#-5%%@5a_4#-5%%@5a_5#-5%%@5a_6#-5%%@5a_7#-5%%@5a_8#-5%%@5a_9#-5%%@5a_10#-5%
echo %@5a_-10#-6%%@5a_-9#-6%%@5a_-8#-6%%@5a_-7#-6%%@5a_-6#-6%%@5a_-5#-6%%@5a_-4#-6%%@5a_-3#-6%%@5a_-2#-6%%@5a_-1#-6%  %@5a_1#-6%%@5a_2#-6%%@5a_3#-6%%@5a_4#-6%%@5a_5#-6%%@5a_6#-6%%@5a_7#-6%%@5a_8#-6%%@5a_9#-6%%@5a_10#-6%
echo %@5a_-10#-7%%@5a_-9#-7%%@5a_-8#-7%%@5a_-7#-7%%@5a_-6#-7%%@5a_-5#-7%%@5a_-4#-7%%@5a_-3#-7%%@5a_-2#-7%%@5a_-1#-7%  %@5a_1#-7%%@5a_2#-7%%@5a_3#-7%%@5a_4#-7%%@5a_5#-7%%@5a_6#-7%%@5a_7#-7%%@5a_8#-7%%@5a_9#-7%%@5a_10#-7%
echo %@5a_-10#-8%%@5a_-9#-8%%@5a_-8#-8%%@5a_-7#-8%%@5a_-6#-8%%@5a_-5#-8%%@5a_-4#-8%%@5a_-3#-8%%@5a_-2#-8%%@5a_-1#-8%  %@5a_1#-8%%@5a_2#-8%%@5a_3#-8%%@5a_4#-8%%@5a_5#-8%%@5a_6#-8%%@5a_7#-8%%@5a_8#-8%%@5a_9#-8%%@5a_10#-8%
echo %@5a_-10#-9%%@5a_-9#-9%%@5a_-8#-9%%@5a_-7#-9%%@5a_-6#-9%%@5a_-5#-9%%@5a_-4#-9%%@5a_-3#-9%%@5a_-2#-9%%@5a_-1#-9%  %@5a_1#-9%%@5a_2#-9%%@5a_3#-9%%@5a_4#-9%%@5a_5#-9%%@5a_6#-9%%@5a_7#-9%%@5a_8#-9%%@5a_9#-9%%@5a_10#-9%
echo %@5a_-10#-10%%@5a_-9#-10%%@5a_-8#-10%%@5a_-7#-10%%@5a_-6#-10%%@5a_-5#-10%%@5a_-4#-10%%@5a_-3#-10%%@5a_-2#-10%%@5a_-1#-10%  %@5a_1#-10%%@5a_2#-10%%@5a_3#-10%%@5a_4#-10%%@5a_5#-10%%@5a_6#-10%%@5a_7#-10%%@5a_8#-10%%@5a_9#-10%%@5a_10#-10%


rem ____________________________________________________________________________________________________




set /p @5a_選択x=x座標を入力(-10～10 ※0を除く)[ゲームを終了するには0を入力]
if %@5a_選択x%==0 goto @5a_終了?

set /p @5a_選択y=y座標を入力(-10～10 ※0を除く)[ゲームを終了するには0を入力]
if %@5a_選択y%==0 goto @5a_終了?

set @5a_選択=%@5a_選択x%#%@5a_選択y%
set @5a_命中させた数=0
if %@5a_ランダム1%==%@5a_選択% (
 set /a @5a_命中させた数=%@5a_命中させた数%+1 > nul　& set @5a_%@5a_選択%=◎
) else (
  set @5a_%@5a_選択%=×
)


if %@5a_命中させた数%==%@5a_隻数% (
  goto @5a_クリア
) else (
  set /a @5a_スコア=%@5a_スコア%+1>nul & goto @5a_スタート
)





:@5a_クリア
cls
echo クリア

echo 結果表示

echo %@5a_-10#10%%@5a_-9#10%%@5a_-8#10%%@5a_-7#10%%@5a_-6#10%%@5a_-5#10%%@5a_-4#10%%@5a_-3#10%%@5a_-2#10%%@5a_-1#10%  %@5a_1#10%%@5a_2#10%%@5a_3#10%%@5a_4#10%%@5a_5#10%%@5a_6#10%%@5a_7#10%%@5a_8#10%%@5a_9#10%%@5a_10#10%
echo %@5a_-10#9%%@5a_-9#9%%@5a_-8#9%%@5a_-7#9%%@5a_-6#9%%@5a_-5#9%%@5a_-4#9%%@5a_-3#9%%@5a_-2#9%%@5a_-1#9%  %@5a_1#9%%@5a_2#9%%@5a_3#9%%@5a_4#9%%@5a_5#9%%@5a_6#9%%@5a_7#9%%@5a_8#9%%@5a_9#9%%@5a_10#9%
echo %@5a_-10#8%%@5a_-9#8%%@5a_-8#8%%@5a_-7#8%%@5a_-6#8%%@5a_-5#8%%@5a_-4#8%%@5a_-3#8%%@5a_-2#8%%@5a_-1#8%  %@5a_1#8%%@5a_2#8%%@5a_3#8%%@5a_4#8%%@5a_5#8%%@5a_6#8%%@5a_7#8%%@5a_8#8%%@5a_9#8%%@5a_10#8%
echo %@5a_-10#7%%@5a_-9#7%%@5a_-8#7%%@5a_-7#7%%@5a_-6#7%%@5a_-5#7%%@5a_-4#7%%@5a_-3#7%%@5a_-2#7%%@5a_-1#7%  %@5a_1#7%%@5a_2#7%%@5a_3#7%%@5a_4#7%%@5a_5#7%%@5a_6#7%%@5a_7#7%%@5a_8#7%%@5a_9#7%%@5a_10#7%
echo %@5a_-10#6%%@5a_-9#6%%@5a_-8#6%%@5a_-7#6%%@5a_-6#6%%@5a_-5#6%%@5a_-4#6%%@5a_-3#6%%@5a_-2#6%%@5a_-1#6%  %@5a_1#6%%@5a_2#6%%@5a_3#6%%@5a_4#6%%@5a_5#6%%@5a_6#6%%@5a_7#6%%@5a_8#6%%@5a_9#6%%@5a_10#6%
echo %@5a_-10#5%%@5a_-9#5%%@5a_-8#5%%@5a_-7#5%%@5a_-6#5%%@5a_-5#5%%@5a_-4#5%%@5a_-3#5%%@5a_-2#5%%@5a_-1#5%  %@5a_1#5%%@5a_2#5%%@5a_3#5%%@5a_4#5%%@5a_5#5%%@5a_6#5%%@5a_7#5%%@5a_8#5%%@5a_9#5%%@5a_10#5%
echo %@5a_-10#4%%@5a_-9#4%%@5a_-8#4%%@5a_-7#4%%@5a_-6#4%%@5a_-5#4%%@5a_-4#4%%@5a_-3#4%%@5a_-2#4%%@5a_-1#4%  %@5a_1#4%%@5a_2#4%%@5a_3#4%%@5a_4#4%%@5a_5#4%%@5a_6#4%%@5a_7#4%%@5a_8#4%%@5a_9#4%%@5a_10#4%
echo %@5a_-10#3%%@5a_-9#3%%@5a_-8#3%%@5a_-7#3%%@5a_-6#3%%@5a_-5#3%%@5a_-4#3%%@5a_-3#3%%@5a_-2#3%%@5a_-1#3%  %@5a_1#3%%@5a_2#3%%@5a_3#3%%@5a_4#3%%@5a_5#3%%@5a_6#3%%@5a_7#3%%@5a_8#3%%@5a_9#3%%@5a_10#3%
echo %@5a_-10#2%%@5a_-9#2%%@5a_-8#2%%@5a_-7#2%%@5a_-6#2%%@5a_-5#2%%@5a_-4#2%%@5a_-3#2%%@5a_-2#2%%@5a_-1#2%  %@5a_1#2%%@5a_2#2%%@5a_3#2%%@5a_4#2%%@5a_5#2%%@5a_6#2%%@5a_7#2%%@5a_8#2%%@5a_9#2%%@5a_10#2%
echo %@5a_-10#1%%@5a_-9#1%%@5a_-8#1%%@5a_-7#1%%@5a_-6#1%%@5a_-5#1%%@5a_-4#1%%@5a_-3#1%%@5a_-2#1%%@5a_-1#1%  %@5a_1#1%%@5a_2#1%%@5a_3#1%%@5a_4#1%%@5a_5#1%%@5a_6#1%%@5a_7#1%%@5a_8#1%%@5a_9#1%%@5a_10#1%
echo.
echo %@5a_-10#-1%%@5a_-9#-1%%@5a_-8#-1%%@5a_-7#-1%%@5a_-6#-1%%@5a_-5#-1%%@5a_-4#-1%%@5a_-3#-1%%@5a_-2#-1%%@5a_-1#-1%  %@5a_1#-1%%@5a_2#-1%%@5a_3#-1%%@5a_4#-1%%@5a_5#-1%%@5a_6#-1%%@5a_7#-1%%@5a_8#-1%%@5a_9#-1%%@5a_10#-1%
echo %@5a_-10#-2%%@5a_-9#-2%%@5a_-8#-2%%@5a_-7#-2%%@5a_-6#-2%%@5a_-5#-2%%@5a_-4#-2%%@5a_-3#-2%%@5a_-2#-2%%@5a_-1#-2%  %@5a_1#-2%%@5a_2#-2%%@5a_3#-2%%@5a_4#-2%%@5a_5#-2%%@5a_6#-2%%@5a_7#-2%%@5a_8#-2%%@5a_9#-2%%@5a_10#-2%
echo %@5a_-10#-3%%@5a_-9#-3%%@5a_-8#-3%%@5a_-7#-3%%@5a_-6#-3%%@5a_-5#-3%%@5a_-4#-3%%@5a_-3#-3%%@5a_-2#-3%%@5a_-1#-3%  %@5a_1#-3%%@5a_2#-3%%@5a_3#-3%%@5a_4#-3%%@5a_5#-3%%@5a_6#-3%%@5a_7#-3%%@5a_8#-3%%@5a_9#-3%%@5a_10#-3%
echo %@5a_-10#-4%%@5a_-9#-4%%@5a_-8#-4%%@5a_-7#-4%%@5a_-6#-4%%@5a_-5#-4%%@5a_-4#-4%%@5a_-3#-4%%@5a_-2#-4%%@5a_-1#-4%  %@5a_1#-4%%@5a_2#-4%%@5a_3#-4%%@5a_4#-4%%@5a_5#-4%%@5a_6#-4%%@5a_7#-4%%@5a_8#-4%%@5a_9#-4%%@5a_10#-4%
echo %@5a_-10#-5%%@5a_-9#-5%%@5a_-8#-5%%@5a_-7#-5%%@5a_-6#-5%%@5a_-5#-5%%@5a_-4#-5%%@5a_-3#-5%%@5a_-2#-5%%@5a_-1#-5%  %@5a_1#-5%%@5a_2#-5%%@5a_3#-5%%@5a_4#-5%%@5a_5#-5%%@5a_6#-5%%@5a_7#-5%%@5a_8#-5%%@5a_9#-5%%@5a_10#-5%
echo %@5a_-10#-6%%@5a_-9#-6%%@5a_-8#-6%%@5a_-7#-6%%@5a_-6#-6%%@5a_-5#-6%%@5a_-4#-6%%@5a_-3#-6%%@5a_-2#-6%%@5a_-1#-6%  %@5a_1#-6%%@5a_2#-6%%@5a_3#-6%%@5a_4#-6%%@5a_5#-6%%@5a_6#-6%%@5a_7#-6%%@5a_8#-6%%@5a_9#-6%%@5a_10#-6%
echo %@5a_-10#-7%%@5a_-9#-7%%@5a_-8#-7%%@5a_-7#-7%%@5a_-6#-7%%@5a_-5#-7%%@5a_-4#-7%%@5a_-3#-7%%@5a_-2#-7%%@5a_-1#-7%  %@5a_1#-7%%@5a_2#-7%%@5a_3#-7%%@5a_4#-7%%@5a_5#-7%%@5a_6#-7%%@5a_7#-7%%@5a_8#-7%%@5a_9#-7%%@5a_10#-7%
echo %@5a_-10#-8%%@5a_-9#-8%%@5a_-8#-8%%@5a_-7#-8%%@5a_-6#-8%%@5a_-5#-8%%@5a_-4#-8%%@5a_-3#-8%%@5a_-2#-8%%@5a_-1#-8%  %@5a_1#-8%%@5a_2#-8%%@5a_3#-8%%@5a_4#-8%%@5a_5#-8%%@5a_6#-8%%@5a_7#-8%%@5a_8#-8%%@5a_9#-8%%@5a_10#-8%
echo %@5a_-10#-9%%@5a_-9#-9%%@5a_-8#-9%%@5a_-7#-9%%@5a_-6#-9%%@5a_-5#-9%%@5a_-4#-9%%@5a_-3#-9%%@5a_-2#-9%%@5a_-1#-9%  %@5a_1#-9%%@5a_2#-9%%@5a_3#-9%%@5a_4#-9%%@5a_5#-9%%@5a_6#-9%%@5a_7#-9%%@5a_8#-9%%@5a_9#-9%%@5a_10#-9%
echo %@5a_-10#-10%%@5a_-9#-10%%@5a_-8#-10%%@5a_-7#-10%%@5a_-6#-10%%@5a_-5#-10%%@5a_-4#-10%%@5a_-3#-10%%@5a_-2#-10%%@5a_-1#-10%  %@5a_1#-10%%@5a_2#-10%%@5a_3#-10%%@5a_4#-10%%@5a_5#-10%%@5a_6#-10%%@5a_7#-10%%@5a_8#-10%%@5a_9#-10%%@5a_10#-10%

echo スコア:%@5a_スコア%

echo 何かキーを押すとホームに戻ります
pause>nul
goto home


:@5a_終了?
cls
echo 本当に終了していいですか？ yes or no

set @5a_終了?=no
set /p @5a_終了?=

if %@5a_終了?%==yes cls&goto home
if %@5a_終了?%==no goto @5a_スタート

goto @5a_終了?
_____________________________________________________________________
:@5b 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5c 





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5d 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5e 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5g 
title %sn%




echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@5z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6a 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6b 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6c 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6d 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6e 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@6z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7a 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7b 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7c 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7d 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7e 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7f 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7g 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7h 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7i 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7j 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7k 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7l 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7m 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7n 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7o 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7p 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7q 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7r 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7s 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7t 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7u 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7v 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7w 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7x 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7y 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________
:@7z 
title %sn%





echo 何かキーを押すとホームに戻ります
pause>nul
goto home

_____________________________________________________________________