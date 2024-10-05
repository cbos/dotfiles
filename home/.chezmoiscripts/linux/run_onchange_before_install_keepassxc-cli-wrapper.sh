#!/bin/bash

script_name="$HOME/.local/bin/keepassxc-cli-wrapper.sh"

touch $script_name
echo "#!/bin/bash" > $script_name
echo "flatpak run --command=keepassxc-cli org.keepassxc.KeePassXC \$@" >> $script_name

chmod +x $script_name
