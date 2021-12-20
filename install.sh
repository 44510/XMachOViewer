#!/bin/bash -x
export X_SOURCE_PATH=$PWD

cp -f $X_SOURCE_PATH/build/release/xmachoviewer                     /usr/bin/
cp -f $X_SOURCE_PATH/LINUX/xmachoviewer.desktop                    /usr/share/applications/
cp -Rf $X_SOURCE_PATH/LINUX/hicolor/                               /usr/share/icons/
cp -Rf $X_SOURCE_PATH/XStyles/qss/                                  /usr/lib/xmachoviewer/
mkdir -p  /usr/lib/translation/lang
cp -f $X_SOURCE_PATH/gui_source/translation/*.qm                    /usr/lib/xmachoviewer/lang/
mkdir -p  /usr/lib/xmachoviewer/signatures
cp -f $X_SOURCE_PATH/signatures/crypto.db                           /usr/lib/xmachoviewer/signatures/
