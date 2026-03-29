
=======
PS1="\[\e[1;31m\][MIDGAR REACTOR]\[\e[0m\] \[\e[1;34m\]\u\[\e[0m\]@\[\e[0;35m\]\h\[\e[0m\] → \[\e[0;36m\]\w\[\e[0m\] \$ "
echo -e "\e[1;31m
 ███╗   ███╗ █████╗ ██╗  ██╗ ██████╗ 
 ████╗ ████║██╔══██╗██║ ██╔╝██╔═══██╗
 ██╔████╔██║███████║█████╔╝ ██║   ██║
 ██║╚██╔╝██║██╔══██║██╔═██╗ ██║   ██║
 ██║ ╚═╝ ██║██║  ██║██║ ╚██╗╚██████╔╝
 ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
       SHINRA ELECTRIC POWER COMPANY
\e[0;32m
   "Mako is the lifeblood of this planet... all energy is born from it."
                              — President Shinra
\e[0m"

mpg123 ~/Music/shinra_theme.mp3 >/dev/null 2>&1 &
# Shinra theme toggle: set to 1 to enable, 0 to disable PLAY_SHINRA_THEME=0

toggle_shinra() {
if grep -q 'PLAY_SHINRA_THEME=0' ~/.bashrc; then
sed -i 's/PLAY_SHINRA_THEME=0/PLAY_SHINRA_THEME=0/' ~/.bashrc
pkill -f shinra_theme.mp3
echo "🔇 Shinra theme disabled and playback stopped."
else
sed -i 's/PLAY_SHINRA_THEME=0/PLAY_SHINRA_THEME=0/' ~/.bashrc
echo "🔊 Shinra theme enabled. It will play on next terminal launch."
fi
}
>>>>>>> b099a07 (Inital commit - Shinra terminal setup)
