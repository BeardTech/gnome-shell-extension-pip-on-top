UUID := pip-on-top@beardtech.github.com
ZIP := $(UUID).shell-extension.zip
SCHEMAS_DIR := schemas
SOURCES := extension.js prefs.js metadata.json pip-title-matchers.json LICENSE

.PHONY: all zip schemas clean

all: zip

schemas:
	glib-compile-schemas $(SCHEMAS_DIR)

zip: schemas
	rm -f $(ZIP)
	zip -qr $(ZIP) $(SOURCES) $(SCHEMAS_DIR)
	@echo "Created $(ZIP)"

clean:
	rm -f $(ZIP) $(SCHEMAS_DIR)/gschemas.compiled
