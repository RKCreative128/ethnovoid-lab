# PowerShell script to set up Git repository and push to GitHub
# Make sure Git is installed before running this script

$repoName = "landing-page"
$username = "Ethnovoid-Lab"
$email = "ridhokurnia128@gmail.com"

Write-Host "Setting up Git repository: $repoName" -ForegroundColor Green

# Configure Git
Write-Host "Configuring Git user..." -ForegroundColor Yellow
git config --global user.name $username
git config --global user.email $email

# Initialize repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init

# Add all files
Write-Host "Adding all files..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Landing page project"

# Create repository on GitHub (requires GitHub CLI or manual creation)
Write-Host "`nTo create the repository on GitHub:" -ForegroundColor Cyan
Write-Host "1. Go to https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: $repoName" -ForegroundColor White
Write-Host "3. Set visibility (Public/Private)" -ForegroundColor White
Write-Host "4. DO NOT initialize with README, .gitignore, or license" -ForegroundColor White
Write-Host "5. Click 'Create repository'" -ForegroundColor White
Write-Host "`nAfter creating the repository, run these commands:" -ForegroundColor Cyan
Write-Host "git remote add origin https://github.com/$username/$repoName.git" -ForegroundColor White
Write-Host "git branch -M main" -ForegroundColor White
Write-Host "git push -u origin main" -ForegroundColor White

Write-Host "`nSetup complete! Repository is ready to push." -ForegroundColor Green

