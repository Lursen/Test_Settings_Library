QT += widgets
requires(qtConfig(combobox))

HEADERS     = dialog.h \
    database.h \
    result.h \
    settings.h \
    sqlite3.h \
    statement.h
SOURCES     = dialog.cpp \
              database.cpp \
              main.cpp \
              result.cpp \
              settings.cpp \
              sqlite3.c \
              statement.cpp

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/layouts/dynamiclayouts
INSTALLS += target
