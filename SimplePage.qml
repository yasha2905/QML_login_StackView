import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15


Page{ // root element for StackView
    id: root
    // lests create some basic functional for all pages

    property alias backgroundColor: backgroundRect.color
    property alias buttonText: navButton.text
    signal buttonClicked();

    background: Rectangle {
        id: backgroundRect
    }

    Button{
        id: navButton

        visible: text.length > 0 //if length > 0 -> make it visiable
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            root.buttonClicked()
        }
    }

       // attached signal
    Keys.onBackPressed:{
        popPage();

    }

    Keys.onEscapePressed: {
        popPage();
    }



}
