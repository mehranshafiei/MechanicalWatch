import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: 600
    visible: true

    Rectangle {
        id: face
        anchors.fill: parent
        color: "black"
        radius: width
        antialiasing: true

        Item {
            anchors.topMargin: parent.height / 100
            anchors.top: parent.top
            x: (parent.width / 2) - (width / 2)

            height: parent.radius / 2
            width: face.width / 50
            antialiasing: true

            Rectangle {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: parent.height / 10
                color: "silver"
            }

        }
    }
}
