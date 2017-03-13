import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import Qt.labs.settings 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    TabView{
        anchors.rightMargin: 9
        anchors.leftMargin: 9
        anchors.bottomMargin: 9
        anchors.topMargin: 9
        anchors.fill: parent
        Tab{
            title: "Date convert"
            DateConvert {}
        }
        Tab{
            title: "Date methods"
            DateMethods {}
        }
        Tab{
            title: "Calendar view"
            CalendarView {}
        }
    }
}
