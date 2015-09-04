#### Script to pandoc and upload mates 1bat to github pages

echo "**** exportant arxiu.md --> html"
pandoc -s -S --mathjax -c mates1batcientific/css/llibre.css --number-sections --toc mates1batcientific/mates1batcientific.md -o mates1batcientific/mates1batcientific.html

echo "***** pujant canvis a github"
git add -A
git commit -m "Expanding mates1bat book"
git push origin master

echo "done!"