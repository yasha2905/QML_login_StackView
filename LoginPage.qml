import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15
//import QtQuick.Window 2.15


ColumnLayout{
    id: loGeneral
    anchors.fill: parent
    anchors.margins: defMargin
    spacing: defMargin

    ColumnLayout{
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.minimumHeight: 200
        Layout.minimumWidth: 200

        Label{
            text: "Welcome to Application"
            font.pointSize: 14
            font.bold: true
        }
        Item {
            height: 20
        }

        Label{
            text: "Username"
        }
        TextField{
            placeholderText: "Enter your username"
            selectByMouse: true
            Layout.fillWidth: true
        }
        Label{
            text: "Password"
        }
        TextField{
            selectByMouse: true
            echoMode: TextInput.Password
            placeholderText: "Enter your password"
            Layout.fillWidth: true
        }

        Item {
            Layout.fillHeight: true
        }
        RowLayout{
            Item{
                Layout.fillWidth: true
            }
            Button{
                text: "Login"
                onClicked: {
                    stackView.push(page2)
                }
            }
        }
    }
}
