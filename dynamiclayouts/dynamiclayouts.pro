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

#INCLUDEPATH += $$PWD/settings_library/include
#DEPENDPATH += $$PWD/settings_library/include
#LIBS += $$PWD/settings_lib.lib


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/settings_library/ -lsettings_lib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/settings_library/ -lsettings_libd
else:unix: LIBS += -L$$PWD/settings_library/ -lsettings_lib

INCLUDEPATH += $$PWD/settings_library/include
DEPENDPATH += $$PWD/settings_library/include
