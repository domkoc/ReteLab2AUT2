import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 600
    height: 400

    property alias button: button
    property alias username: userNameTextField.text
    property alias password: passwordTextField.text

    Label {
        id: label
        x: 115
        text: qsTr("Melmac Friends")
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
        font.pointSize: 55
        font.styleName: "Regular"
        font.weight: Font.ExtraLight
    }

    ColumnLayout {
        id: columnLayout
        x: 123
        width: 250
        height: 100
        anchors.top: label.bottom
        layoutDirection: Qt.LeftToRight
        spacing: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 51

        Label {
            id: label1
            text: qsTr("User name")
        }

        TextField {
            id: userNameTextField
            placeholderText: qsTr("Text Field")
        }

        Label {
            id: label2
            text: qsTr("Password")
        }

        TextField {
            id: passwordTextField
            echoMode: TextInput.Password
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button
            text: qsTr("Login")
        }
    }
}
