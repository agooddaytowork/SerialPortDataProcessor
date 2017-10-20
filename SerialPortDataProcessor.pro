QT += core sql network serialport
QT -= gui

CONFIG += c++11

TARGET = SerialPortDataProcessor
CONFIG += -std=c++11 console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    anLogger/src/anlogger.cpp \
    shared/abstractstatemachinebasis.cpp \
    shared/commonthings.cpp \
    shared/directtransition.cpp \
    BinaryProtocol/src/binaryprotocol.cpp \
    WindowProtocol/src/windowprotocol.cpp \
    SerialPortWorker/src/serialportworkerbasis.cpp \
    piLocalDBWorker/src/pilocaldbworkerbasis.cpp \
    src/serialportdataprocessor.cpp \
    src/serialportdataprocessorbasis.cpp \
    src/uninitiatedserialportdataprocessor.cpp \
    src/idleserialportdataprocessor.cpp \
    src/runningserialportdataprocessor.cpp \
    src/errorserialportdataprocessor.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    anLogger/src/anlogger.h \
    shared/abstractstatemachinebasis.h \
    shared/commonthings.h \
    shared/directtransition.h \
    BinaryProtocol/src/binaryprotocol.h \
    WindowProtocol/src/windowprotocol.h \
    SerialPortWorker/src/serialportworkerbasis.h \
    piLocalDBWorker/src/pilocaldbworkerbasis.h \
    src/serialportdataprocessor.h \
    src/serialportdataprocessorbasis.h \
    src/uninitiatedserialportdataprocessor.h \
    src/idleserialportdataprocessor.h \
    src/runningserialportdataprocessor.h \
    src/errorserialportdataprocessor.h
