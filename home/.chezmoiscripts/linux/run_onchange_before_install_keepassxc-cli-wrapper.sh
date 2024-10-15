#!/bin/bash

script_name="$HOME/.local/bin/keepassxc-cli-wrapper.sh"
mkdir -p $HOME/.local/bin/
touch $script_name
echo "#!/bin/bash" > $script_name

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    echo "/Applications/KeePassXC.app/Contents/MacOS/keepassxc-cli \"\$@\"" >> $script_name
else
    echo "flatpak run --command=keepassxc-cli org.keepassxc.KeePassXC \"\$@\"" >> $script_name
fi

chmod +x $script_name
