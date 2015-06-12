#-------------------------------------------------
#
# Project created by QtCreator 2015-06-11T10:47:26
#
#-------------------------------------------------

QT       += core gui x11extras opengl


TARGET = Interface
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    Application.cxx \
    ApplicationCommon.cxx \
    DocumentCommon.cxx \
    Material.cxx \
    MDIWindow.cxx \
    Translate.cxx \
    Transparency.cxx \
    View.cxx

DISTFILES += \
    Interface.pro.user \
    Common-icon.ts \
    Common-string.ts \
    Interface-string.ts

HEADERS += \
    Application.h \
    ApplicationCommon.h \
    CommonSample.h \
    DocumentCommon.h \
    IESample.h \
    Material.h \
    MDIWindow.h \
    Translate.h \
    Transparency.h \
    View.h

DEFINES += CSFDB

INCLUDEPATH += /usr/include/oce

LIBS += -L/usr/lib64/oce -lTKernel -lPTKernel -lTKMath -lTKService -lTKV3d -lTKOpenGl \
        -lTKBRep -lTKIGES -lTKSTL -lTKVRML -lTKSTEP -lTKSTEPAttr -lTKSTEP209 \
        -lTKSTEPBase -lTKShapeSchema -lTKGeomBase -lTKGeomAlgo -lTKG3d -lTKG2d \
        -lTKXSBase -lTKPShape -lTKShHealing -lTKHLR -lTKTopAlgo -lTKMesh -lTKPrim \
        -lTKCDF -lTKBool -lTKBO -lTKFillet -lTKOffset \
        -lX11 \
        #-lfreeimage
