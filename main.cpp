#include <QApplication>

#include "Application.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    ApplicationWindow* mw = new ApplicationWindow();
    mw->setWindowTitle(QObject::tr("Application OCC SAMPLE"));

    mw->show();

    return a.exec();
}
