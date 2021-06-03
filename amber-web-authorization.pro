TEMPLATE=subdirs
SUBDIRS+=lib import examples doc

import.depends = lib
examples.depends = lib
doc.depends = lib

OTHER_FILES += \
    $$PWD/rpm/amber-web-authorization.spec \
    $$PWD/LICENSE \
    $$PWD/README.md
