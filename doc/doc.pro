TEMPLATE = aux

CONFIG += mer-qdoc-template
MER_QDOC.project = amber-web-authorization
MER_QDOC.config = amber-web-authorization.qdocconf
MER_QDOC.style = offline
MER_QDOC.path = /usr/share/doc/amber-web-authorization/

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
