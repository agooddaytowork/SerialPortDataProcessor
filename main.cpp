#include <QCoreApplication>
#include <QThread>
#include "src/serialportdataprocessor.h"

int main(int argc, char *argv[])
{
    registerGlobalSignal;
    connectLocalQSqlDatabase;

    QCoreApplication a(argc, argv);

    SerialPortDataProcessor *testObj = new SerialPortDataProcessor(true);
    QThread *newThread = new QThread();

    testObj->moveToThread(newThread);
    QObject::connect(newThread, &QThread::started, testObj, &SerialPortDataProcessor::start);

    newThread->start();

    return a.exec();
}
