#!/usr/bin/bash
DOCBOOK_PATH=/usr/share/sgml/docbook/xsl-stylesheets/html/chunk.xsl
rm -r ./output/
mkdir -p ./output/
mkdir -p ./output/en/
ln -s ../../en/img ./output/en/img
xsltproc --xinclude --stringparam base.dir ./output/en/html/ $DOCBOOK_PATH ./en/src/book.xml
