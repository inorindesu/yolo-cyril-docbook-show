#!/usr/bin/bash
DOCBOOK_PATH=/usr/share/sgml/docbook/xsl-stylesheets/html/chunk.xsl
rm -r ./output/
mkdir -p ./output/
mkdir -p ./output/en/ ./output/zh_tw/ ./output/zh_tw_new/
ln -s ../../en/img ./output/en/img
ln -s ../../zh_tw/img ./output/zh_tw/img
ln -s ../../zh_tw/img ./output/zh_tw_new/img
xsltproc --xinclude --stringparam base.dir ./output/en/html/ $DOCBOOK_PATH ./en/src/book.xml
xsltproc --xinclude --stringparam base.dir ./output/zh_tw/html/ $DOCBOOK_PATH ./zh_tw/src/book.xml
xsltproc --xinclude ./translation/customLayer.xsl ./zh_tw/src/book.xml
