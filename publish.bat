@echo off
cd public
git add .
git commit -m "Publicado em %date% %time%"
git push --force
cd ..