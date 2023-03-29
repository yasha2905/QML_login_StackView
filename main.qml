import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15
//import QtQuick.Window 2.15


ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("StackViewTest")

    property int defMargin: 10

    header: ToolBar {
        height: 50
        ToolButton{
            id: btnBack
            visible: stackView.depth > 1 // means to hide if we are on 1st page
            text: "<"
            anchors.verticalCenter: parent.verticalCenter
            onClicked: {
                popPage();
            }
        }
        Text {
            anchors.centerIn: parent
            font.pointSize: 16
            text: stackView.currentItem.title
        }

    }

    function popPage() {
        stackView.pop();
    }


    StackView{
        id: stackView
        anchors.fill: parent
        initialItem: page1 // show only first

    }

    SimplePage {
        id: page1
//        backgroundColor: "red"
        title: "Login"
//        buttonText: "next"
//        onButtonClicked: {
//            stackView.push(page2) // adding new page
//        }


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

    }

    SimplePage {
        id: page2
        visible: false // lets only page1 is visibile
//        backgroundColor: "blue"
        title: "Main page"
         buttonText: "LogOut"
         onButtonClicked: {
             stackView.pop(page1) // pop page (back)
         }
    }



}



