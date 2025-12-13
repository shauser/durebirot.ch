#!/bin/bash
mogrify -auto-orient -resize 1200x1200^ -quality 85 "*.jpg"
[[ -e 'Img??.jpg' ]] && rename.ul Img aaa Img??.jpg
a=1
for i in *.jpg; do
  new=$(printf "Img%02d.jpg" "$a")
  mv -i -- "$i" "$new"
  let a=a+1
done
