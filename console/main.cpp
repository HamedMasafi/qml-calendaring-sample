#include <QtCore/QCoreApplication>
#include <QDate>
#include <QJalaliCalendar>
#include <QGregorianCalendar>
#include <QDebug>

#define PRINT(x) print(#x, x)

void print(const QString &title, const QString &value){
    auto n = 60 - title.length();
    qDebug() << title
             + "="
             + QString(n, ' ')
             + value;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QLocale fa_IR(QLocale::Persian, QLocale::Iran);
    QLocale fa_AF(QLocale::Persian, QLocale::Afghanistan);
    QLocale ru_RU(QLocale::Russian, QLocale::Russia);
    QJalaliCalendar jcal;
    QGregorianCalendar gcal;
    QDate date = QDate::currentDate();

    QDate persianDate(1395, 12, 18, jcal);
    PRINT(persianDate.toString(Qt::LocalDate));
    PRINT(QString::number(persianDate.year()));
    PRINT(date.toString("dddd dd MMMM yyyy", gcal));
    PRINT(date.toString("dddd dd MMMM yyyy", jcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",jcal));
    date = date.addDays(43);
    PRINT(date.toString("dddd dd MMMM yyyy", gcal));
    PRINT(date.toString("dddd dd MMMM yyyy", jcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",jcal));
    date = date.addDays(270);
    date = date.addYears(-11);
    qDebug() << "After +270 days - 11 year...";
    PRINT(date.toString("dddd dd MMMM yyyy", gcal));
    PRINT(date.toString("dddd dd MMMM yyyy", jcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_IR.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(fa_AF.toString(date,"dddd dd MMMM yyyy",jcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",gcal));
    PRINT(ru_RU.toString(date,"dddd dd MMMM yyyy",jcal));

    return 0;
}
