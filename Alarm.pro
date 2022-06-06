#-------------------------------------------------
#
# Project created by QtCreator 2011-07-26T08:36:08
#
#-------------------------------------------------

QT       += core gui widgets multimedia

TARGET = worldclock
TEMPLATE = app

SOURCES += main.cpp\
    mainwindow.cpp \
    filedelegate.cpp \
    world.cpp \
    dialog3.cpp \
    alsettings.cpp \
    tdialog.cpp \
    alarmsndpick.cpp \
    home.cpp \
    citydetail.cpp \
    utils.cpp \
    qalarmvaluebutton.cpp \
    qalarmtimevaluebutton.cpp \
    qalarmdatevaluebutton.cpp \
    qalarmdaysvaluebutton.cpp \
    qalarmdialog.cpp \
    qpushlabel.cpp \
    qalarmpushbutton.cpp \
    qalarmlabel.cpp \
    qnewalarmdialog.cpp \
    qalarmsoundvaluebutton.cpp \
    qalarmsnoozevaluebutton.cpp

HEADERS  += mainwindow.h \
    filedelegate.h \
    osso-intl.h \
    world.h \
    dialog3.h \
    alsettings.h \
    tdialog.h \
    alarmsndpick.h \
    home.h \
    Metrics.h \
    citydetail.h \
    utils.h \
    qalarmvaluebutton.h \
    qalarmtimevaluebutton.h \
    qalarmdatevaluebutton.h \
    qalarmdaysvaluebutton.h \
    qalarmdialog.h \
    qpushlabel.h \
    qalarmpushbutton.h \
    qalarmlabel.h \
    qnewalarmdialog.h \
    qalarmsoundvaluebutton.h \
    qalarmsnoozevaluebutton.h

FORMS    += mainwindow.ui \
    world.ui \
    dialog3.ui \
    alsettings.ui \
    mdialog.ui \
    alarmsndpick.ui \
    tdialog.ui \
    home.ui \
    citydetail.ui \
    newalarmdialog.ui

CONFIG += mobility
MOBILITY = 

CONFIG += link_pkgconfig
PKGCONFIG += gq-gconf alarm libcityinfo0-0

symbian {
    TARGET.UID3 = 0xeda884b4
    # TARGET.CAPABILITY += 
    TARGET.EPOCSTACKSIZE = 0x14000
    TARGET.EPOCHEAPSIZE = 0x020000 0x800000
}

unix {
   INSTALLS += target desktop
   target.path = $$PREFIX/bin
   desktop.path = $$PREFIX/share/applications/hildon
   desktop.files += worldclock.desktop
}

maemo5 {
    QT += maemo5 x11extras dbus
    LIBS += -ldl -ltime
    PKGCONFIG += libtime
    INSTALLS += service
    service.path = $$PREFIX/share/dbus-1/services
    service.files += com.nokia.worldclock.service
}

QMAKE_CXXFLAGS_RELEASE = $$(CXXFLAGS)
QMAKE_LFLAGS += $$(LDFLAGS)
