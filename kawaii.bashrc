# ===============================
# 🌸 ULTIMATE SENPAI KAWAII MODE 🌸
# ===============================

clear

# ----------------------------------
# 🦉 Animated Owl Mascot (frames)
# ----------------------------------
owl1="( •_•)>⌐■-■"
owl2="( •_•)>     "
owl3="( >_> )>     "
owl4="( •_•)>⌐■-■"

# Play animation
for frame in "$owl1" "$owl2" "$owl3" "$owl4"; do
    echo -e "\033[1;95m   $frame\033[0m"
    sleep 0.2
    clear
done

# ----------------------------------
# 🎀 Waifu ASCII Welcome
# ----------------------------------
echo -e "\033[1;95m   ∧＿∧"
echo -e "  ( ･ω･)  \033[1;96mWelcome back, senpai!\033[0m"
echo -e "  /   づ"
echo -e " しーーＪ\n"

# ----------------------------------
# ✨ Random Kawaii Messages
# ----------------------------------
messages=(
  "\033[1;92mKawaii desu ne~ 💫\033[0m"
  "\033[1;96mNotice me, senpai! 🎀\033[0m"
  "\033[1;93mYosh! Let’s be productive today ✨\033[0m"
  "\033[1;95mNya~ What shall we code today? 💻\033[0m"
  "\033[1;94mSenpai, you're amazing! 😊\033[0m"
  "\033[1;91mGanbatte senpai! 🎯\033[0m"
  "\033[1;95mOwl says: 'I believe in you~' 🦉💞\033[0m"
)

rand_msg=${messages[$RANDOM % ${#messages[@]}]}
echo -e "$rand_msg\n"


# ----------------------------------
# 🌤 Weather (Anime style)
# ----------------------------------
if command -v curl >/dev/null 2>&1; then
    w=$(curl -s wttr.in/?format="%C+%t")
    echo -e "\033[1;36m🌤 Weather:\033[0m Senpai, it's $w outside!"
else
    echo -e "\033[1;36m🌤 Weather:\033[0m (curl not installed)"
fi

echo ""

# ----------------------------------
# 🈺 Japanese word of the day
# ----------------------------------
words=(
  "かわいい (kawaii) — cute!"
  "がんばって (ganbatte) — do your best!"
  "ともだち (tomodachi) — friend"
  "すごい (sugoi) — amazing!"
  "ねこ (neko) — cat"
  "はな (hana) — flower"
  "あい (ai) — love"
)

echo -e "\033[1;35m📘 Word of the day:\033[0m ${words[$RANDOM % ${#words[@]}]}\n"

# ----------------------------------
# 🦄 Emoji particles around you
# ----------------------------------
particles=("✨" "💖" "🌸" "🎀" "🦉" "💫" "⭐")
echo -e " ${particles[$RANDOM % ${#particles[@]}]}  ${particles[$RANDOM % ${#particles[@]}]}  ${particles[$RANDOM % ${#particles[@]}]} \n"

# ----------------------------------
# 📁 Kawaii System Info
# ----------------------------------
echo -e "\033[1;36m📱 Device:\033[0m Owl"
echo -e "\033[1;35m📁 Directory:\033[0m $(pwd)"
echo -e "\033[1;33m⏰ Time:\033[0m $(date +'%I:%M %p')\n"

# ----------------------------------
# 🎨 Pastel gradient prompt
# ----------------------------------
PS1='\[\033[38;5;219m\]🌸\[\033[38;5;218m\] \w \[\033[38;5;225m\]⤷ \[\033[0m\] '

# ----------------------------------
# 🎵 Sound effect (Termux only)
# ----------------------------------
termux-notification --sound --title "Senpai~" --content "Your kawaii terminal is ready 💖" >/dev/null 2>&1 &


# ----------------------------------
# 🎀 Cute Aliases
# ----------------------------------
alias senpai-help='echo -e "\033[1;95m🎀 Senpai Commands:\033[0m\nwaifu-update - Refresh\nneofetch-senpai - Cute system info\nkawaii-mode - Extra cute mode"'
alias waifu-update='source ~/.bashrc'
alias neofetch-senpai='neofetch | lolcat'
alias kawaii-mode='cmatrix | lolcat'
alias pls='sudo'
alias oops='echo -e "\033[1;91m⚠️ Yamete! Typo detected, senpai!\033[0m"'

# Kawaii git
alias g-commit='git commit -m'
alias g-status='git status'
alias g-push='echo -e "\033[1;92m🚀 Deploying your code, senpai!\033[0m" && git push'


# ----------------------------------
# ⏳ Anime loading bar for long cmds
# ----------------------------------
loading() {
    echo -ne "\033[1;96mLoading senpai\033[0m "
    for i in {1..10}; do
        echo -ne "🌸"
        sleep 0.1
    done
    echo -e "\n"
}
