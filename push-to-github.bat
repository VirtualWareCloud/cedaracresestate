@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM === CONFIG ===
SET "LOCAL_REPO_PATH=C:\Users\thabo\Documents\VSCODE_PROJECTS\CEDARACRESESTATE"
SET "GIT_REPO_URL=https://github.com/VirtualWareCloud/cedaracresestate.git"
SET "LOG_FILE=%LOCAL_REPO_PATH%\git_upload_log.txt"

REM === START LOG ===
echo ---------------------------------------------- >> "%LOG_FILE%"
echo [%DATE% %TIME%] 🚀 Starting Git Upload Process >> "%LOG_FILE%"

REM === NAVIGATE TO LOCAL REPO ===
cd /d "%LOCAL_REPO_PATH%"
IF ERRORLEVEL 1 (
    echo [%DATE% %TIME%] ❌ Failed to navigate to %LOCAL_REPO_PATH% >> "%LOG_FILE%"
    echo ❌ Directory not found.
    exit /b
) ELSE (
    echo [%DATE% %TIME%] ✅ Navigated to %LOCAL_REPO_PATH% >> "%LOG_FILE%"
)

REM === INITIALIZE GIT IF NOT ALREADY ===
IF NOT EXIST ".git" (
    echo [%DATE% %TIME%] 🔧 Initializing Git repository... >> "%LOG_FILE%"
    git init >> "%LOG_FILE%" 2>&1
    git remote add origin %GIT_REPO_URL% >> "%LOG_FILE%" 2>&1
    echo [%DATE% %TIME%] ✅ Git initialized and remote added >> "%LOG_FILE%"
) ELSE (
    echo [%DATE% %TIME%] ℹ️ Git repository already initialized >> "%LOG_FILE%"
)

REM === STAGE FILES ===
git add . >> "%LOG_FILE%" 2>&1
IF ERRORLEVEL 1 (
    echo [%DATE% %TIME%] ❌ Error during git add >> "%LOG_FILE%"
) ELSE (
    echo [%DATE% %TIME%] ✅ All files staged >> "%LOG_FILE%"
)

REM === COMMIT ===
<<<<<<< HEAD
git commit -m "🚀 Auto-update: latest changes" >> "%LOG_FILE%" 2>&1
=======
git commit -m "🚀 Initial upload of Cedar Acres Estate landing page (May 2025)" >> "%LOG_FILE%" 2>&1
>>>>>>> e66183e (­ƒÜÇ Initial upload of Cedar Acres Estate landing page (May 2025))
IF ERRORLEVEL 1 (
    echo [%DATE% %TIME%] ⚠️ No changes to commit or error occurred >> "%LOG_FILE%"
) ELSE (
    echo [%DATE% %TIME%] ✅ Commit successful >> "%LOG_FILE%"
)

<<<<<<< HEAD
REM === SYNC WITH REMOTE ===
git pull origin main --rebase >> "%LOG_FILE%" 2>&1
IF ERRORLEVEL 1 (
    echo [%DATE% %TIME%] ⚠️ Pull failed or merge required >> "%LOG_FILE%"
) ELSE (
    echo [%DATE% %TIME%] 🔁 Pulled latest from remote main >> "%LOG_FILE%"
)
=======
REM === SET MAIN BRANCH ===
git branch -M main >> "%LOG_FILE%" 2>&1
echo [%DATE% %TIME%] 🔁 Switched to 'main' branch >> "%LOG_FILE%"
>>>>>>> e66183e (­ƒÜÇ Initial upload of Cedar Acres Estate landing page (May 2025))

REM === PUSH TO REMOTE ===
git push -u origin main >> "%LOG_FILE%" 2>&1
IF ERRORLEVEL 1 (
    echo [%DATE% %TIME%] ❌ Push to GitHub failed >> "%LOG_FILE%"
    echo ❌ Git push failed. Check your credentials or internet connection.
) ELSE (
    echo [%DATE% %TIME%] ✅ Successfully pushed to GitHub >> "%LOG_FILE%"
    echo ---------------------------------------------- >> "%LOG_FILE%"
    echo ✅ Upload complete! Check GitHub: %GIT_REPO_URL%
)

pause
<<<<<<< HEAD
=======

>>>>>>> e66183e (­ƒÜÇ Initial upload of Cedar Acres Estate landing page (May 2025))
