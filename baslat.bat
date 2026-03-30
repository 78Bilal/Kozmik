@echo off
title TUA KAAN - Komuta Merkezi
color 0b

echo --------------------------------------------------
echo [!] TUA KAAN SISTEMI BASLATILIYOR...
echo --------------------------------------------------

:: 1. Python Analiz Motorunu Ayri Bir Pencerede Baslat
echo [1/3] Python Analiz Motoru yukleniyor...
:: Burada 'app.py' yazan yere senin dosyanin adini yaz
start cmd /k "python kozmik_arayuz.py"

:: Python'un acilmasi icin 5 saniye bekle (Donanimin hizina gore artirabilirsin)
timeout /t 5 /nobreak > nul

:: 2. Ngrok Token Tanimi
echo [2/3] Ngrok Kimlik Dogrulamasi Yapiliyor...
ngrok config add-authtoken NGROK APİ KEY İNİZİ YAZINIZ

echo.
echo [3/3] Tunel Baglantisi Kuruluyor (Port 7860)...
echo [!] UYARI: BU PENCERELERI KAPATIRSAN SISTEM CEVRE DISI KALIR!
echo --------------------------------------------------

:: 3. Ngrok'u Baslat
ngrok http 7860
