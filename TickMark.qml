import QtQuick 2.0

Item {
    id: root
    property real angle: roatation.angle

    // This margin is the margin between the inner-most part
    // of the tickmark and face circle
//    anchors.topMargin: parent.height / 100

    anchors.top: parent.top
    x: (parent.width / 2) - (width / 2)

    height: parent.radius / 2
    width: parent.width / 50
    antialiasing: true

    transform: Rotation {
        id: roatation
        origin.x: 0;
        origin.y: root.height;
        angle: root.angle
    }

    Rectangle {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 10
        color: "silver"
    }
}
