#!/usr/bin/fish

if [ (cd (cat ~/.config/geoloc); and git rev-parse --git-dir ^ /dev/null) ]
  echo -n (basename (git-info (cat ~/.config/geoloc) | grep -E "^Path"))
  if [ (cd (cat ~/.config/geoloc); and git status --porcelain | wc -l) != "0" ]
    echo -n " ✗ "
    echo -n (cd (cat ~/.config/geoloc); and git status --porcelain | grep -E "^ M " | wc -l)
    echo -n "M "
    echo -n (cd (cat ~/.config/geoloc); and git status --porcelain | grep -E "^A  " | wc -l)
    echo -n "A "
    echo -n (cd (cat ~/.config/geoloc); and git status --porcelain | grep -E "^?? " | wc -l)
    echo -n "??"
  else
    echo -n " ✔"
  end
else
  echo
end
