DEFINES += USE_IRRLICHT=1
DEFINES += _IRR_STATIC_LIB_

macx {
	INCLUDEPATH += /usr/local/include/irrlicht
	LIBS += -L${/usr/local/lib -lIrrlicht -framework Cocoa
}
else:win32 {
	INCLUDEPATH += $$PWD/include
	HEADERS += $$PWD/include/*.h
	
        LIBS += -L$$PWD/lib
	CONFIG(debug, debug|release) {
                LIBS += -lIrrlichtd
	}
	CONFIG(release, debug|release) {
                LIBS += -lIrrlicht
	}

	LIBS += -lkernel32
	LIBS += -lgdi32
	LIBS += -ladvapi32
	LIBS += -luser32
	LIBS += -lshell32
	LIBS += -luuid
	LIBS += -lSetupAPI
	LIBS += -lole32
	LIBS += -loleaut32
	LIBS += -lComCtl32
	LIBS += -lopengl32
	LIBS += -lglu32
        LIBS += -lwinmm
}

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.10
QMAKE_MAC_SDK = macosx10.11
