<<<<<<< HEAD
# === CONFIG ===
$LocalRepoPath = "C:\Users\thabo\Documents\VSCODE_PROJECTS\CEDARACRESESTATE"
$GitRepoURL = "https://github.com/VirtualWareCloud/cedaracresestate.git"
$LogFile = "$LocalRepoPath\git_upload_log.txt"

# === LOG START ===
Add-Content $LogFile "`n--------------------------------------------------"
Add-Content $LogFile "[{0}] 🚀 Starting Git Upload Process" -f (Get-Date)

# === CHANGE DIRECTORY ===
Set-Location $LocalRepoPath
Add-Content $LogFile "[{0}] ✅ Navigated to $LocalRepoPath" -f (Get-Date)

# === INIT IF NEEDED ===
if (-not (Test-Path "$LocalRepoPath\.git")) {
    Add-Content $LogFile "[{0}] 🔧 Initializing new Git repository" -f (Get-Date)
    git init *>> $LogFile
    git remote add origin $GitRepoURL *>> $LogFile
} else {
    Add-Content $LogFile "[{0}] ℹ️ Git already initialized" -f (Get-Date)
}

# === ADD + COMMIT ===
git add . *>> $LogFile
git commit -m "🚀 Auto-update: latest changes" *>> $LogFile
Add-Content $LogFile "[{0}] ✅ Files committed" -f (Get-Date)

# === PULL REMOTE ===
git pull origin main --rebase *>> $LogFile
Add-Content $LogFile "[{0}] 🔁 Pulled remote main with rebase" -f (Get-Date)

# === PUSH TO GITHUB ===
git push origin main *>> $LogFile
Add-Content $LogFile "[{0}] ✅ Push complete" -f (Get-Date)
=======
# Set variables
$LocalRepoPath = "C:\Users\thabo\Documents\VSCODE_PROJECTS\CEDARACRESESTATE"
$GitRepoURL = "https://github.com/VirtualWareCloud/cedaracresestate.git"

# Navigate to local repo
Set-Location $LocalRepoPath

# Initialize Git if not already initialized
if (-not (Test-Path "$LocalRepoPath\.git")) {
    git init
    git remote add origin $GitRepoURL
}

# Stage, commit, and push all changes
git add .
git commit -m "🚀 Initial upload of Cedar Acres Estate landing page (May 2025)"
git branch -M main
git push -u origin main
>>>>>>> e66183e (­ƒÜÇ Initial upload of Cedar Acres Estate landing page (May 2025))
