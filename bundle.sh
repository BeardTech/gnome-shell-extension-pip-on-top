UUID="pip-on-top@beardtech.github.com"
ZIPFILES="extension.js prefs.js metadata.json pip-title-matchers.json schemas LICENSE"

glib-compile-schemas ./schemas/
zip -qr "$UUID.zip" $ZIPFILES
