#-------------------------------------------------
#
# Project created by QtCreator 2020-06-16T09:30:00
#
#-------------------------------------------------
QT += gui widgets svg x11extras dbus
TEMPLATE = lib
CONFIG += c++11 plugin link_pkgconfig
CONFIG -= app_bundle

PKGCONFIG += \
    glib-2.0 \
    gio-2.0 \
    gtk+-3.0 \
    gsettings-qt \
    libmatemixer

INCLUDEPATH += \
    $$PWD/../common

LIBS += \
    -lX11 -lXi

include($$PWD/../common/common.pri)
include($$PWD/../../common/common.pri)

DEFINES += QT_DEPRECATED_WARNINGS HAVE_X11_EXTENSIONS_XKB_H

SOURCES += \
        devicewindow.cpp     \
        mediakeysmanager.cpp \
        volumewindow.cpp \
        mediakey-plugin.cpp

HEADERS += \
    acme.h \
    devicewindow.h      \
    mediakeysmanager.h  \
    volumewindow.h \
    mediakey-plugin.h

FORMS += \
    devicewindow.ui \
    volumewindow.ui

DISTFILES += \
    media-keys.ukui-settings-plugin.in

media_keys_lib.path = $${PLUGIN_INSTALL_DIRS}
media_keys_lib.files = $$OUT_PWD/libmedia-keys.so

INSTALLS += media_keys_lib
