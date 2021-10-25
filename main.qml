import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        Connections {
            target: networkManager
            onLoginSuccess: {
                swipeView.currentIndex = 1
                page2.imageSource = imageSource
                page2.title = title
                page2.subtitle = subtitle
            }
        }

        Page1 {
            objectName: "page1Object"
        }

        Page2 {
            id:page2
        }
    }
}
