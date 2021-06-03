TEMPLATE = app
TARGET = amberwebauthcppexample
TARGETPATH = /usr/bin/
target.path = $$TARGETPATH

CONFIG += qt
QT += gui network

# normally, clients would do the following:
#CONFIG += link_pkgconfig
#PKGCONFIG += amberwebauthorization

# but we are building this example in tree, so instead we do:
INCLUDEPATH += . ../../lib
LIBS += -L../../lib -lamberwebauthorization

SOURCES += main.cpp
INSTALLS += target
