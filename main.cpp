#include <QApplication>

#include "Application.h"
#include <QTranslator>

#include "Translate.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);


    QString resDir = ApplicationCommonWindow::getResourceDir();
//    QString resTutDir = ApplicationTut::getTutResourceDir();


    QTranslator strTrans( 0 );
    Standard_Boolean isOK = strTrans.load( "Common-string", resDir );
    if( isOK )
      a.installTranslator( &strTrans );

    QTranslator iconTrans( 0 );
    isOK = iconTrans.load( "Common-icon", resDir );
    if( isOK )
      a.installTranslator( &iconTrans );

    QTranslator interfaceTrans(0);
    isOK = interfaceTrans.load( "Interface-string", resDir );
    if( isOK )
      a.installTranslator( &interfaceTrans );



    ApplicationWindow* mw = new ApplicationWindow();    
    mw->setWindowTitle(QObject::tr("Application OCC SAMPLE"));



    mw->show();

    return a.exec();
}
