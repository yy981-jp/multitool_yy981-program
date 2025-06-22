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
msg %username% /time 100000000000000000000 /w yy981-program���N�����ł�^

�G���[�̔�����h�~���邽�߂ɁA�����N���͂ł��܂���
set syn-exe_choice=1
)

if %syn-exe_choice%==1 choice /c 12 /m "1.�I�� 2.%yy981_title%����n�܂�E�B���h�E���I��"
if %syn-exe_choice%==1 if %errorlevel%==1 type nul >%yy981_temp%\exit&exit
if %syn-exe_choice%==1 if %errorlevel%==2 taskkill /fi "windowtitle eq %yy981_title%*"&goto start

if %syn-exe_ex%==0 (
msg %username% /time 100000000000000000000 /w [error]^^

�t�@�C�����g���q���ǂݍ��߂Ȃ���.exe�ł͂���܂���^^

yy981-program_�V���[�g�J�b�g ����N�����Ă�������^^

(�ݒ��ύX���Ă��Ȃ��ꍇ�A�f�X�N�g�b�v�ɂ���܂�)
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
title %yy981_title%{%yy981_title-p%}^|�z�[��
echo ^<�z�[��^>
echo 1. �R�}���h�f�X�N�g�b�v1(pc�V�X�e�� and yy981-program�V�X�e��)
echo 2. �R�}���h�f�X�N�g�b�v2(�A�v��)
echo 3. �R�}���h�f�X�N�g�b�v3(�c�[��-1[bat])
echo 4. �R�}���h�f�X�N�g�b�v4(�c�[��-2[bat])
echo 5. �R�}���h�f�X�N�g�b�v5(�Q�[��-1[bat])
echo 6. �R�}���h�f�X�N�g�b�v6(�Q�[��-2[bat])
echo 7. �R�}���h�f�X�N�g�b�v7(�]��)
echo 8. �R�}���h�f�X�N�g�b�v8(���[�U�[�w��-1)
echo 9. �R�}���h�f�X�N�g�b�v9(���[�U�[�w��-2)

echo ------------------------

echo D. �f�o�b�N

echo L. ���b�N

echo B. �u�����N

echo P. �v���t�@�C���I��

echo R. �ēǂݍ���

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
if %errorlevel%==15 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==16 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==17 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==18 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==19 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==20 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==21 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==22 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==23 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==24 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==25 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==26 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==27 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==28 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==29 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==30 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==31 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==32 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==33 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==34 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==35 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������
if %errorlevel%==36 echo �I�v�V�����ɂȂ����̂�I�����Ȃ��ł�������




echo �G���[
goto home

*********************************************************************
:file_y
if not %yy981_y%==1 goto file_y_exit

:file_y_r2

set /a file_y_r=%file_y_r%+1

rem --------------------
rem ��������
rem --------------------

rem yy981-system_path
if not exist %yy981_d%\soft\path.yy981 echo %0>%yy981_d%\soft\path.yy981

rem --------------------
rem ��������&�ǂݍ���
rem --------------------

rem color
if not exist %yy981_d%\profile\%pf%\setting\color.yy981 echo 03 >%yy981_d%\profile\%pf%\setting\color.yy981
set /p color=<%yy981_d%\profile\%pf%\setting\color.yy981
color %color%

rem cmd_�V����
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


echo �G���[���������܂���
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
rem ���e
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
rem ���e
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

if not exist %yy981_d%\profile\1\setting\name.yy981 echo �v���t�@�C��1 >%yy981_d%\profile\1\setting\name.yy981
set /p pfname1=<%yy981_d%\profile\1\setting\name.yy981
if not exist %yy981_d%\profile\2\setting\name.yy981 echo �v���t�@�C��2 >%yy981_d%\profile\2\setting\name.yy981
set /p pfname2=<%yy981_d%\profile\2\setting\name.yy981
if not exist %yy981_d%\profile\3\setting\name.yy981 echo �v���t�@�C��3 >%yy981_d%\profile\3\setting\name.yy981
set /p pfname3=<%yy981_d%\profile\3\setting\name.yy981
if not exist %yy981_d%\profile\4\setting\name.yy981 echo �v���t�@�C��4 >%yy981_d%\profile\4\setting\name.yy981
set /p pfname4=<%yy981_d%\profile\4\setting\name.yy981
if not exist %yy981_d%\profile\5\setting\name.yy981 echo �v���t�@�C��5 >%yy981_d%\profile\5\setting\name.yy981
set /p pfname5=<%yy981_d%\profile\5\setting\name.yy981
if not exist %yy981_d%\profile\6\setting\name.yy981 echo �v���t�@�C��6 >%yy981_d%\profile\6\setting\name.yy981
set /p pfname6=<%yy981_d%\profile\6\setting\name.yy981
if not exist %yy981_d%\profile\7\setting\name.yy981 echo �v���t�@�C��7 >%yy981_d%\profile\7\setting\name.yy981
set /p pfname7=<%yy981_d%\profile\7\setting\name.yy981
if not exist %yy981_d%\profile\8\setting\name.yy981 echo �v���t�@�C��8 >%yy981_d%\profile\8\setting\name.yy981
set /p pfname8=<%yy981_d%\profile\8\setting\name.yy981
if not exist %yy981_d%\profile\9\setting\name.yy981 echo �v���t�@�C��9 >%yy981_d%\profile\9\setting\name.yy981
set /p pfname9=<%yy981_d%\profile\9\setting\name.yy981


goto file_y_exit
*********************************************************************
:1~7
echo.
echo.

if %cmd%==1 set sm=pc�V�X�e�� and yy981-program�V�X�e��
if %cmd%==2 set sm=�A�v��
if %cmd%==3 set sm=�c�[��-1[bat]
if %cmd%==4 set sm=�c�[��-2[bat]
if %cmd%==5 set sm=�Q�[��-1[bat]
if %cmd%==6 set sm=�Q�[��-2[bat]
if %cmd%==7 set sm=�]��
if %cmd%==8 set sm=���[�U�[�w��-1
if %cmd%==9 set sm=���[�U�[�w��-2

set /p yy981_b-system_1_t=<%yy981_d%\profile\%pf%\setting\name.yy981
set yy981path=@%cmd%%alf%
set sn=yy981(ver%yy981ver%){%yy981_b-system_1_t:~-100,-1%}   [%yy981path%]

goto @%cmd%%alf%


echo �G���[���������܂���
goto home

:8~9
echo.
echo.

if %cmd%==1 set sm=pc�V�X�e�� and yy981-program�V�X�e��
if %cmd%==2 set sm=�A�v��
if %cmd%==3 set sm=�c�[��-1[bat]
if %cmd%==4 set sm=�c�[��-2[bat]
if %cmd%==5 set sm=�Q�[��-1[bat]
if %cmd%==6 set sm=�Q�[��-2[bat]
if %cmd%==7 set sm=�]��
if %cmd%==8 set sm=���[�U�[�w��-1
if %cmd%==9 set sm=���[�U�[�w��-2

set /p yy981_b-system_2_t_1=<%yy981_d%\profile\%pf%\setting\name.yy981
set /p yy981_b-system_2_t_2=<%yy981_d%\profile\%pf%\cmddsk\%cmd%_t_%alf%.yy981
set /p yy981_b-system_2_n=<%yy981_d%\profile\%pf%\cmddsk\%cmd%_n_%alf%.yy981
set yy981path=%pf%%cmd%%alf%
set sn=yy981(ver%yy981ver%){%yy981_b-system_2_t_1:~-100,-1%}   [%yy981path%]

title %sn%(%yy981_b-system_2_t_2%)


%yy981_b-system_2_n%


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home
*********************************************************************
:lock


choice /t 3 /d y /n /m yy981�����b�N���܂���?
if %errorlevel%==2 goto home

:lock_r

echo 1 >%yy981_d%\profile\z\setting\lock.yy981
title %yy981_title%^|���b�N��

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
set /p psn=�p�X���[�h����͂��Ă�������(�����ݒ肵�Ă��Ȃ��ꍇ�� 00000 �ł�)

if %ps%==%psn% (
cls
set psn=""
echo ���b�N���������܂���
echo 0 >%yy981_d%\profile\z\setting\lock.yy981
if %yy981_startup%==1 goto yy981_start
set startup_home=1
goto home
)

echo �p�X���[�h�������́A�v���t�@�C�����Ԉ���Ă��܂�
timeout /t 3 /nobreak>nul
goto lock_r


*********************************************************************
:debug
title %yy981_title%^|�f�o�b�N
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

echo ^&���܂܂��t�@�C����t�H���_�͎g�p�ł��܂���
:ex_start

echo.
echo.

if %ex_return-point%==file_4 echo [�ړ���̃t�H���_�[�ɂ���t�@�C����I��]
if %ex_return-point%==file_1 echo [�t�@�C���I��]

echo ��̂ق��Ƀt�H���_�@���̂ق��Ƀt�@�C�����\������܂�

echo [������@]

echo �t�H���_��         ���̃t�H���_�Ɉړ�

echo �t�@�C����         ���̃t�@�C����ҏW��

echo y9/reload          �ēǂݍ���

echo y9/cmd             �f�o�b�N�p

echo y9/back            ��̃t�H���_�Ɉړ�

echo y9/uback           ���[�U�[�̃t�H���_�Ɉړ�

echo y9/xback           �ŏ�̃t�H���_�Ɉړ�

echo y9/type            �\�����e�̑I��

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
rem (((��������)))

set ex_n_m_s=y9/reload
set /p ex_n_m_s=���������(y9/back�Ɠ��͂����1��ɖ߂�):
set ex_n_m_s=%ex_n_m_s:^&=%

if %ex_n_m_s%==%ex_5%    echo ����̓t�H���_�ƃt�@�C������؂���̂ł�&goto ex_start
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

if %ex_n_m_s% geq %ex_6% echo �G���[(�t�@�C��or�t�H���_���̍����ɕ\�����ꂽ��������͂��Ă�������)&goto ex_n_m_s
if %ex_n_m_s% leq 0 echo �G���[(1�ȏ����͂��Ă�������)&goto ex_n_m_s
if %ex_n_m_s% leq 9 set ex_s=%ex_dir_h:~2%&goto ex_n_m_s_s
if %ex_n_m_s% leq 99 set ex_s=%ex_dir_h:~3%&goto ex_n_m_s_s
if %ex_n_m_s% leq 999 set ex_s=%ex_dir_h:~4%&goto ex_n_m_s_s
if %ex_n_m_s% leq 9999 set ex_s=%ex_dir_h:~5%&goto ex_n_m_s_s
if %ex_n_m_s% leq 99999 set ex_s=%ex_dir_h:~6%&goto ex_n_m_s_s
if %ex_n_m_s% geq 100000 echo �G���[(�����ȊO��������100000�ȏ�ɂ͑Ή����Ă��܂���)&goto ex_n_m_s

echo �G���[
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
echo �G���[&goto ex_start
)
cd %ex_n% & goto ex_start

:ex_mode1_exit
choice /m ���̃t�@�C����I�����܂���?
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
rem ��������
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,�L�����Z��

echo 1,���s

echo 2,�R�s�[

echo 3,�폜

echo 4,�ړ�

echo 5,���O�̕ύX

choice /c:012345
if %errorlevel%==1 goto ex_start
if %errorlevel%==2 goto ex_file_1
if %errorlevel%==3 goto ex_file_2
if %errorlevel%==4 goto ex_file_3
if %errorlevel%==5 goto ex_file_4
if %errorlevel%==6 goto ex_file_5





:ex_file_1

echo %ex_n_e%�����s���܂���?(E=NOTEPAD�ŊJ�� C=�t�@�C�����J�����̂�I��)

choice /c ynec
if %errorlevel%==1 start %ex_n% %ex_n% & goto ex_start
if %errorlevel%==2 echo %ex_n_e%�̎��s���L�����Z�����܂��� & goto ex_start
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
echo %ex_n_e%�����s���܂�

goto ex_start
:ex_file_2

echo %ex_n_e%���R�s�[���܂���?

choice
if %errorlevel%==2 echo %ex_n%�̃R�s�[���L�����Z�����܂��� & goto ex_start

copy %ex_n% "y9 - %ex_s%" >nul
echo [%ex_n_e%]��["y9 - %ex_s%"]�Ƃ������O�ŃR�s�[���܂���

goto ex_start
:ex_file_3

echo %ex_n_e%���폜���܂���?

choice
if %errorlevel%==2 echo %ex_n%�̍폜���L�����Z�����܂��� & goto ex_start
del %ex_n%
echo %ex_n_e%���폜���܂���
goto ex_start

:ex_file_4
echo %ex_n_e%���ړ������܂���?
set ex_file_4=^"%ex_n_e%^"

choice
if %errorlevel%==2 echo %ex_n_e%�̈ړ����L�����Z�����܂��� & goto ex_start
set ex_mode=1
set ex_return-point=file_4
goto ex_start

:ex_file_4_exit

move %ex_file_4% ^"%ex_path_d_m%^" >nul
echo %ex_n_e%��%ex_mode1_path_d_m%�Ɉړ����܂���

goto ex_start
:ex_file_5
echo %ex_n_e%�̖��O��ύX���܂���?

choice
if %errorlevel%==2 echo %ex_n%�̖��O�̕ύX���L�����Z�����܂��� & goto ex_start
set /p ex_file_5_name=%ex_n%�ύX��̖��O�����:

ren %ex_n% %ex_file_5_name%
echo %ex_n_e%��%ex_file_5_name%�ɕύX���܂���

goto ex_start


:ex_type-choice
echo R �ǎ���p�t�@�C��   %ex_type-r%
echo H �B���t�@�C��         %ex_type-h%
echo A �A�[�J�C�u�t�@�C��   %ex_type-a%
echo S �V�X�e���t�@�C��     %ex_type-s%
echo E �I���I��

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

echo �G���[���������܂���
goto home
*********************************************************************
:blank
title %yy981_title%^|�u�����N
choice /m ���s���܂���?
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
@rem 1,[1~���p�L��      [50~���p����
@
@rem 2,[1~�S�p�L��      [50~�S�p����
@
@rem 3,[1~���p�A���t�@�x�b�g
@
@rem 4,[1~�S�p�A���t�@�x�b�g
@
@rem 5,[1~�J�^�J�i
@
@rem 6,[1~�Ђ炪��
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
@rem �Í��������J�n
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
@rem [�����s��]   
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
@rem [������]   
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
@if "^%msg_1_in%"=="^�I" set msg_1_out=201
@if "^%msg_1_in%"=="^�h" set msg_1_out=202
@if "^%msg_1_in%"=="^��" set msg_1_out=203
@if "^%msg_1_in%"=="^��" set msg_1_out=204
@if "^%msg_1_in%"=="^��" set msg_1_out=205
@if "^%msg_1_in%"=="^��" set msg_1_out=206
@if "^%msg_1_in%"=="^�f" set msg_1_out=207
@if "^%msg_1_in%"=="^�i" set msg_1_out=208
@if "^%msg_1_in%"=="^�j" set msg_1_out=209
@if "^%msg_1_in%"=="^��" set msg_1_out=210
@if "^%msg_1_in%"=="^�`" set msg_1_out=211
@if "^%msg_1_in%"=="^�b" set msg_1_out=212
@if "^%msg_1_in%"=="^�e" set msg_1_out=213
@if "^%msg_1_in%"=="^�o" set msg_1_out=214
@if "^%msg_1_in%"=="^�{" set msg_1_out=215
@if "^%msg_1_in%"=="^��" set msg_1_out=216
@if "^%msg_1_in%"=="^�p" set msg_1_out=217
@if "^%msg_1_in%"=="^��" set msg_1_out=218
@if "^%msg_1_in%"=="^��" set msg_1_out=219
@if "^%msg_1_in%"=="^�H" set msg_1_out=220
@if "^%msg_1_in%"=="^�Q" set msg_1_out=221
@if "^%msg_1_in%"=="�P" set msg_1_out=251
@if "^%msg_1_in%"=="�Q" set msg_1_out=252
@if "^%msg_1_in%"=="�R" set msg_1_out=253
@if "^%msg_1_in%"=="�S" set msg_1_out=254
@if "^%msg_1_in%"=="�T" set msg_1_out=255
@if "^%msg_1_in%"=="�U" set msg_1_out=256
@if "^%msg_1_in%"=="�V" set msg_1_out=257
@if "^%msg_1_in%"=="�W" set msg_1_out=258
@if "^%msg_1_in%"=="�X" set msg_1_out=259
@if "^%msg_1_in%"=="�O" set msg_1_out=260
@if "^%msg_1_in%"=="^�[" set msg_1_out=261
@if "^%msg_1_in%"=="^�O" set msg_1_out=262
@if "^%msg_1_in%"=="^��" set msg_1_out=263
@if "^%msg_1_in%"=="^��" set msg_1_out=264
@if "^%msg_1_in%"=="^�u" set msg_1_out=265
@if "^%msg_1_in%"=="^�G" set msg_1_out=266
@if "^%msg_1_in%"=="^�F" set msg_1_out=267
@if "^%msg_1_in%"=="^�v" set msg_1_out=268
@if "^%msg_1_in%"=="^�A" set msg_1_out=269
@if "^%msg_1_in%"=="^�B" set msg_1_out=270
@if "^%msg_1_in%"=="^�E" set msg_1_out=271
@if "^%msg_1_in%"=="^�@" set msg_1_out=272
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
@if "%msg_1_in%"=="��" set msg_1_out=401
@if "%msg_1_in%"=="��" set msg_1_out=402
@if "%msg_1_in%"=="��" set msg_1_out=403
@if "%msg_1_in%"=="��" set msg_1_out=404
@if "%msg_1_in%"=="��" set msg_1_out=405
@if "%msg_1_in%"=="��" set msg_1_out=406
@if "%msg_1_in%"=="��" set msg_1_out=407
@if "%msg_1_in%"=="��" set msg_1_out=408
@if "%msg_1_in%"=="��" set msg_1_out=409
@if "%msg_1_in%"=="��" set msg_1_out=410
@if "%msg_1_in%"=="��" set msg_1_out=411
@if "%msg_1_in%"=="��" set msg_1_out=412
@if "%msg_1_in%"=="��" set msg_1_out=413
@if "%msg_1_in%"=="��" set msg_1_out=414
@if "%msg_1_in%"=="��" set msg_1_out=415
@if "%msg_1_in%"=="��" set msg_1_out=416
@if "%msg_1_in%"=="��" set msg_1_out=417
@if "%msg_1_in%"=="��" set msg_1_out=418
@if "%msg_1_in%"=="��" set msg_1_out=419
@if "%msg_1_in%"=="��" set msg_1_out=420
@if "%msg_1_in%"=="��" set msg_1_out=421
@if "%msg_1_in%"=="��" set msg_1_out=422
@if "%msg_1_in%"=="��" set msg_1_out=423
@if "%msg_1_in%"=="��" set msg_1_out=424
@if "%msg_1_in%"=="��" set msg_1_out=425
@if "%msg_1_in%"=="��" set msg_1_out=426
@if "%msg_1_in%"=="�`" set msg_1_out=451
@if "%msg_1_in%"=="�a" set msg_1_out=452
@if "%msg_1_in%"=="�b" set msg_1_out=453
@if "%msg_1_in%"=="�c" set msg_1_out=454
@if "%msg_1_in%"=="�d" set msg_1_out=455
@if "%msg_1_in%"=="�e" set msg_1_out=456
@if "%msg_1_in%"=="�f" set msg_1_out=457
@if "%msg_1_in%"=="�g" set msg_1_out=458
@if "%msg_1_in%"=="�h" set msg_1_out=459
@if "%msg_1_in%"=="�i" set msg_1_out=460
@if "%msg_1_in%"=="�j" set msg_1_out=461
@if "%msg_1_in%"=="�k" set msg_1_out=462
@if "%msg_1_in%"=="�l" set msg_1_out=463
@if "%msg_1_in%"=="�m" set msg_1_out=464
@if "%msg_1_in%"=="�n" set msg_1_out=465
@if "%msg_1_in%"=="�o" set msg_1_out=466
@if "%msg_1_in%"=="�p" set msg_1_out=467
@if "%msg_1_in%"=="�q" set msg_1_out=468
@if "%msg_1_in%"=="�r" set msg_1_out=469
@if "%msg_1_in%"=="�s" set msg_1_out=470
@if "%msg_1_in%"=="�t" set msg_1_out=471
@if "%msg_1_in%"=="�u" set msg_1_out=472
@if "%msg_1_in%"=="�v" set msg_1_out=473
@if "%msg_1_in%"=="�w" set msg_1_out=474
@if "%msg_1_in%"=="�x" set msg_1_out=475
@if "%msg_1_in%"=="�y" set msg_1_out=476
@if "%msg_1_in%"=="�A" set msg_1_out=501
@if "%msg_1_in%"=="�C" set msg_1_out=502
@if "%msg_1_in%"=="�E" set msg_1_out=503
@if "%msg_1_in%"=="�G" set msg_1_out=504
@if "%msg_1_in%"=="�I" set msg_1_out=505
@if "%msg_1_in%"=="�J" set msg_1_out=506
@if "%msg_1_in%"=="�L" set msg_1_out=507
@if "%msg_1_in%"=="�N" set msg_1_out=508
@if "%msg_1_in%"=="�P" set msg_1_out=509
@if "%msg_1_in%"=="�R" set msg_1_out=510
@if "%msg_1_in%"=="�T" set msg_1_out=511
@if "%msg_1_in%"=="�V" set msg_1_out=512
@if "%msg_1_in%"=="�X" set msg_1_out=513
@if "%msg_1_in%"=="�Z" set msg_1_out=514
@if "%msg_1_in%"=="�\" set msg_1_out=515
@if "%msg_1_in%"=="�^" set msg_1_out=516
@if "%msg_1_in%"=="�`" set msg_1_out=517
@if "%msg_1_in%"=="�c" set msg_1_out=518
@if "%msg_1_in%"=="�e" set msg_1_out=519
@if "%msg_1_in%"=="�g" set msg_1_out=520
@if "%msg_1_in%"=="�i" set msg_1_out=521
@if "%msg_1_in%"=="�j" set msg_1_out=522
@if "%msg_1_in%"=="�k" set msg_1_out=523
@if "%msg_1_in%"=="�l" set msg_1_out=524
@if "%msg_1_in%"=="�m" set msg_1_out=525
@if "%msg_1_in%"=="�n" set msg_1_out=526
@if "%msg_1_in%"=="�q" set msg_1_out=527
@if "%msg_1_in%"=="�t" set msg_1_out=528
@if "%msg_1_in%"=="�w" set msg_1_out=529
@if "%msg_1_in%"=="�z" set msg_1_out=530
@if "%msg_1_in%"=="�}" set msg_1_out=531
@if "%msg_1_in%"=="�~" set msg_1_out=532
@if "%msg_1_in%"=="��" set msg_1_out=533
@if "%msg_1_in%"=="��" set msg_1_out=534
@if "%msg_1_in%"=="��" set msg_1_out=535
@if "%msg_1_in%"=="��" set msg_1_out=536
@if "%msg_1_in%"=="��" set msg_1_out=537
@if "%msg_1_in%"=="��" set msg_1_out=538
@if "%msg_1_in%"=="��" set msg_1_out=539
@if "%msg_1_in%"=="��" set msg_1_out=540
@if "%msg_1_in%"=="��" set msg_1_out=541
@if "%msg_1_in%"=="��" set msg_1_out=542
@if "%msg_1_in%"=="��" set msg_1_out=543
@if "%msg_1_in%"=="��" set msg_1_out=544
@if "%msg_1_in%"=="��" set msg_1_out=545
@if "%msg_1_in%"=="��" set msg_1_out=546
@if "%msg_1_in%"=="��" set msg_1_out=547
@if "%msg_1_in%"=="�K" set msg_1_out=548
@if "%msg_1_in%"=="�M" set msg_1_out=549
@if "%msg_1_in%"=="�O" set msg_1_out=550
@if "%msg_1_in%"=="�Q" set msg_1_out=551
@if "%msg_1_in%"=="�S" set msg_1_out=552
@if "%msg_1_in%"=="�U" set msg_1_out=553
@if "%msg_1_in%"=="�W" set msg_1_out=554
@if "%msg_1_in%"=="�Y" set msg_1_out=555
@if "%msg_1_in%"=="�[" set msg_1_out=556
@if "%msg_1_in%"=="�]" set msg_1_out=557
@if "%msg_1_in%"=="�_" set msg_1_out=558
@if "%msg_1_in%"=="�a" set msg_1_out=559
@if "%msg_1_in%"=="�d" set msg_1_out=560
@if "%msg_1_in%"=="�f" set msg_1_out=561
@if "%msg_1_in%"=="�h" set msg_1_out=562
@if "%msg_1_in%"=="�o" set msg_1_out=563
@if "%msg_1_in%"=="�r" set msg_1_out=564
@if "%msg_1_in%"=="�u" set msg_1_out=565
@if "%msg_1_in%"=="�x" set msg_1_out=566
@if "%msg_1_in%"=="�{" set msg_1_out=567
@if "%msg_1_in%"=="�p" set msg_1_out=568
@if "%msg_1_in%"=="�s" set msg_1_out=569
@if "%msg_1_in%"=="�v" set msg_1_out=570
@if "%msg_1_in%"=="�y" set msg_1_out=571
@if "%msg_1_in%"=="�|" set msg_1_out=572
@if "%msg_1_in%"=="�@" set msg_1_out=573
@if "%msg_1_in%"=="�B" set msg_1_out=574
@if "%msg_1_in%"=="�D" set msg_1_out=575
@if "%msg_1_in%"=="�F" set msg_1_out=576
@if "%msg_1_in%"=="�H" set msg_1_out=577
@if "%msg_1_in%"=="��" set msg_1_out=578
@if "%msg_1_in%"=="��" set msg_1_out=579
@if "%msg_1_in%"=="�b" set msg_1_out=580
@if "%msg_1_in%"=="��" set msg_1_out=581
@if "%msg_1_in%"=="��" set msg_1_out=582
@if "%msg_1_in%"=="��" set msg_1_out=583
@if "%msg_1_in%"=="��" set msg_1_out=584
@if "%msg_1_in%"=="��" set msg_1_out=601
@if "%msg_1_in%"=="��" set msg_1_out=602
@if "%msg_1_in%"=="��" set msg_1_out=603
@if "%msg_1_in%"=="��" set msg_1_out=604
@if "%msg_1_in%"=="��" set msg_1_out=605
@if "%msg_1_in%"=="��" set msg_1_out=606
@if "%msg_1_in%"=="��" set msg_1_out=607
@if "%msg_1_in%"=="��" set msg_1_out=608
@if "%msg_1_in%"=="��" set msg_1_out=609
@if "%msg_1_in%"=="��" set msg_1_out=610
@if "%msg_1_in%"=="��" set msg_1_out=611
@if "%msg_1_in%"=="��" set msg_1_out=612
@if "%msg_1_in%"=="��" set msg_1_out=613
@if "%msg_1_in%"=="��" set msg_1_out=614
@if "%msg_1_in%"=="��" set msg_1_out=615
@if "%msg_1_in%"=="��" set msg_1_out=616
@if "%msg_1_in%"=="��" set msg_1_out=617
@if "%msg_1_in%"=="��" set msg_1_out=618
@if "%msg_1_in%"=="��" set msg_1_out=619
@if "%msg_1_in%"=="��" set msg_1_out=620
@if "%msg_1_in%"=="��" set msg_1_out=621
@if "%msg_1_in%"=="��" set msg_1_out=622
@if "%msg_1_in%"=="��" set msg_1_out=623
@if "%msg_1_in%"=="��" set msg_1_out=624
@if "%msg_1_in%"=="��" set msg_1_out=625
@if "%msg_1_in%"=="��" set msg_1_out=626
@if "%msg_1_in%"=="��" set msg_1_out=627
@if "%msg_1_in%"=="��" set msg_1_out=628
@if "%msg_1_in%"=="��" set msg_1_out=629
@if "%msg_1_in%"=="��" set msg_1_out=630
@if "%msg_1_in%"=="��" set msg_1_out=631
@if "%msg_1_in%"=="��" set msg_1_out=632
@if "%msg_1_in%"=="��" set msg_1_out=633
@if "%msg_1_in%"=="��" set msg_1_out=634
@if "%msg_1_in%"=="��" set msg_1_out=635
@if "%msg_1_in%"=="��" set msg_1_out=636
@if "%msg_1_in%"=="��" set msg_1_out=637
@if "%msg_1_in%"=="��" set msg_1_out=638
@if "%msg_1_in%"=="��" set msg_1_out=639
@if "%msg_1_in%"=="��" set msg_1_out=640
@if "%msg_1_in%"=="��" set msg_1_out=641
@if "%msg_1_in%"=="��" set msg_1_out=642
@if "%msg_1_in%"=="��" set msg_1_out=643
@if "%msg_1_in%"=="��" set msg_1_out=644
@if "%msg_1_in%"=="��" set msg_1_out=645
@if "%msg_1_in%"=="��" set msg_1_out=646
@if "%msg_1_in%"=="��" set msg_1_out=647
@if "%msg_1_in%"=="��" set msg_1_out=548
@if "%msg_1_in%"=="��" set msg_1_out=649
@if "%msg_1_in%"=="��" set msg_1_out=650
@if "%msg_1_in%"=="��" set msg_1_out=651
@if "%msg_1_in%"=="��" set msg_1_out=652
@if "%msg_1_in%"=="��" set msg_1_out=653
@if "%msg_1_in%"=="��" set msg_1_out=654
@if "%msg_1_in%"=="��" set msg_1_out=655
@if "%msg_1_in%"=="��" set msg_1_out=656
@if "%msg_1_in%"=="��" set msg_1_out=657
@if "%msg_1_in%"=="��" set msg_1_out=658
@if "%msg_1_in%"=="��" set msg_1_out=659
@if "%msg_1_in%"=="��" set msg_1_out=660
@if "%msg_1_in%"=="��" set msg_1_out=661
@if "%msg_1_in%"=="��" set msg_1_out=662
@if "%msg_1_in%"=="��" set msg_1_out=663
@if "%msg_1_in%"=="��" set msg_1_out=664
@if "%msg_1_in%"=="��" set msg_1_out=665
@if "%msg_1_in%"=="��" set msg_1_out=666
@if "%msg_1_in%"=="��" set msg_1_out=667
@if "%msg_1_in%"=="��" set msg_1_out=668
@if "%msg_1_in%"=="��" set msg_1_out=669
@if "%msg_1_in%"=="��" set msg_1_out=670
@if "%msg_1_in%"=="��" set msg_1_out=671
@if "%msg_1_in%"=="��" set msg_1_out=672
@if "%msg_1_in%"=="��" set msg_1_out=673
@if "%msg_1_in%"=="��" set msg_1_out=674
@if "%msg_1_in%"=="��" set msg_1_out=675
@if "%msg_1_in%"=="��" set msg_1_out=676
@if "%msg_1_in%"=="��" set msg_1_out=677
@if "%msg_1_in%"=="��" set msg_1_out=678
@if "%msg_1_in%"=="��" set msg_1_out=679
@if "%msg_1_in%"=="��" set msg_1_out=680
@if "%msg_1_in%"=="��" set msg_1_out=681
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
@rem �Í����^�C�v,�O���v�m�F�p���ǂݍ���
@set /a msg_2_s_in_1=%msg_2_in_m:~2,1%-1
@set /a msg_2_s_in_2=%msg_2_in_m:~4,1%-1
@set msg_2_output_end_b=%msg_2_in_m:~8,1%
@call set msg_2_s_in_1=%%msg_2_in_m:~%msg_2_s_in_1%,1%%
@call set msg_2_s_in_2=%%msg_2_in_m:~%msg_2_s_in_2%,1%%
@
@
@rem �O���v�m�F�p���ǂݍ���
@set msg_2_output_end=%msg_2_in_m:~-10,5%
@set msg_2_output_end_start=%msg_2_in_m:~10,5%
@
@rem �Í����^�C�v��v�m�F
@set msg_2_s_in=%msg_2_s_in_1%%msg_2_s_in_2%
@if not %msg_2_s_in%==%msg_type% echo ��Ǖs�\&set msg_errorlevel=1&goto msg_end
@
@rem �O���v�m�F�p���v�Z,�m�F
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
@if not %msg_2_output_end%==%msg_2_output_end_k% echo ��Ǖs�\&set msg_errorlevel=1&goto msg_end
@
@rem �Í���������؂���
@set msg_2_in_m=%msg_2_in_m:~15,-10%
@
@
@rem ��Ǐ����J�n
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
@rem [�����s��]   113=`
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
@rem [������]   162=^
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
@if %msg_2_in%==201 set msg_2_out=^�I
@
@if %msg_2_in%==202 set msg_2_out=^�h
@
@if %msg_2_in%==203 set msg_2_out=^��
@
@if %msg_2_in%==204 set msg_2_out=^��
@
@if %msg_2_in%==205 set msg_2_out=^��
@
@if %msg_2_in%==206 set msg_2_out=^��
@
@if %msg_2_in%==207 set msg_2_out=^�f
@
@if %msg_2_in%==208 set msg_2_out=^�i
@
@if %msg_2_in%==209 set msg_2_out=^�j
@
@if %msg_2_in%==210 set msg_2_out=^��
@
@if %msg_2_in%==211 set msg_2_out=^�`
@
@if %msg_2_in%==212 set msg_2_out=^�b
@
@if %msg_2_in%==213 set msg_2_out=^�e
@
@if %msg_2_in%==214 set msg_2_out=^�o
@
@if %msg_2_in%==215 set msg_2_out=^�{
@
@if %msg_2_in%==216 set msg_2_out=^��
@
@if %msg_2_in%==217 set msg_2_out=^�p
@
@if %msg_2_in%==218 set msg_2_out=^��
@
@if %msg_2_in%==219 set msg_2_out=^��
@
@if %msg_2_in%==220 set msg_2_out=^�H
@
@if %msg_2_in%==221 set msg_2_out=^�Q
@
@if %msg_2_in%==251 set msg_2_out=^�P
@
@if %msg_2_in%==252 set msg_2_out=^�Q
@
@if %msg_2_in%==253 set msg_2_out=^�R
@
@if %msg_2_in%==254 set msg_2_out=^�S
@
@if %msg_2_in%==255 set msg_2_out=^�T
@
@if %msg_2_in%==256 set msg_2_out=^�U
@
@if %msg_2_in%==257 set msg_2_out=^�V
@
@if %msg_2_in%==258 set msg_2_out=^�W
@
@if %msg_2_in%==259 set msg_2_out=^�X
@
@if %msg_2_in%==260 set msg_2_out=^�O
@
@if %msg_2_in%==261 set msg_2_out=^�[
@
@if %msg_2_in%==262 set msg_2_out=^�O
@
@if %msg_2_in%==263 set msg_2_out=^��
@
@if %msg_2_in%==264 set msg_2_out=^��
@
@if %msg_2_in%==265 set msg_2_out=^�u
@
@if %msg_2_in%==266 set msg_2_out=^�G
@
@if %msg_2_in%==267 set msg_2_out=^�F
@
@if %msg_2_in%==268 set msg_2_out=^�v
@
@if %msg_2_in%==269 set msg_2_out=^�A
@
@if %msg_2_in%==270 set msg_2_out=^�B
@
@if %msg_2_in%==271 set msg_2_out=^�E
@
@if %msg_2_in%==272 set msg_1_out=^�@
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
@if %msg_2_in%==401 set msg_2_out=��
@
@if %msg_2_in%==402 set msg_2_out=��
@
@if %msg_2_in%==403 set msg_2_out=��
@
@if %msg_2_in%==404 set msg_2_out=��
@
@if %msg_2_in%==405 set msg_2_out=��
@
@if %msg_2_in%==406 set msg_2_out=��
@
@if %msg_2_in%==407 set msg_2_out=��
@
@if %msg_2_in%==408 set msg_2_out=��
@
@if %msg_2_in%==409 set msg_2_out=��
@
@if %msg_2_in%==410 set msg_2_out=��
@
@if %msg_2_in%==411 set msg_2_out=��
@
@if %msg_2_in%==412 set msg_2_out=��
@
@if %msg_2_in%==413 set msg_2_out=��
@
@if %msg_2_in%==414 set msg_2_out=��
@
@if %msg_2_in%==415 set msg_2_out=��
@
@if %msg_2_in%==416 set msg_2_out=��
@
@if %msg_2_in%==417 set msg_2_out=��
@
@if %msg_2_in%==418 set msg_2_out=��
@
@if %msg_2_in%==419 set msg_2_out=��
@
@if %msg_2_in%==420 set msg_2_out=��
@
@if %msg_2_in%==421 set msg_2_out=��
@
@if %msg_2_in%==422 set msg_2_out=��
@
@if %msg_2_in%==423 set msg_2_out=��
@
@if %msg_2_in%==424 set msg_2_out=��
@
@if %msg_2_in%==425 set msg_2_out=��
@
@if %msg_2_in%==426 set msg_2_out=��
@
@if %msg_2_in%==451 set msg_2_out=�`
@
@if %msg_2_in%==452 set msg_2_out=�a
@
@if %msg_2_in%==453 set msg_2_out=�b
@
@if %msg_2_in%==454 set msg_2_out=�c
@
@if %msg_2_in%==455 set msg_2_out=�d
@
@if %msg_2_in%==456 set msg_2_out=�e
@
@if %msg_2_in%==457 set msg_2_out=�f
@
@if %msg_2_in%==458 set msg_2_out=�g
@
@if %msg_2_in%==459 set msg_2_out=�h
@
@if %msg_2_in%==460 set msg_2_out=�i
@
@if %msg_2_in%==461 set msg_2_out=�j
@
@if %msg_2_in%==462 set msg_2_out=�k
@
@if %msg_2_in%==463 set msg_2_out=�l
@
@if %msg_2_in%==464 set msg_2_out=�m
@
@if %msg_2_in%==465 set msg_2_out=�n
@
@if %msg_2_in%==466 set msg_2_out=�o
@
@if %msg_2_in%==467 set msg_2_out=�p
@
@if %msg_2_in%==468 set msg_2_out=�q
@
@if %msg_2_in%==469 set msg_2_out=�r
@
@if %msg_2_in%==470 set msg_2_out=�s
@
@if %msg_2_in%==471 set msg_2_out=�t
@
@if %msg_2_in%==472 set msg_2_out=�u
@
@if %msg_2_in%==473 set msg_2_out=�v
@
@if %msg_2_in%==474 set msg_2_out=�w
@
@if %msg_2_in%==475 set msg_2_out=�x
@
@if %msg_2_in%==476 set msg_2_out=�y
@
@if %msg_2_in%==501 set msg_2_out=�A
@
@if %msg_2_in%==502 set msg_2_out=�C
@
@if %msg_2_in%==503 set msg_2_out=�E
@
@if %msg_2_in%==504 set msg_2_out=�G
@
@if %msg_2_in%==505 set msg_2_out=�I
@
@if %msg_2_in%==506 set msg_2_out=�J
@
@if %msg_2_in%==507 set msg_2_out=�L
@
@if %msg_2_in%==508 set msg_2_out=�N
@
@if %msg_2_in%==509 set msg_2_out=�P
@
@if %msg_2_in%==510 set msg_2_out=�R
@
@if %msg_2_in%==511 set msg_2_out=�T
@
@if %msg_2_in%==512 set msg_2_out=�V
@
@if %msg_2_in%==513 set msg_2_out=�X
@
@if %msg_2_in%==514 set msg_2_out=�Z
@
@if %msg_2_in%==515 set msg_2_out=�\
@
@if %msg_2_in%==516 set msg_2_out=�^
@
@if %msg_2_in%==517 set msg_2_out=�`
@
@if %msg_2_in%==518 set msg_2_out=�c
@
@if %msg_2_in%==519 set msg_2_out=�e
@
@if %msg_2_in%==520 set msg_2_out=�g
@
@if %msg_2_in%==521 set msg_2_out=�i
@
@if %msg_2_in%==522 set msg_2_out=�j
@
@if %msg_2_in%==523 set msg_2_out=�k
@
@if %msg_2_in%==524 set msg_2_out=�l
@
@if %msg_2_in%==525 set msg_2_out=�m
@
@if %msg_2_in%==526 set msg_2_out=�n
@
@if %msg_2_in%==527 set msg_2_out=�q
@
@if %msg_2_in%==528 set msg_2_out=�t
@
@if %msg_2_in%==529 set msg_2_out=�w
@
@if %msg_2_in%==530 set msg_2_out=�z
@
@if %msg_2_in%==531 set msg_2_out=�}
@
@if %msg_2_in%==532 set msg_2_out=�~
@
@if %msg_2_in%==533 set msg_2_out=��
@
@if %msg_2_in%==534 set msg_2_out=��
@
@if %msg_2_in%==535 set msg_2_out=��
@
@if %msg_2_in%==536 set msg_2_out=��
@
@if %msg_2_in%==537 set msg_2_out=��
@
@if %msg_2_in%==538 set msg_2_out=��
@
@if %msg_2_in%==539 set msg_2_out=��
@
@if %msg_2_in%==540 set msg_2_out=��
@
@if %msg_2_in%==541 set msg_2_out=��
@
@if %msg_2_in%==542 set msg_2_out=��
@
@if %msg_2_in%==543 set msg_2_out=��
@
@if %msg_2_in%==544 set msg_2_out=��
@
@if %msg_2_in%==545 set msg_2_out=��
@
@if %msg_2_in%==546 set msg_2_out=��
@
@if %msg_2_in%==547 set msg_2_out=��
@
@if %msg_2_in%==548 set msg_2_out=�K
@
@if %msg_2_in%==549 set msg_2_out=�M
@
@if %msg_2_in%==550 set msg_2_out=�O
@
@if %msg_2_in%==551 set msg_2_out=�Q
@
@if %msg_2_in%==552 set msg_2_out=�S
@
@if %msg_2_in%==553 set msg_2_out=�U
@
@if %msg_2_in%==554 set msg_2_out=�W
@
@if %msg_2_in%==555 set msg_2_out=�Y
@
@if %msg_2_in%==556 set msg_2_out=�[
@
@if %msg_2_in%==557 set msg_2_out=�]
@
@if %msg_2_in%==558 set msg_2_out=�_
@
@if %msg_2_in%==559 set msg_2_out=�a
@
@if %msg_2_in%==560 set msg_2_out=�d
@
@if %msg_2_in%==561 set msg_2_out=�f
@
@if %msg_2_in%==562 set msg_2_out=�h
@
@if %msg_2_in%==563 set msg_2_out=�o
@
@if %msg_2_in%==564 set msg_2_out=�r
@
@if %msg_2_in%==565 set msg_2_out=�u
@
@if %msg_2_in%==566 set msg_2_out=�x
@
@if %msg_2_in%==567 set msg_2_out=�{
@
@if %msg_2_in%==568 set msg_2_out=�p
@
@if %msg_2_in%==569 set msg_2_out=�s
@
@if %msg_2_in%==570 set msg_2_out=�v
@
@if %msg_2_in%==571 set msg_2_out=�y
@
@if %msg_2_in%==572 set msg_2_out=�|
@
@if %msg_2_in%==573 set msg_2_out=�@
@
@if %msg_2_in%==574 set msg_2_out=�B
@
@if %msg_2_in%==575 set msg_2_out=�D
@
@if %msg_2_in%==576 set msg_2_out=�F
@
@if %msg_2_in%==577 set msg_2_out=�H
@
@if %msg_2_in%==578 set msg_2_out=��
@
@if %msg_2_in%==579 set msg_2_out=��
@
@if %msg_2_in%==580 set msg_2_out=�b
@
@if %msg_2_in%==581 set msg_2_out=��
@
@if %msg_2_in%==582 set msg_2_out=��
@
@if %msg_2_in%==583 set msg_2_out=��
@
@if %msg_2_in%==584 set msg_2_out=��
@
@if %msg_2_in%==601 set msg_2_out=��
@
@if %msg_2_in%==602 set msg_2_out=��
@
@if %msg_2_in%==603 set msg_2_out=��
@
@if %msg_2_in%==604 set msg_2_out=��
@
@if %msg_2_in%==605 set msg_2_out=��
@
@if %msg_2_in%==606 set msg_2_out=��
@
@if %msg_2_in%==607 set msg_2_out=��
@
@if %msg_2_in%==608 set msg_2_out=��
@
@if %msg_2_in%==609 set msg_2_out=��
@
@if %msg_2_in%==610 set msg_2_out=��
@
@if %msg_2_in%==611 set msg_2_out=��
@
@if %msg_2_in%==612 set msg_2_out=��
@
@if %msg_2_in%==613 set msg_2_out=��
@
@if %msg_2_in%==614 set msg_2_out=��
@
@if %msg_2_in%==615 set msg_2_out=��
@
@if %msg_2_in%==616 set msg_2_out=��
@
@if %msg_2_in%==617 set msg_2_out=��
@
@if %msg_2_in%==618 set msg_2_out=��
@
@if %msg_2_in%==619 set msg_2_out=��
@
@if %msg_2_in%==620 set msg_2_out=��
@
@if %msg_2_in%==621 set msg_2_out=��
@
@if %msg_2_in%==622 set msg_2_out=��
@
@if %msg_2_in%==623 set msg_2_out=��
@
@if %msg_2_in%==624 set msg_2_out=��
@
@if %msg_2_in%==625 set msg_2_out=��
@
@if %msg_2_in%==626 set msg_2_out=��
@
@if %msg_2_in%==627 set msg_2_out=��
@
@if %msg_2_in%==628 set msg_2_out=��
@
@if %msg_2_in%==629 set msg_2_out=��
@
@if %msg_2_in%==630 set msg_2_out=��
@
@if %msg_2_in%==631 set msg_2_out=��
@
@if %msg_2_in%==632 set msg_2_out=��
@
@if %msg_2_in%==633 set msg_2_out=��
@
@if %msg_2_in%==634 set msg_2_out=��
@
@if %msg_2_in%==635 set msg_2_out=��
@
@if %msg_2_in%==636 set msg_2_out=��
@
@if %msg_2_in%==637 set msg_2_out=��
@
@if %msg_2_in%==638 set msg_2_out=��
@
@if %msg_2_in%==639 set msg_2_out=��
@
@if %msg_2_in%==640 set msg_2_out=��
@
@if %msg_2_in%==641 set msg_2_out=��
@
@if %msg_2_in%==642 set msg_2_out=��
@
@if %msg_2_in%==643 set msg_2_out=��
@
@if %msg_2_in%==644 set msg_2_out=��
@
@if %msg_2_in%==645 set msg_2_out=��
@
@if %msg_2_in%==646 set msg_2_out=��
@
@if %msg_2_in%==647 set msg_2_out=��
@
@if %msg_2_in%==648 set msg_2_out=��
@
@if %msg_2_in%==649 set msg_2_out=��
@
@if %msg_2_in%==650 set msg_2_out=��
@
@if %msg_2_in%==651 set msg_2_out=��
@
@if %msg_2_in%==652 set msg_2_out=��
@
@if %msg_2_in%==653 set msg_2_out=��
@
@if %msg_2_in%==654 set msg_2_out=��
@
@if %msg_2_in%==655 set msg_2_out=��
@
@if %msg_2_in%==656 set msg_2_out=��
@
@if %msg_2_in%==657 set msg_2_out=��
@
@if %msg_2_in%==658 set msg_2_out=��
@
@if %msg_2_in%==659 set msg_2_out=��
@
@if %msg_2_in%==660 set msg_2_out=��
@
@if %msg_2_in%==661 set msg_2_out=��
@
@if %msg_2_in%==662 set msg_2_out=��
@
@if %msg_2_in%==663 set msg_2_out=��
@
@if %msg_2_in%==664 set msg_2_out=��
@
@if %msg_2_in%==665 set msg_2_out=��
@
@if %msg_2_in%==666 set msg_2_out=��
@
@if %msg_2_in%==667 set msg_2_out=��
@
@if %msg_2_in%==668 set msg_2_out=��
@
@if %msg_2_in%==669 set msg_2_out=��
@
@if %msg_2_in%==670 set msg_2_out=��
@
@if %msg_2_in%==671 set msg_2_out=��
@
@if %msg_2_in%==672 set msg_2_out=��
@
@if %msg_2_in%==673 set msg_2_out=��
@
@if %msg_2_in%==674 set msg_2_out=��
@
@if %msg_2_in%==675 set msg_2_out=��
@
@if %msg_2_in%==676 set msg_2_out=��
@
@if %msg_2_in%==677 set msg_2_out=��
@
@if %msg_2_in%==678 set msg_2_out=��
@
@if %msg_2_in%==679 set msg_2_out=��
@
@if %msg_2_in%==680 set msg_2_out=��
@
@if %msg_2_in%==681 set msg_2_out=��
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
@if %msg_errorlevel%==1 echo ��Ǖs�\
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

title %yy981_title%^|�R�}���h�f�X�N�g�b�v�ݒ�^|[%s_yy981path%]

goto @1d_%s_cmd%_%s_alf%
echo �G���[�C������
set s_cmd=1
if %s_home_sr%==5 (
echo yy981_setting-systems���ڂ̕W���G���[�C���V�X�e����5����s���܂������A�G���[���C���ł��܂���ł��� �ǂ����܂���?
rem _
choice /n /m "1.�f�o�b�N�� 2.yy981�̍ċN�� 3.�z�[���y�[�W���J���ă_�E�����[�h���Ȃ���"
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
echo �G���[
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
set /p psn=�p�X���[�h����͂��Ă�������(�����ݒ肵�Ă��Ȃ��ꍇ�� 00000 �ł�)
if "%psn%"=="error" set pson=2

if %ps%==%psn% (
set psn=""
echo ���b�N���������܂���
set ps=nul
set pson=1
goto %return_point_p%_ps
)

echo �p�X���[�h�������́A�v���t�@�C�����Ԉ���Ă��܂�

set ps=nul
choice /m �ē���?
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

rem ���J�n�����ʏ������e(set)
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
@if not "yy981"=="%self-security%" start /min msg %username% /w ���̃t�@�C���͉����񂳂ꂽ�\�������ɍ������ߍ폜���܂���^

�����̔z�z��(https://cxyzt26408.wixsite.com/yy981)����_�E�����[�h���Ă������� by %self-security% &timeout /t 1 /nobreak >nul&del %0

rem ����
set cmd=0
goto sjb

:sii
rem yy981���Z�b�g
if %m_ver_h%==0 rmdir %systemdrive%yy981 /s /q
if %m_ver_h%==0 mkdir %systemdrive%yy981

rem ver���Ƃ̃t�H���_
cd %systemdrive%\

rem �e��f�[�^
cd %yy981_d%\
mkdir temp profile soft

rem _�f�[�^�쐬
cd %yy981_d%\profile\
mkdir _

rem �v���t�@�C��
cd %yy981_d%\profile\_\
mkdir setting\cmddsk cmddsk


rem �v���t�@�C������
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

rem �������L�^
echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >%yy981_d%\soft\yy981_������.yy981

rem lock��������������
cd %yy981_d%\
echo 0 >%yy981_d%\profile\z\setting\lock.yy981


if %initial%==0 (
cd %yy981_kd%\
set /p yy981_d_back=<%yy981_kd%\yy981_system-path.yy981
echo d | xcopy /e /y %yy981_d_back%\profile %yy981_d%\profile >nul
)

goto sjb

:sjb

rem �ŏI��������+���J�n�����ʏ������e(file)
cd %systemdrive%\

if not exist %yy981_d%\profile\%pf%\cmddsk\_.yy981 (
rem c8_�^�C�g��
type nul >%yy981_d%\profile\%pf%\cmddsk\_.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_a.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_b.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_c.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_d.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_e.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_f.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_g.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_h.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_i.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_j.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_k.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_l.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_m.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_n.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_o.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_p.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_q.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_r.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_s.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_t.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_u.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_v.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_w.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_x.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_y.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\8_t_z.yy981
rem =============================================
rem c8_���e
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_a.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_b.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_c.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_d.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_e.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_f.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_g.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_h.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_i.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_j.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_k.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_l.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_m.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_n.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_o.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_p.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_q.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_r.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_s.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_t.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_u.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_v.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_w.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_x.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_y.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\8_n_z.yy981
rem =============================================
rem =============================================
rem =============================================
rem c9_�^�C�g��
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_a.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_b.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_c.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_d.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_e.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_f.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_g.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_h.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_i.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_j.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_k.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_l.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_m.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_n.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_o.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_p.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_q.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_r.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_s.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_t.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_u.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_v.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_w.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_x.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_y.yy981
echo ���[�U�[���ݒ�>%yy981_d%\profile\%pf%\cmddsk\9_t_z.yy981
rem =============================================
rem c9_���e
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_a.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_b.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_c.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_d.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_e.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_f.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_g.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_h.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_i.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_j.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_k.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_l.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_m.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_n.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_o.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_p.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_q.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_r.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_s.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_t.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_u.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_v.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_w.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_x.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_y.yy981
echo echo ���[�U�[���ݒ�ł��܂�>%yy981_d%\profile\%pf%\cmddsk\9_n_z.yy981
)

if not exist %yy981_d%\soft\log.yy981 echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >%yy981_d%\soft\log.yy981
echo %date:~0,4%/%date:~5,2%/%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%.%time:~9,2% >>%yy981_d%\soft\log.yy981

if %initial%==0 if "%shortcutfile%"=="1 " (
echo @echo off >%yy981_temp%\yy981-program_starter.bat
echo title yy981_starter >>%yy981_temp%\yy981-program_starter.bat
echo :yy981-program_starter_loopstart >>%yy981_temp%\yy981-program_starter.bat
echo call "%yy981_d%\yy981ver%yy981ver%.exe" >>%yy981_temp%\yy981-program_starter.bat
echo if exist %yy981_temp%\exit del %yy981_temp%\exit^&exit >>%yy981_temp%\yy981-program_starter.bat
echo msg %username% /w yy981_program���G���[�ɂ���ďI�������̂ōċN�����܂� >>%yy981_temp%\yy981-program_starter.bat
echo goto yy981-program_starter_loopstart >>%yy981_temp%\yy981-program_starter.bat
)
if %initial%==1 (
echo @echo off >"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo title yy981_starter >>"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo :yy981-program_starter_loopstart >"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo call "%yy981_d%\yy981ver%yy981ver%.exe" >>"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo if exist %yy981_temp%\exit del %yy981_temp%\exit^&exit >>"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo msg %username% /w yy981_program���G���[�ɂ���ďI�������̂ōċN�����܂� >>"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
echo goto yy981-program_starter_loopstart >>"%systemdrive%\users\%username%\desktop\yy981-program_�V���[�g�J�b�g.bat"
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

echo �G���[�C������
if %cmd_u_b%==1 set cmd=0
if %cmd_u_b%==0 set cmd=1
if %home_sr%==5 (
echo yy981_systems���ڂ̕W���G���[�C���V�X�e����5����s���܂������A�G���[���C���ł��܂���ł��� �ǂ����܂���?
rem _
choice /n /m "1.�f�o�b�N�� 2.yy981�̍ċN�� 3.�z�[���y�[�W���J���ă_�E�����[�h���Ȃ���"
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

choice /m �v���t�@�C����ύX���܂����H
if %errorlevel%==2 (
set cmd=0
if %cmd_u_b%==0 set cmd=1
goto home
)

set file_y_b=1
set return_point=pfs
goto file_y
:pfs_fs

title %yy981_title%^|�v���t�@�C���I��
echo �v���t�@�C����I��

echo �v���t�@�C��1:%pfname1%
echo �v���t�@�C��2:%pfname2%
echo �v���t�@�C��3:%pfname3%
echo �v���t�@�C��4:%pfname4%
echo �v���t�@�C��5:%pfname5%
echo �v���t�@�C��6:%pfname6%
echo �v���t�@�C��7:%pfname7%
echo �v���t�@�C��8:%pfname8%
echo �v���t�@�C��9:%pfname9%

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

echo �v���t�@�C��%pf%�ɕύX���čċN��
rem set cmd=0
rem if %cmd_u_b%==0 set cmd=1
echo %pf% >%yy981_d%\profile\z\setting\pf.yy981
goto start

<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk1
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v1(pc�V�X�e�� and yy981-program�V�X�e��)

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. pc�n
echo b. yy981-program�n
echo c. �ݒ�
echo d. �R�}���h�f�X�N�g�b�v�ݒ�
echo e. ���
echo f. ����
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk2
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v2(�A�v��)

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. explorer
echo b. browser
echo c. microsoft
echo d. ���ݒ�
echo e. ���ݒ�
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk3
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v3(�c�[��-1[bat])

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. ���v�n
echo b. ��������
echo c. ���k^&��
echo d. explorer
echo e. �t�@�C�����e�ɂ��t�@�C������
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk4
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v4(�c�[��-2[bat])

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. ���ݒ�
echo b. ���ݒ�
echo c. ���ݒ�
echo d. ���ݒ�
echo e. ���ݒ�
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk5
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v5(�Q�[��-1[bat])

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. ��T���Q�[���I�Ȃ���
echo b. ���ݒ�
echo c. ���ݒ�
echo d. ���ݒ�
echo e. ���ݒ�
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk6
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v6(�Q�[��-2[bat])

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. ���ݒ�
echo b. ���ݒ�
echo c. ���ݒ�
echo d. ���ݒ�
echo e. ���ݒ�
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk7
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v7(�]��)

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

echo a. ���ݒ�
echo b. ���ݒ�
echo c. ���ݒ�
echo d. ���ݒ�
echo e. ���ݒ�
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk8
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v8(���[�U�[�w��-1)

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

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

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
:cmddsk9
;
title %yy981_title%{%yy981_title-p%}^|�f�X�N�g�b�v9(���[�U�[�w��-2)

if %cmd_u_b%==0 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�Ńv���t�@�C���؂�ւ���
if %cmd_u_b%==1 echo 1�`9�L�[��cmd�f�X�N�g�b�v�؂�ւ� 0�ŐV�����

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

choice /c 1234567890abcdefghijklmnopqrstuvwxyz /n /m 0�`Z
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

echo �G���[���������܂���
goto home
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
_____________________________________________________________________
:@1a 
title %sn%(pc�n)


echo a. pc���ċN��
echo b. pc���V���b�g�_�E��
echo c. pc���X���[�v
echo d. pc���x�~
echo e. �A�J�E���g����T�C���A�E�g
echo f. ���ݒ�
echo g. ���ݒ�
echo h. ���ݒ�
echo i. ���ݒ�
echo j. ���ݒ�
echo k. ���ݒ�
echo l. ���ݒ�
echo m. ���ݒ�
echo n. ���ݒ�
echo o. ���ݒ�
echo p. ���ݒ�
echo q. ���ݒ�
echo r. ���ݒ�
echo s. ���ݒ�
echo t. ���ݒ�
echo u. ���ݒ�
echo v. ���ݒ�
echo w. ���ݒ�
echo x. ���ݒ�
echo y. ���ݒ�
echo z. ���ݒ�

choice /c 0abcdefghijklmnopqrstuvwxyz /n /m "A�`Z or 0"
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

echo �G���[���������܂���
goto home


---------------------------------------------------------------------
:@1a_a
title %sn%(pc���ċN��)
echo pc���ċN�����܂����H


choice
if %errorlevel%==1 shutdown /r /t 0


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_b
title %sn%(pc���V���b�g�_�E��)
echo pc���V���b�g�_�E�����܂����H


choice
if %errorlevel%==1 shutdown /s /t 0


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_c
title %sn%(pc���X���[�v)
echo pc���X���[�v���܂����H


choice
if %errorlevel%==1 rundll32 powrprof.dll,SetSuspendState 0,1,0


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_d
title %sn%(pc���x�~)
echo pc���x�~���܂����H


choice
if %errorlevel%==1 shutdown /h


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_e
title %sn%(�A�J�E���g����T�C���A�E�g)
echo �A�J�E���g����T�C���A�E�g���܂����H


choice
if %errorlevel%==1 shutdown /l


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_f
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_g
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_h
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_i
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_j
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_k
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_l
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_m
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_n
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_o
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_p
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_q
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_r
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_s
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_t
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_u
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_v
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_w
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_x
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_y
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1a_z
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1b 
title %sn%(yy981�n)


echo a. �I��

echo b. �ċN��

echo c. �ݒ���G�N�X�|�[�g

echo d. �ݒ���C���|�[�g

echo e. �v���t�@�C���̃��Z�b�g


choice /c 0abcde /n /m "A�`D or 0"
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


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_a
title %sn%(�I��)


choice /m yy981���I�����܂���?
if %errorlevel%==2 (
echo �L�����Z�����܂���
echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

)
type nul >%yy981_temp%\exit
exit


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_b
title %sn%(�ċN��)


choice /m yy981���ċN�����܂���?
if %errorlevel%==2 (
echo �L�����Z�����܂���
echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

)
echo @timeout /t 3 /nobreak ^>nul ^& call %yy981_temp%\yy981-program_starter.bat >%temp%\_.bat
start %temp%\_.bat
type nul >%yy981_temp%\exit
exit


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_c
title %sn%(�ݒ���G�N�X�|�[�g)


cd %yy981_temp%\
rem echo d|xcopy /e /y %yy981_d%\profile\%pf% %yy981_temp%\cab >nul
rem echo d|xcopy /e /y %yy981_d%\profile\z %yy981_temp%\cab >nul

cd %yy981_d%\profile\

echo 1. �v���t�@�C��1
echo 2. �v���t�@�C��2
echo 3. �v���t�@�C��3
echo 4. �v���t�@�C��4
echo 5. �v���t�@�C��5
echo 6. �v���t�@�C��6
echo 7. �v���t�@�C��7
echo 8. �v���t�@�C��8
echo 9. �v���t�@�C��9
echo a. �S��
echo b. ���ݎg�p���̃v���t�@�C��

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

echo ���[�U�[�f�B���N�g����[%user_d%\yy981_setting.y9]�Ƃ������O�ŏo�͂��܂���
cd %systemdrive%\


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_d
title %sn%(�ݒ���C���|�[�g)


set return_point=@1b_d
goto ex
:@1b_d_es
echo ���̃t�@�C���͂ǂ̃f�[�^�ł���?
echo 1. �v���t�@�C��1
echo 2. �v���t�@�C��2
echo 3. �v���t�@�C��3
echo 4. �v���t�@�C��4
echo 5. �v���t�@�C��5
echo 6. �v���t�@�C��6
echo 7. �v���t�@�C��7
echo 8. �v���t�@�C��8
echo 9. �v���t�@�C��9
echo a. �S��
echo b. ���ݎg�p���̃v���t�@�C��

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


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_e
title %sn%(�v���t�@�C���̃��Z�b�g)


choice /m �{���Ƀ��Z�b�g���܂���?
if %errorlevel%==2 echo �L�����Z�����܂���&goto home

set return_point=@1b_e
goto pass
:@1b_e_ps
if %pson%==error echo error&goto @1c_2
if %pson%==1 goto @1b_e_go
if %pson%==0 echo �p�X���[�h���͂Ɏ��s�����̂Ńz�[���ɖ߂�܂�&goto home

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

echo ���[�U�[�f�B���N�g����[%user_d%\yy981_setting.y9]�Ƃ������O�Ńo�b�N�A�b�v�p�̃f�[�^���o�͂��܂���
cd %systemdrive%\
rmdir %yy981_d%\profile\%pf%

cd %yy981_d%\profile\
echo d|xcopy /e _ %pf% >nul
cd %systemdrive%\
echo �v���t�@�C��%pf%�����Z�b�g���܂���


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_f
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_g
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_h
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_i
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_j
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_k
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_l
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_m
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_n
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_o
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_p
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_q
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_r
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_s
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_t
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_u
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_v
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_w
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_x
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_y
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1b_z
title %sn%()





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1c 
title %yy981_title%^|�ݒ�


set return_point=@1c
set file_y_b=1
goto file_y
:@1c_fs

echo.
echo.

echo 0. �z�[���ɖ߂�
echo 1. [@]�\���F
echo 2. [#]�p�X���[�h
set na_in=%cmd_u_b%
%yy981_na%
echo 3. %na_out%�V����
set na_in=%shortcutfile%
%yy981_na%
echo 4. %na_out%���[�U�[�f�B���N�g��
echo 5. [@]�v���t�@�C�����ύX

set settingpath=#
set /p settingpath=���͗�:

echo.
echo.
if %settingpath%==# echo ��L�̐�������͂��Ă�������&goto @1c
if %settingpath%==0 goto home
if %settingpath%==1 goto @1c_%settingpath%
if %settingpath%==2 goto @1c_%settingpath%
if %settingpath%==3 goto @1c_%settingpath%
if %settingpath%==4 goto @1c_%settingpath%
if %settingpath%==5 goto @1c_%settingpath%

echo ��L�̐�������͂��Ă�������
goto @1c
---------------------------------------------------------------------
:@1c_1
title %sn%(�\���F)


echo 0�F��

echo 1�F��

echo 2�F��

echo 3�F���F

echo 4�F��

echo 5�F��

echo 6�F���F

echo 7�F��

echo 8�F�D�F

echo 9�F���邢��

echo A�F���邢��

echo B�F���邢���F

echo C�F���邢��

echo D�F���邢��

echo E�F���邢���F

echo F�F�P����

echo.

echo       ^| �����ݒ�   ���ݐݒ�

echo �w�i�F^| 0           %color:~0,1%

echo �����F^| 3           %color:~1,1%

echo.

set @1c_b_a_h=%color:~1,1%
echo �w�i�F��I��

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
echo �����F��I��

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


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_2
title %sn%(�p�X���[�h)


choice /m �ύX���܂���?
if %errorlevel%==2 (
echo �L�����Z�����܂���
goto home
)

set return_point=@1c_2_1
goto pass
:@1c_2_1_ps
if %pson%==error echo error&goto @1c_2
if %pson%==1 goto @1c_2_set
if %pson%==0 echo �p�X���[�h���͂Ɏ��s�����̂Ńz�[���ɖ߂�܂�&goto home

:@1c_2_return


:@1c_2_set
set @1c_2_in=00000
set @1c_2_in2=00000
set /p @1c_2_in=�V�����p�X���[�h����͂��Ă�������������L��������(�󔒂̏ꍇ��00000):
set /p @1c_2_in2=[�m�F�p]�V�����p�X���[�h����͂��Ă�������������L��������(�󔒂̏ꍇ��00000):

if not "%@1c_2_in%"=="%@1c_2_in2%" (
echo.
echo �V�����p�X���[�h��2�̓��͂��Ⴂ�܂�
goto @1c_2_set
)

@set msg_in=%@1c_2_in%
set return_point=@1c_2_2
set msg_mode=1
goto msg
:@1c_2_2_ms
@set ps=%msg_out%

@echo %ps%>%yy981_d%\profile\%pf%\setting\pass.yy981

echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_3


choice /m �V����
if %errorlevel%==1 echo 1 >%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981
if %errorlevel%==2 echo 0 >%yy981_d%\profile\%pf%\setting\cmd_u_b.yy981


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto @1c
---------------------------------------------------------------------
:@1c_4


choice ���[�U�[�f�B���N�g��(�p�X�ɋ󔒂��܂߂Ȃ��ł�������)��ύX?
if %errorlevel%==2 goto @1c

set return_point=@1c_4
goto ex
:@1c_4_es
echo %ex_output%>%yy981_d%\profile\%pf%\setting\user_d.yy981

echo �����L�[�������ƃz�[���ɖ߂�܂�
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

choice /c 123456789 /m ���O��ύX����v���t�@�C����I��
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
set /p pfsname_s_m=���O�����:

if %pfsname_s_m%==# echo ��������͂��Ă�������&goto :@1c_5
echo %pfsname_s_m% >%yy981_d%\profile\%pfsname_s%\setting\name.yy981


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto @1c
_____________________________________________________________________
:@1d 
title %sn%(�R�}���h�f�X�N�g�b�v�ݒ�)


echo.
echo.

echo 1. �R�}���h�f�X�N�g�b�v1
echo 2. �R�}���h�f�X�N�g�b�v2
echo 3. �R�}���h�f�X�N�g�b�v3
echo 4. �R�}���h�f�X�N�g�b�v4
echo 5. �R�}���h�f�X�N�g�b�v5
echo 6. �R�}���h�f�X�N�g�b�v6
echo 7. �R�}���h�f�X�N�g�b�v7
echo 8. �R�}���h�f�X�N�g�b�v8
echo 9. �R�}���h�f�X�N�g�b�v9

choice /c 0123456789 /n /m "1�`9 or 0"
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
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v1


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_1_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_2
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v2


echo.echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_2_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_3
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v3


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_3_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_4
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v4


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_4_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_5
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v5


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_5_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_6
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v6


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_6_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_7
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v1


echo.
echo.
echo a. �ݒ荀�ڂȂ�
echo b. �ݒ荀�ڂȂ�
echo c. �ݒ荀�ڂȂ�
echo d. �ݒ荀�ڂȂ�
echo e. �ݒ荀�ڂȂ�
echo f. �ݒ荀�ڂȂ�
echo g. �ݒ荀�ڂȂ�
echo h. �ݒ荀�ڂȂ�
echo i. �ݒ荀�ڂȂ�
echo j. �ݒ荀�ڂȂ�
echo k. �ݒ荀�ڂȂ�
echo l. �ݒ荀�ڂȂ�
echo m. �ݒ荀�ڂȂ�
echo n. �ݒ荀�ڂȂ�
echo o. �ݒ荀�ڂȂ�
echo p. �ݒ荀�ڂȂ�
echo q. �ݒ荀�ڂȂ�
echo r. �ݒ荀�ڂȂ�
echo s. �ݒ荀�ڂȂ�
echo t. �ݒ荀�ڂȂ�
echo u. �ݒ荀�ڂȂ�
echo v. �ݒ荀�ڂȂ�
echo w. �ݒ荀�ڂȂ�
echo x. �ݒ荀�ڂȂ�
echo y. �ݒ荀�ڂȂ�
echo z. �ݒ荀�ڂȂ�

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_b





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_c





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_d





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_e





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_f





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_g





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_h





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_i





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_j





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_k





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_l





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_m





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_n





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_o





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_p





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_q





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_r





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_s





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_t





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_u





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_v





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_w





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_x





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_y





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
:@1d_7_z





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

---------------------------------------------------------------------
:@1d_8
title %yy981_title%^|�ݒ�^|�f�X�N�g�b�v1


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

choice /c 0123456789abcdefghijklmnopqrstuvwxyz /n /m 1�`Z
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


choice /c 12 /m "1.�^�C�g�� 2.���e"
if %errorlevel%==1 (
set cmddsk_setting_type=t
set /p cmddsk_setting_m=<%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set /p cmddsk_setting_m=�v���O�����ɉe�����y�ڂ��L���ȊO�̕���������:
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=@%s_cmd%&goto s_home
)
if %errorlevel%==2 set cmddsk_setting_type=n

choice /c 12 /m "1.���R���� 2.�t�@�C����I��"
if %errorlevel%==1 (
set /p cmddsk_setting_m=<%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set /p cmddsk_setting_m=����L�������񂾃R�[�h�����:
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=@1 &goto @1d_%s_cmd%
)
goto ex
:@1d_8_a_fs
set cmddsk_setting_m=call %ex_output%
echo %cmddsk_setting_m% >%yy981_d%\profile\%pf%\cmddsk\%s_cmd%_%cmddsk_setting_type%_%s_alf%
set s_yy981path=1 goto @1d_%s_cmd%


echo �����L�[�������ƃz�[���ɖ߂�܂�
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


echo {�o�͂Ɋ܂߂�[y,n]}{���ږ�}

set @1e_system_n=0
set @1e_

:@1e_loop
echo ok. �I�����I��

echo [Microsoft Windows]
echo w1. [%@1e_w1%]�o�[�W����
echo w2. [%@1e_w2%]�f�B�X�N�󂫗e��
echo w3. [%@1e_w3%]�V�X�e���\�����
echo w4. [%@1e_w4%]�l�b�g���[�N�̐ݒ�
echo w5. [%@1e_w5%]���O�C�������[�U�̃��O�C�����
echo w6. [%@1e_w6%]�f�o�C�X�h���C�o
echo w7. [%@1e_w7%]���ϐ�

echo [yy981 Program]
echo y1. [%@1e_y1%]�o�[�W����
echo y2. [%@1e_y2%]�f�B���N�g��
echo y3. [%@1e_y3%]�v���O�����t�@�C��
echo y4. [%@1e_y4%]�\��

set @1e_in=#
set /p @1e_in=���͗�:
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
echo �}�V����                               %computername% >>%yy981_temp%\information.yy981
echo ���O�C�����[�U�̃z�[���h���C�u         %homedrive% >>%yy981_temp%\information.yy981
echo ���O�C�����[�U�̃z�[���f�B���N�g��     %homepath% >>%yy981_temp%\information.yy981
echo OS��                                   %os% >>%yy981_temp%\information.yy981
echo �p�X                                   %path% >>%yy981_temp%\information.yy981
echo ProgramData�t�H���_�̃p�X              %programdata% >>%yy981_temp%\information.yy981
echo ProgramFiles�t�H���_�̃p�X             %programfiles% >>%yy981_temp%\information.yy981
echo �V�X�e���h���C�u                       %systemdrive% >>%yy981_temp%\information.yy981
echo �V�X�e�����[�g                         %systemroot% >>%yy981_temp%\information.yy981
echo ���O�C���h���C��                       %userdomain% >>%yy981_temp%\information.yy981
echo ���O�C�����[�U��                       %username% >>%yy981_temp%\information.yy981
echo �ꎞ�t�H���_�̃p�X                     %temp% >>%yy981_temp%\information.yy981
echo ���s�t�@�C���̊g���q�ꗗ               %pathext% >>%yy981_temp%\information.yy981
echo cmd.exe�ւ̃p�X                        %comspec% >>%yy981_temp%\information.yy981
)

if "%@1e_y1%"=="y" echo yy981 Program [Version %yy981ver%] >>%yy981_temp%\information.yy981
if "%@1e_y2%"=="y" echo �f�B���N�g��=%yy981_d% >>%yy981_temp%\information.yy981
if "%@1e_y3%"=="y" echo �v���O�����t�@�C��=%0 >>%yy981_temp%\information.yy981
if "%@1e_y4%"=="y" tree %yy981_d% /f >>%yy981_temp%\information.yy981

echo [�ǂݍ��ݒ��ł�]
echo.
more %yy981_temp%\information.yy981
echo.
echo 1. �������Ȃ�
echo 2. �N���b�v�{�[�h�ɃR�s�[
echo 3. ���[�U�[�f�B���N�g���ɏo��
choice /c 123
if %errorlevel%==2 type %yy981_temp%\information.yy981|clip
if %errorlevel%==3 copy /y %yy981_temp%\information.yy981 %user_d%\yy981_information.txt


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1f 
title %sn%(����)


echo ^<���p�K��^>
echo �����_�ł͂��̃y�[�W�ɂ���bat�t�@�C���͌l���p�Ɍ���A���앨�̖��f�ł̕����A���ρA�]�ځA�Ĕz�z�y�ѓ]�����̍s�ׂ��֎~���܂�
echo windows�ł̂ݐ���ɓ��삵�܂�
echo ���̃t�@�C�����g�����Ƃɂ��ǂ�ȑ��Q���ӔC���Ƃ�܂���@��������������
echo �펯�͈͓̔��Ŏg�p���Ă�������
echo.



echo ^<�V�X�e���ɂ���^>
echo yy981-program_ver5�ȍ~�̓V�X�e���h���C�u�����Ɂuyy981�v�Ƃ����t�H���_�[����������܂�
echo ���̃t�H���_�[��t�H���_�[���̃t�@�C����yy981-program�̎��s�ɂ̂ݎg�p���܂�
echo ��̓I�ɕ\�L����ƌ����_�ł́A�ݒ�̕ۑ�,�^�C�}�[�Ȃǂ̃o�b�N�O���E���h�����Ɏg���t�@�C���̐����@���ł�
echo yy981-program�̓��[�U�[�ɂ�鑀�삪�Ȃ�����yy981�t�H���_�[�݂̂𑀍삵�܂�
echo (���̑��̗�O���Ƃ��Ă͐V�o�[�W�����̏�����������windows��temp�t�H���_�[�Ɉꎞ�I�ȃt�@�C���𐶐����A�������I���ƍ폜���܂�)
echo �ȒP�Ɍ����ƒʏ��yy981�Ƃ����������ꂽ�t�H���_�[�݂̂�yy981-program�͑��삷��Ƃ������Ƃł�
echo.
echo yy981-program�̃V���[�g�J�b�g������l�ł�[yy981ver%yy981ver%_�V���[�g�J�b�g]�Ƃ������O�ňȉ��̏ꏊ�ɍ쐬���܂�
echo �h�L�������g(%systemdrive%\users\%username%\documents)
echo �f�X�N�g�b�v(%systemdrive%\users\%username%\desktop)
echo yy981-program���������ꏊ(��L�̏ꏊ�ɏd������ꍇ�͏㏑������܂�)
echo.

echo ^<yy981-program^>
echo yy981_path=@{�R�}���h�f�X�N�g�b�v}{�A���t�@�x�b�g�I��}
echo ���͑I����0��I������ꍇ�o�b�N���܂�
echo ���[�U�[�f�B���N�g��=���[�U�[�Ƃ̃t�@�C����t�H���_�̂���������t�H���_
echo.
echo [@1c(�ݒ�)]
echo Y=Yes   N=No   ?=�ǂݍ��ݕs�\   @=�T�u�ݒ肠��   #=���炩�̗��R�ŕ\���s�\
echo.
echo ------------------------------------------------------------------------------------------------------------------------------------------------
echo [2023/01/25 0:50 ^| ver%yy981ver% ^| yy981]
echo.


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@1z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2a 
title %sn%(explorer���N��)


start explorer


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2b 
title %sn%(browser)


echo 0. �z�[���ɖ߂�

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

choice /c 0abcefghijklmno /n /m "a�`n or 0"
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


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2c 
title %sn%(microsoft)


echo 0. �z�[���ɖ߂�
echo 1. �A�v��
echo 2. web

choice /c 012
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @2c_app
if %errorlevel%==3 goto @2c_web

:@2c_app

echo 1. office(���͒�)
echo 2. powerpoint
echo 3. word
echo 4. excel
echo 5. outlook(���͒�)
echo 6. onenote
echo 7. teams(���͒�)
echo 8. onedrive

choice /c 012345678
if %errorlevel%==1 goto home
if %errorlevel%==2 echo ���͒��ł�&goto home
if %errorlevel%==3 start powerpnt.exe
if %errorlevel%==4 start winword.exe
if %errorlevel%==5 start excel.exe
if %errorlevel%==6 echo ���͒��ł�&goto home
if %errorlevel%==7 start onenote.exe
if %errorlevel%==8 echo ���͒��ł�&goto home
if %errorlevel%==9 echo ���͒��ł�&goto home


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

echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2d 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2e 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@2z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3a 
title %sn%(���v�n)


echo 1. ���v
echo 2. �^�C�}�[

choice /c 012
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @3a_1
if %errorlevel%==3 goto @3a_2


:@3a_1
echo �^�C�g���ɕ\������܂�
echo.

:@3a_restart
title %sn%(���v�n)_E�L�[�ŏI��(���̑��̃L�[�͕\���������̂ŉ����Ȃ��ł�������)_����=%date:~0,4%/%date:~5,2%/%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2%
choice /c ep /n /cs /t 1 /d p >nul
if %errorlevel%==1 goto @3a
goto @3a_restart


:@3a_2
set @3a_2_cmd=rem _

set @3a_2_����=0 
set @3a_2_��=0 
set @3a_2_�b=0 

echo ���Ԃ�24�ȉ��̐����A���E�b��60�ȉ��̐�������͂��Ă�������

set /p @3a_2_����=������?
set /p @3a_2_��=����?
set /p @3a_2_�b=���b?

set /a @3a_2_���ԕb=%@3a_2_����%*3600 >nul
set /a @3a_2_���b=%@3a_2_��%*60 >nul
set /a @3a_2_�b�b=%@3a_2_�b% >nul
set /a @3a_2_�v������_=%@3a_2_���ԕb%+%@3a_2_���b% >nul
set /a @3a_2_�v������=%@3a_2_�v������_%+%@3a_2_�b�b% >nul

echo %@3a_2_�v������%�b�v�����܂�(%@3a_2_����%����-%@3a_2_��%��-%@3a_2_�b%�b)

echo �����L�[�������ăJ�E���g�_�E�����J�n
pause>nul
echo �I������9��d�q������A���b�Z�[�W�{�b�N�X���\������܂�

echo timeout /t %@3a_2_�v������% /nobreak^&msg %username% ���Ԃł� by.�^�C�}�[^& for /l ^%%%%a in (1,1,3) do echo x^|choice ^& timeout /t 1^
 >%yy981_temp%\@3a_2_timer.bat

start /min %yy981_temp%\@3a_2_timer.bat
echo �^�C�}�[���N�����܂���
echo.


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3b 
title %sn%(��������)


echo 1. �����_�������񐶐�
echo 2. ��������

choice /c 12
if %errorlevel%==1 goto @3a_1
if %errorlevel%==2 goto @3b_2

:@3b_1
echo [�����Ɏ��Ԃ�������ꍇ������܂�]
echo.

set @3b_type= 
set @3b_loop=1
set /p @3b_u_loop=����������͂��Ă�������:
set @3b_output= 
set @3b_nul= 

echo 1. ����
echo 2. �A���t�@�x�b�g������
echo 3. �A���t�@�x�b�g�啶��
echo 4. �A���t�@�x�b�g������+�A���t�@�x�b�g�啶��
echo 5. ����+�A���t�@�x�b�g������
echo 6. ����+�A���t�@�x�b�g�啶��
echo 7. ����+�A���t�@�x�b�g������+�A���t�@�x�b�g�啶��

:@3b_restart
%@3b_type%choice /c 1234567%@3b_nul%
if %errorlevel%==1 set @3b_type=echo 1^|&goto @3b_start_1
if %errorlevel%==2 set @3b_type=echo 2^|&goto @3b_start_2
if %errorlevel%==3 set @3b_type=echo 3^|&goto @3b_start_3
if %errorlevel%==4 set @3b_type=echo 4^|&goto @3b_start_4
if %errorlevel%==5 set @3b_type=echo 5^|&goto @3b_start_5
if %errorlevel%==6 set @3b_type=echo 6^|&goto @3b_start_6
if %errorlevel%==7 set @3b_type=echo 7^|&goto @3b_start_7

echo �G���[
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
echo ^<�o��^>
echo%@3b_output%
echo.

choice /m �������R�s�[���܂���?
if %errorlevel%==1 echo%@3b_output%|clip

choice /m ������x���s���܂���?
if %errorlevel%==1 goto @3b_2


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home


:@3b_2
echo 1~n�܂ł̐����������_���ɐ���

set /p @3b_2_input=n���������:
:@3b_2_restart
set /a @3b_2_output=%random%*%@3b_2_input%/32767
set /a @3b_2_output=%@3b_2_output%+1
echo ^<�o��^>
echo %@3b_2_output%
echo.
echo 1. ������x���s(���͂���)
echo 2. ������x���s(���͂Ȃ�)
echo 3. �z�[���֖߂�

choice /c 123
if %errorlevel%==1 goto @3b_2
if %errorlevel%==2 goto @3b_2_restart

echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3c 
title %sn%(���k^&��)
goto @3c_1

:@3c_start
choice /m �z�[���ɖ߂�܂���?
if %errorlevel%==1 (
echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home
)

:@3c_1
set return_point=@3c
goto ex
:@3c_es
if %ex_no%==1 echo ���~���܂���&goto home
set @3c_in=%ex_output%
set @3c_e_in=%ex_n_e%
set @3c_fo-in=%ex_fo-output%

echo 1. �L���r�l�b�g(�I�[�g)
echo 2. �L���r�l�b�g(���k)
echo 3. �L���r�l�b�g(��)
echo 4. LZX(�I�[�g)���������ł�
echo 5. LZX(���k)
echo 6. LZX(��)

choice /c 0123456
if %errorlevel%==1 goto home
if %errorlevel%==2 goto @3c_cabinet_automatic
if %errorlevel%==3 goto @3c_cabinet_a
if %errorlevel%==4 goto @3c_cabinet_k
if %errorlevel%==5 echo �������ł�&goto @3c_start
if %errorlevel%==6 goto @3c_ntfs_a
if %errorlevel%==7 goto @3c_ntfs_k

echo �G���[
goto @3c_start

:@3c_cabinet_automatic
for %%f in (%@3c_in%) do if %%~xf==.cab goto @3c_cabinet_k
goto @3c_cabinet_a

:@3c_cabinet_a
echo 1. �t�@�C��
echo 2. �t�H���_�[

choice /c 12
if %errorlevel%==1 makecab %@3c_in% "%@3c_e_in%.cab" >nul
if %errorlevel%==2 goto @3c_cabinet_a_2
echo �L���r�l�b�g���k
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
echo �L���r�l�b�g��
goto @3c_start

:@3c_ntfs_a
echo 1. �t�@�C��
echo 2. �t�H���_�[

choice /c 12
if %errorlevel%==1 compact /c %@3c_fo-in% /i
if %errorlevel%==2 compact /c /s:%@3c_fo-in% /i
goto @3c_start

:@3c_ntfs_k
echo 1. �t�@�C��
echo 2. �t�H���_�[

choice /c 12
if %errorlevel%==1 compact /u %@3c_in% /i
if %errorlevel%==2 compact /u /s:%@3c_fo-in% /i
goto @3c_start


echo �����L�[�������ƃz�[���ɖ߂�܂�
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

echo ^&���܂܂��t�@�C����t�H���_�͎g�p�ł��܂���
:@3d_start

echo.
echo.

if %@3d_return-point%==file_4 echo [�ړ���̃t�H���_�[�ɂ���t�@�C����I��]
if %@3d_return-point%==file_1 echo [�t�@�C���I��]

echo ��̂ق��Ƀt�H���_�@���̂ق��Ƀt�@�C�����\������܂�

echo [������@]

echo �t�H���_��         ���̃t�H���_�Ɉړ�

echo �t�@�C����         ���̃t�@�C����ҏW��

echo y9/reload          �ēǂݍ���

echo y9/cmd             �f�o�b�N�p

echo y9/back            ��̃t�H���_�Ɉړ�

echo y9/uback           ���[�U�[�̃t�H���_�Ɉړ�

echo y9/xback           �ŏ�̃t�H���_�Ɉړ�

echo y9/type            �\�����e�̑I��

echo y9/exit            �I��

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
rem (((��������)))

set @3d_n_m_s=y9/reload
set /p @3d_n_m_s=���������(y9/back�Ɠ��͂����1��ɖ߂�):
set @3d_n_m_s=%@3d_n_m_s:^&=%

if %@3d_n_m_s%==%@3d_5%    echo ����̓t�H���_�ƃt�@�C������؂���̂ł�&goto @3d_start
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

if %@3d_n_m_s% geq %@3d_6% echo �G���[(�t�@�C��or�t�H���_���̍����ɕ\�����ꂽ��������͂��Ă�������)&goto @3d_n_m_s
if %@3d_n_m_s% leq 0 echo �G���[(1�ȏ����͂��Ă�������)&goto @3d_n_m_s
if %@3d_n_m_s% leq 9 set @3d_s=%@3d_dir_h:~2%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 99 set @3d_s=%@3d_dir_h:~3%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 999 set @3d_s=%@3d_dir_h:~4%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 9999 set @3d_s=%@3d_dir_h:~5%&goto @3d_n_m_s_s
if %@3d_n_m_s% leq 99999 set @3d_s=%@3d_dir_h:~6%&goto @3d_n_m_s_s
if %@3d_n_m_s% geq 100000 echo �G���[(�����ȊO��������100000�ȏ�ɂ͑Ή����Ă��܂���)&goto @3d_n_m_s

echo �G���[
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
echo �G���[&goto @3d_start
)
cd %@3d_n% & goto @3d_start

:@3d_mode1_exit
choice /m ���̃t�@�C����I�����܂���?
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
rem ��������
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,�L�����Z��

echo 1,���s

echo 2,�R�s�[

echo 3,�폜

echo 4,�ړ�

echo 5,���O�̕ύX

choice /c:012345
if %errorlevel%==1 goto @3d_start
if %errorlevel%==2 goto @3d_file_1
if %errorlevel%==3 goto @3d_file_2
if %errorlevel%==4 goto @3d_file_3
if %errorlevel%==5 goto @3d_file_4
if %errorlevel%==6 goto @3d_file_5





:@3d_file_1

echo %@3d_n_e%�����s���܂���?(E=NOTEPAD�ŊJ�� C=�t�@�C�����J�����̂�I��)

choice /c ynec
if %errorlevel%==1 start %@3d_n% %@3d_n% & goto @3d_start
if %errorlevel%==2 echo %@3d_n_e%�̎��s���L�����Z�����܂��� & goto @3d_start
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
echo %@3d_n_e%�����s���܂�

goto @3d_start
:@3d_file_2

echo %@3d_n_e%���R�s�[���܂���?

choice
if %errorlevel%==2 echo %@3d_n%�̃R�s�[���L�����Z�����܂��� & goto @3d_start

copy %@3d_n% "y9 - %@3d_s%" >nul
echo [%@3d_n_e%]��["y9 - %@3d_s%"]�Ƃ������O�ŃR�s�[���܂���

goto @3d_start
:@3d_file_3

echo %@3d_n_e%���폜���܂���?

choice
if %errorlevel%==2 echo %@3d_n%�̍폜���L�����Z�����܂��� & goto @3d_start
del %@3d_n%
echo %@3d_n_e%���폜���܂���
goto @3d_start

:@3d_file_4
echo %@3d_n_e%���ړ������܂���?
set @3d_file_4=^"%@3d_n_e%^"

choice
if %errorlevel%==2 echo %@3d_n_e%�̈ړ����L�����Z�����܂��� & goto @3d_start
set @3d_mode=1
set @3d_return-point=file_4
goto @3d_start

:@3d_file_4_exit

move %@3d_file_4% ^"%@3d_path_d_m%^" >nul
echo %@3d_n_e%��%@3d_mode1_path_d_m%�Ɉړ����܂���

goto @3d_start
:@3d_file_5
echo %@3d_n_e%�̖��O��ύX���܂���?

choice
if %errorlevel%==2 echo %@3d_n%�̖��O�̕ύX���L�����Z�����܂��� & goto @3d_start
set /p @3d_file_5_name=%@3d_n%�ύX��̖��O�����:

ren %@3d_n% %@3d_file_5_name%
echo %@3d_n_e%��%@3d_file_5_name%�ɕύX���܂���

goto @3d_start


:@3d_type-choice
echo R �ǎ���p�t�@�C��   %@3d_type-r%
echo H �B���t�@�C��         %@3d_type-h%
echo A �A�[�J�C�u�t�@�C��   %@3d_type-a%
echo S �V�X�e���t�@�C��     %@3d_type-s%
echo E �I���I��

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


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3e 
title %sn%(�t�@�C�����e�ɂ��t�@�C������)


choice /m "�����܂���? ����cmd�̒m�����K�v�ł�"
if %errorlevel%==2 goto home

:@3e_f_start
set @3e_file="*.txt" 
:@3e_start
echo (��:%@3e_file%)"�ň͂�ł������� ���ɃX�y�[�X���󂯁A�O��*.��t���Ă�������(��:"*.bat" )
set /p @3e_file="���ׂ�Ώۂ̃t�@�C���g���q��ǉ�:"
choice /c ync /m "OK?(Y=OK,N=���ׂ�Ώۂ̃t�@�C����ǉ�,C=���ׂ�Ώۂ̃t�@�C�����N���A):"
if %errorlevel%==1 goto @3e_g_start
if %errorlevel%==2 goto @3e_start
if %errorlevel%==3 set @3e_file=&goto @3e_start

:@3e_g_start
rem @3e_ex_mode0=���
rem @3e_ex_mode1=�w���@3e_ex_mode0�ɖ߂�
rem @3e_ex_mode2=���ߍ���

cd %systemdrive%\users\%username%\documents\

set @3e_ex_mode=2
set @3e_ex_type-f4=0
set @3e_ex_type-r=+r
set @3e_ex_type-h=+h
set @3e_ex_type-a=+a
set @3e_ex_type-s=-s
set @3e_ex_n_m_s_s=0
set @3e_ex_return-point=nul
echo ��̂ق��Ƀt�H���_�@���̂ق��Ƀt�@�C�����\������܂�

echo [������@]

echo �t�H���_��         ���̃t�H���_�Ɉړ�

echo �t�@�C����         ���̃t�@�C����ҏW��

echo y9/reload          �ēǂݍ���

echo y9/cmd             �f�o�b�N�p

echo y9/back            ��̃t�H���_�Ɉړ�

echo y9/uback           ���[�U�[�̃t�H���_�Ɉړ�

echo y9/xback           �ŏ�̃t�H���_�Ɉړ�

echo y9/type            �\�����e�̑I��
goto @3e_ex_type-s

:@3e_ex_start

echo.
echo.

echo �w�肵�����t�H���_���̃t�@�C����I�����Ă�������
if %@3e_ex_return-point%==file_4 echo [�ړ���̃t�H���_�[�ɂ���t�@�C����I��]
if %@3e_ex_return-point%==file_1 echo [�t�@�C���I��]

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
rem (((��������)))

set @3e_ex_n_m_s=y9/reload
set /p @3e_ex_n_m_s=���������(y9/back�Ɠ��͂����1��ɖ߂�):
set @3e_ex_n_m_s=%@3e_ex_n_m_s:^&=%
rem ���������Ƃ��ł�����

if %@3e_ex_n_m_s%==%@3e_ex_5%    echo ����̓t�H���_�ƃt�@�C������؂���̂ł�&goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/reload goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/cmd    goto @3e_ex_cmd
if %@3e_ex_n_m_s%==y9/back   cd .. >nul & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/uback  cd %systemdrive%\users\%username%\ >nul & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/xback  cd %systemdrive%\ & goto @3e_ex_start
if %@3e_ex_n_m_s%==y9/type   goto @3e_ex_type-choice
set @3e_ex_n_m_s=%@3e_ex_n_m_s: =%

findstr /n /r "." %temp%\@3e_ex_dir.yy981 | findstr /r "^%@3e_ex_n_m_s%:">%temp%\@3e_ex_dir_h.yy981
for /f "delims=" %%a in (%temp%\@3e_ex_dir_h.yy981) do set @3e_ex_dir_h=%%a

if %@3e_ex_n_m_s% geq %@3e_ex_6% echo �G���[(�t�@�C��or�t�H���_���̍����ɕ\�����ꂽ��������͂��Ă�������)&goto @3e_ex_n_m_s
if %@3e_ex_n_m_s% leq 0 echo �G���[(1�ȏ����͂��Ă�������)&goto @3e_ex_n_m_s
if %@3e_ex_n_m_s% leq 9 set @3e_ex_s=%@3e_ex_dir_h:~2%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 99 set @3e_ex_s=%@3e_ex_dir_h:~3%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 999 set @3e_ex_s=%@3e_ex_dir_h:~4%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 9999 set @3e_ex_s=%@3e_ex_dir_h:~5%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% leq 99999 set @3e_ex_s=%@3e_ex_dir_h:~6%&goto @3e_ex_n_m_s_s
if %@3e_ex_n_m_s% geq 100000 echo �G���[(�����ȊO��������100000�ȏ�ɂ͑Ή����Ă��܂���)&goto @3e_ex_n_m_s

echo �G���[
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
echo �G���[&goto @3e_ex_start
)
cd %@3e_ex_n% & goto @3e_ex_start

:@3e_ex_mode1_exit
choice /m ���̃t�@�C����I�����܂���?
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
rem ��������
rem 
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo 0,�L�����Z��

echo 1,���s

echo 2,�R�s�[

echo 3,�폜

echo 4,�ړ�

echo 5,���O�̕ύX

choice /c:012345
if %errorlevel%==1 goto @3e_ex_start
if %errorlevel%==2 goto @3e_ex_file_1
if %errorlevel%==3 goto @3e_ex_file_2
if %errorlevel%==4 goto @3e_ex_file_3
if %errorlevel%==5 goto @3e_ex_file_4
if %errorlevel%==6 goto @3e_ex_file_5





:@3e_ex_file_1

echo %@3e_ex_n_e%�����s���܂���?(E=NOTEPAD�ŊJ�� C=�t�@�C�����J�����̂�I��)

choice /c ynec
if %errorlevel%==1 start %@3e_ex_n% %@3e_ex_n% & goto @3e_ex_start
if %errorlevel%==2 echo %@3e_ex_n_e%�̎��s���L�����Z�����܂��� & goto @3e_ex_start
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
echo %@3e_ex_n_e%�����s���܂�

goto @3e_ex_start
:@3e_ex_file_2

echo %@3e_ex_n_e%���R�s�[���܂���?

choice
if %errorlevel%==2 echo %@3e_ex_n%�̃R�s�[���L�����Z�����܂��� & goto @3e_ex_start

copy %@3e_ex_n% "y9 - %@3e_ex_s%" >nul
echo [%@3e_ex_n_e%]��["y9 - %@3e_ex_s%"]�Ƃ������O�ŃR�s�[���܂���

goto @3e_ex_start
:@3e_ex_file_3

echo %@3e_ex_n_e%���폜���܂���?

choice
if %errorlevel%==2 echo %@3e_ex_n%�̍폜���L�����Z�����܂��� & goto @3e_ex_start
del %@3e_ex_n%
echo %@3e_ex_n_e%���폜���܂���
goto @3e_ex_start

:@3e_ex_file_4
echo %@3e_ex_n_e%���ړ������܂���?
set @3e_ex_file_4=^"%@3e_ex_n_e%^"

choice
if %errorlevel%==2 echo %@3e_ex_n_e%�̈ړ����L�����Z�����܂��� & goto @3e_ex_start
set @3e_ex_mode=1
set @3e_ex_return-point=file_4
goto @3e_ex_start

:@3e_ex_file_4_exit

move %@3e_ex_file_4% ^"%@3e_ex_path_d_m%^" >nul
echo %@3e_ex_n_e%��%@3e_ex_mode1_path_d_m%�Ɉړ����܂���

goto @3e_ex_start
:@3e_ex_file_5
echo %@3e_ex_n_e%�̖��O��ύX���܂���?

choice
if %errorlevel%==2 echo %@3e_ex_n%�̖��O�̕ύX���L�����Z�����܂��� & goto @3e_ex_start
set /p @3e_ex_file_5_name=%@3e_ex_n%�ύX��̖��O�����:

ren %@3e_ex_n% %@3e_ex_file_5_name%
echo %@3e_ex_n_e%��%@3e_ex_file_5_name%�ɕύX���܂���

goto @3e_ex_start


:@3e_ex_type-choice
echo R �ǎ���p�t�@�C��   %@3e_ex_type-r%
echo H �B���t�@�C��         %@3e_ex_type-h%
echo A �A�[�J�C�u�t�@�C��   %@3e_ex_type-a%
echo S �V�X�e���t�@�C��     %@3e_ex_type-s%
echo E �I���I��

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
echo /B �s�̐擪�Ɉ�v������̂̂ݑΏۂƂ���
echo /E �s�̖����Ɉ�v������̂̂ݑΏۂƂ���
echo /I �啶������������ʂ��Ȃ�
echo /L ��������������e�����Ƃ��Č�������
echo /M ����������Ɉ�v������̂��P�ł����݂���t�@�C������\������
echo /N �������ʂɍs�ԍ���\������
echo /O �������ʂɕ����ʒu��\������
echo /R ����������𐳋K�\���Ƃ��Č�������
echo /S �T�u�t�H���_���܂߂Č�������
echo /V ����������Ɉ�v���Ȃ��s�������ΏۂƂ���
echo /X ���������񂪊��S�Ɉ�v����s�������ΏۂƂ���
:@3e_g_o
set /p @3e_option="�I�v�V������ݒ�(�X�y�[�X�ŋ�؂��Ă�������)(��:%option%):"
choice /m OK?
if %errorlevel%==2 goto @3e_g_o

choice /c au /m "�����R�[�h��I��(A=ANSI,U=UTF-8(�ʏ��UTF-8�ł�)):"
if %errorlevel%==1 set @3e_chara=932
if %errorlevel%==2 set @3e_chara=65001
:@3e_find
set /p @3e_find=�������镶��������:
chcp %@3e_chara%
findstr %@3e_option% ""%@3e_find%"" %@3e_file%
pause
chcp 932
choice /c elr /m "E=�I��,L=�n�߂����蒼��,R=�������镶�������͂���Ƃ��납���蒼��:"
if %errorlevel%==2 goto @3e_f_start
if %errorlevel%==3 goto @3e_find
cd %systemdrive%\


echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3y
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@3z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4a 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4b 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4c 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4d 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4e 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@4z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5a 
title %sn%(��T���Q�[���I�Ȃ���)


rem echo ver1

rem echo ver2

rem choice /c 12
if %errorlevel%==1 goto 
if %errorlevel%==2 goto 

echo [�Q�[���̃��[���ɂ���]

echo �}�X�͂��̂悤�ȍ��W�ŕ\���܂�(0�͏���)�@��ʓI�Ȃ���


echo [-1,1]  [1,1]
echo [-1,-1] [1,-1]

echo ��������K���ɂ���Ă݂Ă�������

echo �X�R�A�����Ȃ��ق��������ł�

set @5a_�ǐ�=1

set @5a_-10#10=��
set @5a_-9#10=��
set @5a_-8#10=��
set @5a_-7#10=��
set @5a_-6#10=��
set @5a_-5#10=��
set @5a_-4#10=��
set @5a_-3#10=��
set @5a_-2#10=��
set @5a_-1#10=��
set @5a_10#10=��
set @5a_9#10=��
set @5a_8#10=��
set @5a_7#10=��
set @5a_6#10=��
set @5a_5#10=��
set @5a_4#10=��
set @5a_3#10=��
set @5a_2#10=��
set @5a_1#10=��

set @5a_-10#9=��
set @5a_-9#9=��
set @5a_-8#9=��
set @5a_-7#9=��
set @5a_-6#9=��
set @5a_-5#9=��
set @5a_-4#9=��
set @5a_-3#9=��
set @5a_-2#9=��
set @5a_-1#9=��
set @5a_10#9=��
set @5a_9#9=��
set @5a_8#9=��
set @5a_7#9=��
set @5a_6#9=��
set @5a_5#9=��
set @5a_4#9=��
set @5a_3#9=��
set @5a_2#9=��
set @5a_1#9=��

set @5a_-10#8=��
set @5a_-9#8=��
set @5a_-8#8=��
set @5a_-7#8=��
set @5a_-6#8=��
set @5a_-5#8=��
set @5a_-4#8=��
set @5a_-3#8=��
set @5a_-2#8=��
set @5a_-1#8=��
set @5a_10#8=��
set @5a_9#8=��
set @5a_8#8=��
set @5a_7#8=��
set @5a_6#8=��
set @5a_5#8=��
set @5a_4#8=��
set @5a_3#8=��
set @5a_2#8=��
set @5a_1#8=��

set @5a_-10#7=��
set @5a_-9#7=��
set @5a_-8#7=��
set @5a_-7#7=��
set @5a_-6#7=��
set @5a_-5#7=��
set @5a_-4#7=��
set @5a_-3#7=��
set @5a_-2#7=��
set @5a_-1#7=��
set @5a_10#7=��
set @5a_9#7=��
set @5a_8#7=��
set @5a_7#7=��
set @5a_6#7=��
set @5a_5#7=��
set @5a_4#7=��
set @5a_3#7=��
set @5a_2#7=��
set @5a_1#7=��

set @5a_-10#6=��
set @5a_-9#6=��
set @5a_-8#6=��
set @5a_-7#6=��
set @5a_-6#6=��
set @5a_-5#6=��
set @5a_-4#6=��
set @5a_-3#6=��
set @5a_-2#6=��
set @5a_-1#6=��
set @5a_10#6=��
set @5a_9#6=��
set @5a_8#6=��
set @5a_7#6=��
set @5a_6#6=��
set @5a_5#6=��
set @5a_4#6=��
set @5a_3#6=��
set @5a_2#6=��
set @5a_1#6=��

set @5a_-10#5=��
set @5a_-9#5=��
set @5a_-8#5=��
set @5a_-7#5=��
set @5a_-6#5=��
set @5a_-5#5=��
set @5a_-4#5=��
set @5a_-3#5=��
set @5a_-2#5=��
set @5a_-1#5=��
set @5a_10#5=��
set @5a_9#5=��
set @5a_8#5=��
set @5a_7#5=��
set @5a_6#5=��
set @5a_5#5=��
set @5a_4#5=��
set @5a_3#5=��
set @5a_2#5=��
set @5a_1#5=��

set @5a_-10#4=��
set @5a_-9#4=��
set @5a_-8#4=��
set @5a_-7#4=��
set @5a_-6#4=��
set @5a_-5#4=��
set @5a_-4#4=��
set @5a_-3#4=��
set @5a_-2#4=��
set @5a_-1#4=��
set @5a_10#4=��
set @5a_9#4=��
set @5a_8#4=��
set @5a_7#4=��
set @5a_6#4=��
set @5a_5#4=��
set @5a_4#4=��
set @5a_3#4=��
set @5a_2#4=��
set @5a_1#4=��

set @5a_-10#3=��
set @5a_-9#3=��
set @5a_-8#3=��
set @5a_-7#3=��
set @5a_-6#3=��
set @5a_-5#3=��
set @5a_-4#3=��
set @5a_-3#3=��
set @5a_-2#3=��
set @5a_-1#3=��
set @5a_10#3=��
set @5a_9#3=��
set @5a_8#3=��
set @5a_7#3=��
set @5a_6#3=��
set @5a_5#3=��
set @5a_4#3=��
set @5a_3#3=��
set @5a_2#3=��
set @5a_1#3=��

set @5a_-10#2=��
set @5a_-9#2=��
set @5a_-8#2=��
set @5a_-7#2=��
set @5a_-6#2=��
set @5a_-5#2=��
set @5a_-4#2=��
set @5a_-3#2=��
set @5a_-2#2=��
set @5a_-1#2=��
set @5a_10#2=��
set @5a_9#2=��
set @5a_8#2=��
set @5a_7#2=��
set @5a_6#2=��
set @5a_5#2=��
set @5a_4#2=��
set @5a_3#2=��
set @5a_2#2=��
set @5a_1#2=��

set @5a_-10#1=��
set @5a_-9#1=��
set @5a_-8#1=��
set @5a_-7#1=��
set @5a_-6#1=��
set @5a_-5#1=��
set @5a_-4#1=��
set @5a_-3#1=��
set @5a_-2#1=��
set @5a_-1#1=��
set @5a_10#1=��
set @5a_9#1=��
set @5a_8#1=��
set @5a_7#1=��
set @5a_6#1=��
set @5a_5#1=��
set @5a_4#1=��
set @5a_3#1=��
set @5a_2#1=��
set @5a_1#1=��

rem __________________________________________________

set @5a_-10#-10=��
set @5a_-9#-10=��
set @5a_-8#-10=��
set @5a_-7#-10=��
set @5a_-6#-10=��
set @5a_-5#-10=��
set @5a_-4#-10=��
set @5a_-3#-10=��
set @5a_-2#-10=��
set @5a_-1#-10=��
set @5a_10#-10=��
set @5a_9#-10=��
set @5a_8#-10=��
set @5a_7#-10=��
set @5a_6#-10=��
set @5a_5#-10=��
set @5a_4#-10=��
set @5a_3#-10=��
set @5a_2#-10=��
set @5a_1#-10=��

set @5a_-10#-9=��
set @5a_-9#-9=��
set @5a_-8#-9=��
set @5a_-7#-9=��
set @5a_-6#-9=��
set @5a_-5#-9=��
set @5a_-4#-9=��
set @5a_-3#-9=��
set @5a_-2#-9=��
set @5a_-1#-9=��
set @5a_10#-9=��
set @5a_9#-9=��
set @5a_8#-9=��
set @5a_7#-9=��
set @5a_6#-9=��
set @5a_5#-9=��
set @5a_4#-9=��
set @5a_3#-9=��
set @5a_2#-9=��
set @5a_1#-9=��

set @5a_-10#-8=��
set @5a_-9#-8=��
set @5a_-8#-8=��
set @5a_-7#-8=��
set @5a_-6#-8=��
set @5a_-5#-8=��
set @5a_-4#-8=��
set @5a_-3#-8=��
set @5a_-2#-8=��
set @5a_-1#-8=��
set @5a_10#-8=��
set @5a_9#-8=��
set @5a_8#-8=��
set @5a_7#-8=��
set @5a_6#-8=��
set @5a_5#-8=��
set @5a_4#-8=��
set @5a_3#-8=��
set @5a_2#-8=��
set @5a_1#-8=��

set @5a_-10#-7=��
set @5a_-9#-7=��
set @5a_-8#-7=��
set @5a_-7#-7=��
set @5a_-6#-7=��
set @5a_-5#-7=��
set @5a_-4#-7=��
set @5a_-3#-7=��
set @5a_-2#-7=��
set @5a_-1#-7=��
set @5a_10#-7=��
set @5a_9#-7=��
set @5a_8#-7=��
set @5a_7#-7=��
set @5a_6#-7=��
set @5a_5#-7=��
set @5a_4#-7=��
set @5a_3#-7=��
set @5a_2#-7=��
set @5a_1#-7=��

set @5a_-10#-6=��
set @5a_-9#-6=��
set @5a_-8#-6=��
set @5a_-7#-6=��
set @5a_-6#-6=��
set @5a_-5#-6=��
set @5a_-4#-6=��
set @5a_-3#-6=��
set @5a_-2#-6=��
set @5a_-1#-6=��
set @5a_10#-6=��
set @5a_9#-6=��
set @5a_8#-6=��
set @5a_7#-6=��
set @5a_6#-6=��
set @5a_5#-6=��
set @5a_4#-6=��
set @5a_3#-6=��
set @5a_2#-6=��
set @5a_1#-6=��

set @5a_-10#-5=��
set @5a_-9#-5=��
set @5a_-8#-5=��
set @5a_-7#-5=��
set @5a_-6#-5=��
set @5a_-5#-5=��
set @5a_-4#-5=��
set @5a_-3#-5=��
set @5a_-2#-5=��
set @5a_-1#-5=��
set @5a_10#-5=��
set @5a_9#-5=��
set @5a_8#-5=��
set @5a_7#-5=��
set @5a_6#-5=��
set @5a_5#-5=��
set @5a_4#-5=��
set @5a_3#-5=��
set @5a_2#-5=��
set @5a_1#-5=��

set @5a_-10#-4=��
set @5a_-9#-4=��
set @5a_-8#-4=��
set @5a_-7#-4=��
set @5a_-6#-4=��
set @5a_-5#-4=��
set @5a_-4#-4=��
set @5a_-3#-4=��
set @5a_-2#-4=��
set @5a_-1#-4=��
set @5a_10#-4=��
set @5a_9#-4=��
set @5a_8#-4=��
set @5a_7#-4=��
set @5a_6#-4=��
set @5a_5#-4=��
set @5a_4#-4=��
set @5a_3#-4=��
set @5a_2#-4=��
set @5a_1#-4=��

set @5a_-10#-3=��
set @5a_-9#-3=��
set @5a_-8#-3=��
set @5a_-7#-3=��
set @5a_-6#-3=��
set @5a_-5#-3=��
set @5a_-4#-3=��
set @5a_-3#-3=��
set @5a_-2#-3=��
set @5a_-1#-3=��
set @5a_10#-3=��
set @5a_9#-3=��
set @5a_8#-3=��
set @5a_7#-3=��
set @5a_6#-3=��
set @5a_5#-3=��
set @5a_4#-3=��
set @5a_3#-3=��
set @5a_2#-3=��
set @5a_1#-3=��

set @5a_-10#-2=��
set @5a_-9#-2=��
set @5a_-8#-2=��
set @5a_-7#-2=��
set @5a_-6#-2=��
set @5a_-5#-2=��
set @5a_-4#-2=��
set @5a_-3#-2=��
set @5a_-2#-2=��
set @5a_-1#-2=��
set @5a_10#-2=��
set @5a_9#-2=��
set @5a_8#-2=��
set @5a_7#-2=��
set @5a_6#-2=��
set @5a_5#-2=��
set @5a_4#-2=��
set @5a_3#-2=��
set @5a_2#-2=��
set @5a_1#-2=��

set @5a_-10#-1=��
set @5a_-9#-1=��
set @5a_-8#-1=��
set @5a_-7#-1=��
set @5a_-6#-1=��
set @5a_-5#-1=��
set @5a_-4#-1=��
set @5a_-3#-1=��
set @5a_-2#-1=��
set @5a_-1#-1=��
set @5a_10#-1=��
set @5a_9#-1=��
set @5a_8#-1=��
set @5a_7#-1=��
set @5a_6#-1=��
set @5a_5#-1=��
set @5a_4#-1=��
set @5a_3#-1=��
set @5a_2#-1=��
set @5a_1#-1=��



set @5a_�X�R�A=0

rem __________________________________________________

:@5a_retry#x
set /a @5a_�����_��1#x=%random%*21/32767-10
if %@5a_�����_��1#x%==0 goto @5a_retry#x

:@5a_retry#y
set /a @5a_�����_��1#y=%random%*21/32767-10
if %@5a_�����_��1#y%==0 goto @5a_retry#y




set @5a_�����_��1=%@5a_�����_��1#x%#%@5a_�����_��1#y%


rem _______________
echo �����L�[�������ĊJ�n
pause>nul

rem ____________________________________________________________________________________________________

:@5a_�X�^�[�g
cls
echo �X�R�A:%@5a_�X�R�A%
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




set /p @5a_�I��x=x���W�����(-10�`10 ��0������)[�Q�[�����I������ɂ�0�����]
if %@5a_�I��x%==0 goto @5a_�I��?

set /p @5a_�I��y=y���W�����(-10�`10 ��0������)[�Q�[�����I������ɂ�0�����]
if %@5a_�I��y%==0 goto @5a_�I��?

set @5a_�I��=%@5a_�I��x%#%@5a_�I��y%
set @5a_������������=0
if %@5a_�����_��1%==%@5a_�I��% (
 set /a @5a_������������=%@5a_������������%+1 > nul�@& set @5a_%@5a_�I��%=��
) else (
  set @5a_%@5a_�I��%=�~
)


if %@5a_������������%==%@5a_�ǐ�% (
  goto @5a_�N���A
) else (
  set /a @5a_�X�R�A=%@5a_�X�R�A%+1>nul & goto @5a_�X�^�[�g
)





:@5a_�N���A
cls
echo �N���A

echo ���ʕ\��

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

echo �X�R�A:%@5a_�X�R�A%

echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home


:@5a_�I��?
cls
echo �{���ɏI�����Ă����ł����H yes or no

set @5a_�I��?=no
set /p @5a_�I��?=

if %@5a_�I��?%==yes cls&goto home
if %@5a_�I��?%==no goto @5a_�X�^�[�g

goto @5a_�I��?
_____________________________________________________________________
:@5b 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5c 





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5d 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5e 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5g 
title %sn%




echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@5z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6a 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6b 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6c 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6d 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6e 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@6z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7a 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7b 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7c 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7d 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7e 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7f 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7g 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7h 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7i 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7j 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7k 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7l 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7m 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7n 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7o 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7p 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7q 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7r 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7s 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7t 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7u 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7v 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7w 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7x 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7y 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________
:@7z 
title %sn%





echo �����L�[�������ƃz�[���ɖ߂�܂�
pause>nul
goto home

_____________________________________________________________________