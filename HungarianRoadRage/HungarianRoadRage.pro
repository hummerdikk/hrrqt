#-------------------------------------------------
#
# Project created by QtCreator 2013-10-11T12:34:59
#
#-------------------------------------------------
cache();
QT       += core gui network

QT += widgets
QT += opengl

TARGET = HungarianRoadRage
TEMPLATE = app

CONFIG += c++11
CONFIG += thread
CONFIG += debug

#OS X config
macx:CONFIG += OSXMACHINE

OSXMACHINE {

    message("***Using settings for Mac OS X***")

    #To copy images directory
    APP_IMAGE_FILES.files = images
    APP_IMAGE_FILES.path = Contents/MacOS/debug
    APP_ROAD_FILES.files = roads
    APP_ROAD_FILES.path = Contents/MacOS/debug

    QMAKE_BUNDLE_DATA += APP_IMAGE_FILES
    QMAKE_BUNDLE_DATA += APP_ROAD_FILES

    INCLUDEPATH += /opt/local/include

    LIBS += -L/opt/local/lib \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc \
#        -lopencv_objdetect \
#        -lopencv_contrib \
#        -lopencv_calib3d \
#        -lopencv_features2d \
#        -lopencv_flann \
#        -lopencv_gpu \
#        -lopencv_legacy \
#        -lopencv_nonfree \
#        -lopencv_ml \
#        -lopencv_photo \
        -lopencv_video \
#        -lopencv_videostab \
#        -lopencv_stitching \
#        -lopencv_superres \
#        -lopencv_ts

    QMAKE_CXXFLAGS += -std=c++11 -stdlib=libc++ -mmacosx-version-min=10.7
    LIBS += -stdlib=libc++ -mmacosx-version-min=10.7

    ICON = icon.ico
}

#Windows config
win32:CONFIG += WINDOWSMACHINE

WINDOWSMACHINE{

    message("***Using settings for Windows***")

    #To copy images directory
    APP_IMAGE_FILES.files = images
    APP_IMAGE_FILES.path = def

    APP_ROAD_FILES.files = roads
    APP_ROAD_FILES.path = def

    QMAKE_BUNDLE_DATA += APP_IMAGE_FILES
    QMAKE_BUNDLE_DATA += APP_ROAD_FILES

    RC_FILE = HungarianRoadRage.rc

    INCLUDEPATH += C://OpenCV//OpenCV_bin//install//include
    LIBS += C://OpenCV//OpenCV_bin//bin//*.dll
}

#Other files:

SOURCES += main.cpp\
        mainwindow.cpp\
    imageprocesser.cpp \
    network.cpp \
    debugwindow.cpp \
    road.cpp \
    car.cpp \
    pothole.cpp \
    roadgenerator.cpp \
    startview.cpp

HEADERS  += mainwindow.h\
    imageprocesser.h \
    network.h \
    debugwindow.h \
    road.h \
    car.h \
    settings.h \
    pothole.h \
    roadgenerator.h \
    startview.h

FORMS    += mainwindow.ui \
    raceroadwidget.ui \
    debugwindow.ui \
    startview.ui

OTHER_FILES += images/*
OTHER_FILES += roads/*

# Megjegyzesek:
# Amiket kikommenteltem az OS X konfigban, azok nem kellenek egyelore, windows-nal is szerkesszetek be
# a *.dll helyett mindig azokat a LIB-eket csak, amik kellenek. Felesleges dolgokat ne forgassunk bele
