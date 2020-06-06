QT += widgets multimedia


CONFIG += c++17


SOURCES += \
        Application.cpp \
        OptionsWidget.cpp \
        RecorderWidget.cpp \
        RecordingsManagerWidget.cpp \
        AudioRecorder.cpp \
        CustomWidgets/DirectJumpSlider.cpp \
        CustomWidgets/DevicesComboBox.cpp \
        main.cpp

HEADERS += \
        Application.h \
        OptionsWidget.h \
        RecorderWidget.h \
        RecordingsManagerWidget.h \
        AudioRecorder.h \
        CustomWidgets/DirectJumpSlider.h \
        CustomWidgets/DevicesComboBox.h

RC_FILE = resources.rc


LIBS += -LC:/SFML/lib

#Release Configuration
CONFIG(release, debug|release):
{
#Audio Related Libs
LIBS += -lsfml-audio          #SFML Dynamic Module
LIBS += -lopenal32              #Dependency
LIBS += -lFLAC                  #Dependency
LIBS += -lvorbisenc             #Dependency
LIBS += -lvorbisfile            #Dependency
LIBS += -lvorbis                #Dependency
LIBS += -logg                   #Dependency

#SFML-Graphics Libs
LIBS += -lsfml-graphics       #SFML Dynamic Module
LIBS += -lfreetype              #Dependency

#SFML-Network Libs
LIBS += -lsfml-network        #SFML Dynamic Module
LIBS += -lws2_32                #Dependency

#SFML-Window Libs
LIBS += -lsfml-window         #SFML Dynamic Module
LIBS += -lopengl32              #Dependency
LIBS += -lgdi32                 #Dependency

#SFML-System Libs
LIBS += -lsfml-system         #SFML Dynamic Module
LIBS += -lwinmm                 #Dependency
}

INCLUDEPATH += C:/SFML/include
DEPENDPATH += C:/SFML/include


TRANSLATIONS = mrecorder_fr.ts
