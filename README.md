# gnome-shell-extension-pip-on-top (Fork with Chrome-based browsers)
This project is a fork maintained by **Beardtech**, inspired by the original work from **Rafostar**:

https://github.com/Rafostar/gnome-shell-extension-pip-on-top

The main work in this fork is internationalization and maintainability improvements, replacing the previous `po/mo` translation workflow with a simpler approach, while also improving support for Chrome-based browsers.

Makes "Picture-in-Picture" windows stay on top (even on Wayland session). Compatible with Firefox, Chrome-based browsers.

## Installation from source code
Run below in terminal one by one:
```sh
git clone "https://github.com/BeardTech/gnome-shell-extension-pip-on-top.git" "pip-on-top@beardtech.github.com"
cd pip-on-top@beardtech.github.com
glib-compile-schemas ./schemas/
gnome-extensions pack --force --extra-source=pip-title-matchers.json
gnome-extensions install pip-on-top@beardtech.github.com.shell-extension.zip --force
logout/login gnome sessions
gnome-extensions enable pip-on-top@beardtech.github.com
```
Optionally generate/update `pip-title-matchers.json` (structured with `firefox`, `chrome` nodes; `update_translations.sh` updates `firefox` + `chrome`):
```sh
chmod +x update_translations.sh
./update_translations.sh
```
Update only one browser node:
```sh
./update_translations.sh --firefox-only
./update_translations.sh --chrome-only
```

After all is done: logout, login back (or reboot) and enable newly installed extension. Enjoy!

## License
This project is licensed under the GNU General Public License v2.0 (GPL-2.0).
See the `LICENSE` file for the full license text.
