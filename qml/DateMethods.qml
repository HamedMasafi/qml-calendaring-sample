import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import Qt.labs.settings 1.0


Item {
    function printResult() {
        var d = new Date;
        var locale = Qt.locale(textFieldLocale.text)
        var calendar = Qt.calendar(comboBoxCalendar.currentText)
        var formatString = textFieldFormat.text;
        var formatEnum = comboBoxFormatEnum.currentIndex;

        var out = ("<h1>" + textFieldLocale.text + " with " + comboBoxCalendar.currentText + " calendar</h1>");

        out += "Date.ctor(year, month, day):                           " + new Date(spinBoxYear.value, spinBoxMonth.value, spinBoxDay.value).toLocaleDateString(locale, formatString) + "<br />";
        out += "Date.ctor(calendar, year, month, day):                 " + new Date(calendar, spinBoxYear.value, spinBoxMonth.value, spinBoxDay.value).toLocaleDateString(locale, formatString) + "<br />";

        out += ("<h2>toLocaleString</h2>");
        out += ("Date.toLocaleString(locale):                          " + d.toLocaleString(locale) + "<br />");
        out += ("Date.toLocaleString(locale, formatString):            " + d.toLocaleString(locale, formatString) + "<br />");
        out += ("Date.toLocaleString(locale, formatEnum):              " + d.toLocaleString(locale, formatEnum) + "<br />");
        out += ("Date.toLocaleString(calendar):                        " + d.toLocaleString(calendar) + "<br />");
        out += ("Date.toLocaleString(calendar, locale):                " + d.toLocaleString(calendar, locale) + "<br />");
        out += ("Date.toLocaleString(calendar, formatString):          " + d.toLocaleString(calendar, formatString) + "<br />");
        out += ("Date.toLocaleString(calendar, formatEnum):            " + d.toLocaleString(calendar, formatEnum) + "<br />");
        out += ("Date.toLocaleString(calendar, locale, formatString):  " + d.toLocaleString(calendar, locale, formatString) + "<br />");
        out += ("Date.toLocaleString(calendar, locale, formatEnum):    " + d.toLocaleString(calendar, locale, formatEnum) + "<br />");

        out += ("<h2>toLocaleDateString</h2>" + "<br />");
        out += ("Date.toLocaleDateString(locale):                          " + d.toLocaleDateString(locale) + "<br />");
        out += ("Date.toLocaleDateString(locale, formatString):            " + d.toLocaleDateString(locale, formatString) + "<br />");
        out += ("Date.toLocaleDateString(locale, formatEnum):              " + d.toLocaleDateString(locale, formatEnum) + "<br />");
        out += ("Date.toLocaleDateString(calendar):                        " + d.toLocaleDateString(calendar) + "<br />");
        out += ("Date.toLocaleDateString(calendar, locale):                " + d.toLocaleDateString(calendar, locale) + "<br />");
        out += ("Date.toLocaleDateString(calendar, formatString):          " + d.toLocaleDateString(calendar, formatString) + "<br />");
        out += ("Date.toLocaleDateString(calendar, formatEnum):            " + d.toLocaleDateString(calendar, formatEnum) + "<br />");
        out += ("Date.toLocaleDateString(calendar, locale, formatString):  " + d.toLocaleDateString(calendar, locale, formatString) + "<br />");
        out += ("Date.toLocaleDateString(calendar, locale, formatEnum):    " + d.toLocaleDateString(calendar, locale, formatEnum) + "<br />");

        output.text = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">'
            + '<html><head><meta name="qrichtext" content="1" /><style type="text/css">'
            + 'p, li { white-space: pre-wrap; }'
            + '</style></head><body style=" font-family:\'Courier new\'; font-size:9pt; font-weight:400; font-style:normal;">'
            +'<p>'
            + out.replace(" ", "&nbsp;")
            + '</p></body></html>';
    }

    Settings{
        id: settings
        property alias locale: textFieldLocale.text
        property alias formatString: textFieldFormat.text
        property alias formatEnum: comboBoxFormatEnum.currentIndex
        property alias calendar: comboBoxCalendar.currentIndex
        property alias year: spinBoxYear.value
        property alias month: spinBoxMonth.value
        property alias day: spinBoxDay.value
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
                text: qsTr("Calendar:")
            }
            ComboBox{
                id: comboBoxCalendar
                model: [ "persian", "islamic", "gregory" ]
                Layout.fillWidth: true
            }
            Text {
                text: qsTr("Locale:")
            }
            TextField{
                id: textFieldLocale
                text: "fa-IR"
                Layout.fillWidth: true
            }
            Text {
                text: qsTr("Format:")
            }
            TextField{
                id: textFieldFormat
                text: "yyyy/MM/dd"
                Layout.fillWidth: true
            }
            Text {
                text: qsTr("Calendar:")
            }
            ComboBox{
                id: comboBoxFormatEnum
                model: [ "Locale.LongFormat", "Locale.ShortFormat", "Locale.NarrowFormat" ]
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
                onClicked: printResult()
            }
        }
        TextArea{
            id: output
            readOnly: true
            textFormat: TextEdit.RichText
            font.family: "Courier new"
//            wrapMode: TextEdit.NoWrap
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

}
