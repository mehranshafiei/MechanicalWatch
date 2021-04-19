import QtQuick 2.0

Item {
    id: tickMark
        property alias angle: roatation.angle

    anchors.topMargin: parent.height / 100
    anchors.top: parent.top
    x: (parent.width / 2) - (width / 2)

    height: parent.radius / 2
    width: parent.width / 50
    antialiasing: true

    transform: Rotation {
        id: roatation
        origin.x: 0;
        origin.y: tickMark.height;
        angle: 0
    }

    Rectangle {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 10
        color: "silver"
    }
}
