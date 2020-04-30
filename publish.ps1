Remove-Item -Path ".\public" -Exclude ".git" -Recurse -Force
Copy-Item -Path ".\build\*" -Destination "public" -Force -Recurse

Set-Location .\public

git add --all
git commit -m "Publicação em %date% %time%"
git push --force

Set-Location ..