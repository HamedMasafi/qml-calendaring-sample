import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import Qt.labs.settings 1.0

Item {
    Settings{
        id: settingsConvert
        property alias calendarFrom: comboBoxCalendarFrom.currentIndex
        property alias calendarTo: comboBoxCalendarTo.currentIndex
        property alias year2: spinBoxYear.value
        property alias month2: spinBoxMonth.value
        property alias day2: spinBoxDay.value
    }

    ColumnLayout{
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent

        GridLayout{
            columns: 2
            Text {
                text: qsTr("From:")
            }
            ComboBox{
                id: comboBoxCalendarFrom
                model: [ "persian", "islamic", "gregory" ]
                Layout.fillWidth: true
            }
            Text {
                text: qsTr("To:")
            }
            ComboBox{
                id: comboBoxCalendarTo
                model: [ "persian", "islamic", "gregory" ]
                Layout.fillWidth: true
            }
            Text {
                text: qsTr("Date:")
            }
            RowLayout{
                SpinBox{
                    id: spinBoxYear
                    minimumValue: 1
                    maximumValue: 5000
                    width: 80
                }
                SpinBox{
                    id: spinBoxMonth
                    maximumValue: 12
                    minimumValue: 1
                    width: 60
                }
                SpinBox{
                    id: spinBoxDay
                    maximumValue: 31
                    minimumValue: 1
                    width: 40
                }
            }

            Button{
                text: "Process"
                onClicked: {
                    var date = new Date(Qt.calendar(comboBoxCalendarFrom.currentText),
                                    spinBoxYear.value, spinBoxMonth.value, spinBoxDay.value);

                    result.text = date.toLocaleString(Qt.calendar(comboBoxCalendarTo.currentText), "yyyy-MM-dd");

                }
            }
        }
        Text {
            id: result
        }
        Item {
            Layout.fillHeight: true
        }
    }
}
