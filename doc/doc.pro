TEMPLATE = aux

CONFIG += sailfish-qdoc-template
SAILFISH_QDOC.project = amber-web-authorization
SAILFISH_QDOC.config = amber-web-authorization.qdocconf
SAILFISH_QDOC.style = offline
SAILFISH_QDOC.path = /usr/share/doc/amber-web-authorization/

OTHER_FILES += \
    $$PWD/amber-web-authorization.qdocconf \
    $$PWD/amber-web-authorization.cpp \
    $$PWD/amber-web-authorization-oauth1.qdoc \
    $$PWD/amber-web-authorization-oauth10a.qdoc \
    $$PWD/amber-web-authorization-oauth2.qdoc \
    $$PWD/amber-web-authorization-oauth2acpkce.qdoc \
    $$PWD/amber-web-authorization-oauth2ac.qdoc \
    $$PWD/amber-web-authorization-oauth2implicit.qdoc \
    $$PWD/index.qdoc
