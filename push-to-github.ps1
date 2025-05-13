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
