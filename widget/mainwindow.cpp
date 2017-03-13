#include "mainwindow.h"

#include <QJalaliCalendar>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent)
{
    setupUi(this);

    QLocale fa_IR(QLocale::Persian, QLocale::Iran);
    calendarWidget->setLocale(fa_IR);
    QJalaliCalendar jcal;
    calendarWidget->setCalendar(jcal);
}

void MainWindow::changeEvent(QEvent *e)
{
    QMainWindow::changeEvent(e);
    switch (e->type()) {
    case QEvent::LanguageChange:
        retranslateUi(this);
        break;
    default:
        break;
    }
}
