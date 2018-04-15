clear
echo "Changing terminal color to white for 5 seconds... \n"
cp ~/.Xdefaults ~/repos/dotfiles/Xdefs
cp ~/.config/termite/config ~/repos/dotfiles/termcache

cp ~/repos/dotfiles/londontube ~/.Xdefaults
cp ~/repos/dotfiles/termwhite ~/.config/termite/config

sleep 5

cp ~/repos/dotfiles/Xdefs ~/.Xdefaults
cp ~/repos/dotfiles/termcache ~/.config/termite/config

clear

