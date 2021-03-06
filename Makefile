all: modularize-script minify-script copy-style copy-variables

include ../../build/modules.mk

MODULE = datetimepicker
MODULARIZE_OPTIONS = -d "moment"

SOURCE_STYLE_FOLDER = src/less
SOURCE_STYLE_FILE_PREFIX = bootstrap-
SOURCE_STYLE_FILE_SUFFIX = .less
CSS_FILE_SUFFIX_UNCOMPRESSED = .less

SOURCE_SCRIPT_FOLDER = src/js
SOURCE_SCRIPT_FILE_PREFIX = bootstrap-

copy-variables:
	cp src/less/variables.less ${TARGET_STYLE_FOLDER}/variables.less
