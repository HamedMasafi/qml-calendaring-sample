#include <QtCore/qglobal.h>
#if QT_VERSION >= 0x050000
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#else
#endif
#include <QLocale>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

//    QLocale fa_IR(QLocale::Persian, QLocale::Iran);
//    QLocale::setDefault(fa_IR);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
