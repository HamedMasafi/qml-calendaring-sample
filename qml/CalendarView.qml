import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1

Item {
    ColumnLayout{
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent

        GridLayout{
            columns: 2
            Text {
                text: qsTr("Calendar:")
            }
            ComboBox{
                id: comboBoxCalendar
                model: [ "persian", "islamic", "gregory" ]
                Layout.fillWidth: true
            }
        }

        Calendar{
            Layout.fillWidth: true
            Layout.fillHeight: true
            locale: Qt.locale("fa_IR")
            calendar: Qt.calendar(comboBoxCalendar.currentText)
        }
    }
}
