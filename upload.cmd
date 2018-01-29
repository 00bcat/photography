:: Execute this after adding new photos in ./images/
:: npm, gulp, GraphicsMagick
:: Should install above beforehand

set /p msg="Enter git commit message: "
:: https://github.com/gulpjs/gulp/issues/1086
call gulp
git fetch
git add --all
git commit -m "%msg%"
git push origin master
pause
