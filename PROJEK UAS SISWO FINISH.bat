@echo off

:login
cls
echo =====================================================
echo SELAMAT DATANG DI PROJEK AKHIR SEMESTER 2 SISWO HARJO
echo =====================================================
set /p user= username:
if %user%== 1 (
    goto password
) else (
    goto login
)
:password
cls
set /p pass= password:
if %pass%== 1 (
    goto MAIN_MENU   
) else (
    goto login
)

rem=================MAIN MENU========================
:MAIN_MENU
cls
echo ==============SELAMAT DATANG=====================
echo -------------------------------------------------
echo 1. PROGRAM HITUNG          
echo 2. MENU APLIKASI 
echo 3. PROGRAM SETTING   
echo 4. MAKANAN NUSANTARA
echo 5. PERHITUNGAN SEGITIGA
echo 6. KELUAR                  

echo ==============TERIMA KASIH======================

set /p pilihan=pilihan anda:

if %pilihan% == 1 goto PROGRAM_HITUNG
if %pilihan% == 2 goto MENU_APLIKASI
if %pilihan% == 3 goto PROGRAM_SETTING
if %pilihan% == 4 goto MAKANAN_NUSANTARA
if %pilihan% == 5 goto PERHITUNGA_SEGITIGA
if %pilihan% == 6 goto login
else (
    echo pilihan anda tidak ada silahkan ulang kembali...
    pause
    goto MAIN_MENU
)

rem PROGRAM HITUNG
:PROGRAM_HITUNG
cls
echo aplikasi menghitung
echo a.penjumlahan
echo b.pengurangan
echo c.perkalian
echo d.kembali

set /p pilihan=pilihan anda:

if "%pilihan%"=="a" (
    call:penjumlahan
) else if "%pilihan%"=="b" (
    call:pengurangan
) else if "%pilihan%"=="c" (
    call:perkalian
) else if "%pilihan%"=="d" (
    goto MAIN_MENU 
) else (
    echo pilihan tidak ada silahkan ulang kembali...
    pause
    goto PROGRAM_HITUNG
)

:penjumlahan
cls
echo masukkan dua angka yg akan dijumlahkan
set /p "angka1=angka pertama:"
set /p "angka2=angka kedua:"
set /a hasil=angka1+angka2
echo hasil penjumlahan:%hasil%
pause
goto PROGRAM_HITUNG

:pengurangan
cls
echo masukkan dua angka yg akan dikurangkan
set /p "angka1=angka pertama:"
set /p "angka2=angka kedua:"
set /a hasil=angka1-angka2
echo hasil pengurangan:%hasil%
pause
goto PROGRAM_HITUNG

:perkalian
cls
echo masukkan dua angka yang akan dikalikan
set /p "angka1=angka pertama:"
set /p "angka2=angka kedua"
set /a hasil=angka1*angka2
echo hasil perkalian:%hasil%
pause
goto PROGRAM_HITUNG

rem ======================= MENU APLIKASI============================
:MENU_APLIKASI
cls
echo MENU APLIKASI:
echo ---------------------
echo a.ms.word
echo b.youtube
echo c.kembali

set /p "pilih=masukkan pilihan:"

if "%pilih%"=="a" (
    call:ms.word
) else if "%pilih%"=="b" (
    call:youtube
) else if "%pilih%"=="c" (
    goto MAIN_MENU 
) else (
    echo pilihan yg anda masukkan salah
    pause
    goto MENU_APLIKASI
)

:ms.word
cls
start Winword.exe
pause
goto MENU_APLIKASI

:youtube
cls
start www.youtube.com
pause
goto MENU_APLIKASI

rem ================PROGRAM SETTING======================
:PROGRAM_SETTING
cls
echo menu setting:
echo ----------------------------
echo a.shutdown
echo b.restart
echo c.kembali

set /p "pilih=masukkan pilihan: "
if "%pilih%"=="a" (
    call:shutdown
)else if "%pilih%"=="b" (
    call:restart
)else if "%pilih%"=="c" (
    goto MAIN_MENU
)else (
    echo pilihan yang anda masukkan salah
    pause
    goto PROGRAM_SETTING
)

:shutdown
cls
set /p "shutdown=echo anda yakin akan mematikan komputer?[Y/N]"
if %shutdown%==Y goto shutdown1
if %shutdown%==N goto PROGRAM_SETTING

:shutdown1
echo MEMATIKAN KOMPUTER
pause
shutdown -s -t 10 -c "komputer akan dimatikan"
goto PROGRAM_SETTING
pause

:restart
cls
set /p "restart=echo Anda yakin akan merestart komputer?[Y/N]"
if %restart%==Y goto restart1
if %restart%==N goto PROGRAM_SETTING

:restart1
echo merestart komputer...
shutdown -r -t 00 -c "restarting komputer sedang berjalan"
goto PROGRAM_SETTING
pause

:MAKANAN_NUSANTARA
cls
echo MAKANAN NUSANTARA
echo ---------------
echo 1.Sate
echo 2.Pecel
echo 3.kembali

set /p "pilih=masukkan pilihan anda"

if %pilih%==1 goto Sate
if %pilih%==2 goto Pecel
if %pilih%==3 goto MAIN_MENU
pause

:Sate
cls
echo =======================
echo INI ADALAH HALAMAN Sate
echo =======================
pause
goto MAKANAN_NUSANTARA
:Pecel
cls
echo ========================
echo INI ADALAH HALAMAN PECEL
echo ========================
pause
goto MAKANAN_NUSANTARA

:PERHITUNGA_SEGITIGA
cls
set /p m=masukkan tingginya
set /p n=masukkan alasnya
set /a mn=%m%*%n%/2

echo alas :%m%
echo tinggi :%n%
echo luas segitiga  : %mn%
============================
pause
