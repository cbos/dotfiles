# Dotfiles



# Inspiration
- https://github.com/twpayne/dotfiles
- https://carlosneto.dev/blog/2024/2024-02-08-starship-zsh/


# Other changes to my desktop

On a bigger external screen I faced some problems with Edge
https://techcommunity.microsoft.com/t5/discussions/bug-linux-wrong-scale-in-hidpi-screen-and-text-location-report/m-p/2311255

```shell
# Find the desktop file
find / -name '*.desktop' -exec grep -i -H 'Edge' {} \; 2>/dev/null

#edit the desktop file
# Add --high-dpi-support=1 --force-device-scale-factor=2 before %U
sudo vi /var/lib/flatpak/exports/share/applications/com.microsoft.Edge.desktop

```
