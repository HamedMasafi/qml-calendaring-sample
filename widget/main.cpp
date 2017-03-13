#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QLocale fa_IR(QLocale::Persian, QLocale::Iran);
    QLocale::setDefault(fa_IR);

    MainWindow w;
    w.show();

    return a.exec();
}
