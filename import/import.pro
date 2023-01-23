TEMPLATE=lib

TARGET=amberwebauthorizationplugin
TARGET = $$qtLibraryTarget($$TARGET)

MODULENAME = Amber/Web/Authorization
TARGETPATH = $$[QT_INSTALL_QML]/$$MODULENAME

include(../defaults.pri)

CONFIG += plugin
QT += qml network

QMAKE_CXXFLAGS += -fPIC

INCLUDEPATH += . ../lib
LIBS += -L../lib -lamberwebauthorization

HEADERS += plugin.h
SOURCES += plugin.cpp
OTHER_FILES += qmldir plugins.qmltypes *.qml *.js

include(translations.pri)

import.files = qmldir plugins.qmltypes *.qml *.js
import.path = $$TARGETPATH
target.path = $$TARGETPATH

INSTALLS += target import translations_install engineering_english_install

qmltypes.commands = qmlplugindump -nonrelocatable Amber.Web.Authorization 1.0 > $$PWD/plugins.qmltypes
QMAKE_EXTRA_TARGETS += qmltypes
