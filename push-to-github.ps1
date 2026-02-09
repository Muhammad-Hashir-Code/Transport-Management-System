# PowerShell script to push Transport Management System to GitHub
# Run this AFTER creating the repository on GitHub

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername
)

$repoName = "Transport-Management-System"
$remoteUrl = "https://github.com/$GitHubUsername/$repoName.git"

Write-Host "Setting up remote repository..." -ForegroundColor Green
Write-Host "Repository URL: $remoteUrl" -ForegroundColor Cyan

# Add remote origin
git remote add origin $remoteUrl

# Check if remote was added successfully
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Remote added successfully" -ForegroundColor Green
} else {
    Write-Host "Remote might already exist. Updating..." -ForegroundColor Yellow
    git remote set-url origin $remoteUrl
}

# Push to GitHub
Write-Host "`nPushing to GitHub..." -ForegroundColor Green
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✓ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "View your repository at: $remoteUrl" -ForegroundColor Cyan
} else {
    Write-Host "`n✗ Push failed. Please check:" -ForegroundColor Red
    Write-Host "  1. Repository exists on GitHub" -ForegroundColor Yellow
    Write-Host "  2. You have authentication set up (GitHub CLI or credentials)" -ForegroundColor Yellow
    Write-Host "  3. Repository name matches: $repoName" -ForegroundColor Yellow
}
