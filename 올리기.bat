@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
cd /d "%~dp0"

set REPO_URL=https://github.com/Chou-0308/photoshop-class.git

echo.
echo ============================================
echo   포토샵 수업 사이트 업로드
echo ============================================
echo.

where git >nul 2>&1
if errorlevel 1 (
  echo [X] git 이 설치되어 있지 않습니다.
  echo     https://git-scm.com/download/win  에서 설치한 뒤 다시 실행하세요.
  echo.
  pause
  exit /b 1
)

if not exist ".git" (
  echo - 처음 실행입니다. 저장소를 연결합니다...
  git init -q
  git branch -M main
  git remote add origin %REPO_URL%
  echo   연결 완료 -^> %REPO_URL%
  echo.
)

git add -A
git diff --cached --quiet
if not errorlevel 1 (
  echo [OK] 변경된 내용이 없습니다. 올릴 것이 없어요.
  echo.
  pause
  exit /b 0
)

echo - 이번에 올라갈 파일
git diff --cached --name-status
echo.

for /f "tokens=1-3 delims=/- " %%a in ("%date%") do set D=%%a-%%b-%%c
set T=%time:~0,5%
git commit -q -m "수업자료 업데이트 %D% %T%"
echo - 커밋 완료 (%D% %T%)

echo - GitHub 로 올리는 중...
git push -u origin main
if errorlevel 1 (
  echo.
  echo [X] 업로드에 실패했습니다.
  echo     GitHub Desktop 을 한 번 실행해 로그인되어 있는지 확인해 주세요.
) else (
  echo.
  echo ============================================
  echo   완료!
  echo.
  echo   1~2분 뒤 아래 주소에서 확인하세요
  echo   https://Chou-0308.github.io/photoshop-class/
  echo ============================================
)

echo.
pause
