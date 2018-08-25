sudo ln -s /usr/share/defaults/etc/shells /etc/shells
sudo eopkg it zsh git curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Using with Tilix: "
echo "
    if [[ $TILIX_ID ]]; then
        source /usr/share/defaults/etc/profile.d/vte.sh
    fi
"
ls /usr/share/defaults/etc/profile.d/vte.sh
