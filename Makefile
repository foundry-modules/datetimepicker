all: join-script-files modularize-script minify-script copy-style

include ../../build/modules.mk

MODULE = datetimepicker
MODULARIZE_OPTIONS = -d "moment"

SOURCE_STYLE_FOLDER = src/less
SOURCE_STYLE_FILE_PREFIX = bootstrap-
SOURCE_STYLE_FILE_SUFFIX = .less
CSS_FILE_SUFFIX_UNCOMPRESSED = .less

SOURCE_SCRIPT_FOLDER = src/js
SOURCE_SCRIPT_FILES = \
		${SOURCE_SCRIPT_FOLDER}/bootstrap-datetimepicker.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ar-ma.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ar.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.bg.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.br.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.bs.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.by.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ca.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.cs.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.cv.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.da.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.de.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.el.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.en-au.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.en-ca.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.en-gb.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.eo.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.es.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.et.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.eu.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.fa.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.fi.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.fr-ca.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.fr.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.gl.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.he.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.hi.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.hr.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.hu.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.id.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.is.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.it.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ja.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ka.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ko.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.lt.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.lv.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ml.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.mr.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ms-my.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.nb.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ne.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.nl.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.nn.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.pl.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.pt-BR.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.pt.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ro.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.ru.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.sk.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.sl.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.sq.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.sv.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.th.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.tr.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.tzm-la.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.tzm.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.uk.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.uz.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.vn.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.zh-CN.js \
		${SOURCE_SCRIPT_FOLDER}/locales/bootstrap-datetimepicker.zh-TW.js