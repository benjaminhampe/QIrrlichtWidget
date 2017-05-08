TARGET = QIrrlichtWidget

TEMPLATE = app
QT += core gui widgets opengl network
CONFIG += windows

#  console c++11

include ( lib/res/res.pri )
include ( lib/libIrrlicht-1.8.4-mingw530/libIrrlicht-1.8.4-mingw530.pri )
include ( lib/libTinyXML2/libTinyXML2.pri )

HEADERS += \ 
    QIrrlichtWidget_2016.h \
    Window.h

SOURCES += \ 
    QIrrlichtWidget_2016.cpp \
    Window.cpp \
    main.cpp

### Debug version
CONFIG(debug, debug|release) {
	OBJECTS_DIR = $$PWD/obj/$$TARGET/debug
	MOC_DIR = $$PWD/obj/$$TARGET/debug/moc
	RCC_DIR = $$PWD/obj/$$TARGET/debug/qrc
	UI_DIR = $$PWD/obj/$$TARGET/debug/ui
	DESTDIR = $$PWD/bin/Win32-mingw530-Debug
}
	
### Release version
CONFIG(release, debug|release) {
	OBJECTS_DIR = $$PWD/obj/$$TARGET/release
	MOC_DIR = $$PWD/obj/$$TARGET/release/moc
	RCC_DIR = $$PWD/obj/$$TARGET/release/qrc
	UI_DIR = $$PWD/obj/$$TARGET/release/ui
	DESTDIR = $$PWD/bin/Win32-mingw530
}

