#!/bin/bash
echo -e "\033[1;95m🌸 Installing Ultimate Senpai Kawaii Mode...\033[0m"

# Backup existing .bashrc
if [ -f "$HOME/.bashrc" ]; then
    cp "$HOME/.bashrc" "$HOME/.bashrc.backup.$(date +%Y%m%d)"
    echo -e "🔁 Backed up existing .bashrc"
fi

# Copy kawaii theme
cp kawaii.bashrc "$HOME/.kawaii_bashrc"

# Add to .bashrc
echo "" >> "$HOME/.bashrc"
echo "# 🌸 Ultimate Senpai Kawaii Mode" >> "$HOME/.bashrc"
echo "source \$HOME/.kawaii_bashrc" >> "$HOME/.bashrc"

echo -e "🎀 Installation complete! Restart Termux or run: source ~/.bashrc"
echo -e "💝 Enjoy your kawaii terminal, senpai!"
