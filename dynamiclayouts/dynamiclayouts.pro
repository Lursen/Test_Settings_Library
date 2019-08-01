QT += widgets
requires(qtConfig(combobox))

HEADERS     = dialog.h

SOURCES     = dialog.cpp \
              main.cpp


# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/layouts/dynamiclayouts
INSTALLS += target

DISTFILES += \
    CMakeLists.txt

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lsettings_lib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lsettings_libd
else:unix: LIBS += -L$$PWD/lib/ -lsettings_lib

INCLUDEPATH += $$PWD/lib/settings_library
DEPENDPATH += $$PWD/lib/settings_library

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/ -lSQLite3
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/ -lSQLite3d
else:unix: LIBS += -L$$PWD/lib/ -lSQLite3

INCLUDEPATH += $$PWD/lib/settings_library
DEPENDPATH += $$PWD/lib/settings_library
