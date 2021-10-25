import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 600
    height: 400

    property alias title: title.text
    property alias subtitle: subtitle.text
    property alias imageSource: image.source

    Image {
        id: image
        y: 95
        width: 100
        height: 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        source: "qrc:/qtquickplugin/images/template_image.png"
        anchors.leftMargin: 80
        fillMode: Image.PreserveAspectFit
    }

    Label {
        id: title
        text: qsTr("Mr. X")
        anchors.left: image.right
        anchors.top: image.top
        font.pointSize: 40
        anchors.topMargin: 0
        anchors.leftMargin: 16
    }

    Label {
        id: subtitle
        text: qsTr("Homer J. Simpson")
        anchors.left: title.left
        anchors.top: title.bottom
        font.pointSize: 16
        anchors.topMargin: 8
        anchors.leftMargin: 0
    }
}
