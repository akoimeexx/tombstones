PACK_NAME := Tombstones
SOURCE_DIR := .
BUILD_DIR := build
ZIPPED_DATAPACK := $(PACK_NAME).datapack.zip

.DEFAULT_GOAL := package

package:
	@mkdir -p $(BUILD_DIR)
	@echo "Packaging the datapack..."
	@zip -FSr $(BUILD_DIR)/$(ZIPPED_DATAPACK) $(SOURCE_DIR) -x "*.DS_Store" "*.gitignore" "Makefile" "*.git/*" "*assets/*" "$(BUILD_DIR)/*"
	@echo "Packaged datapack into $(BUILD_DIR)/$(ZIPPED_DATAPACK)."

clean:
	@echo "Cleaning up build directory..."
	@rm -rf $(BUILD_DIR)
	@echo "Clean up completed."

help:
	@echo "Makefile targets:"
	@echo "  package   - Package the datapack into a zip file"
	@echo "  clean     - Clean the build directory"
	@echo "  help      - Show this help message"
