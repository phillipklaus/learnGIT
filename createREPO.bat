@echo off
set /p repository_description="Enter description of new repository: "
set /p commit_comment="Enter comment for the commit: "
set /p github_link="Enter link for the GitHub repository: "

echo "# %repository_description%" >> README.md 
git init
git add README.md
git commit -m "%commit_comment%" 
git branch -M main
git remote add origin %github_link%
git push -u origin main
