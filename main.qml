import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 600
    height: width
    visible: true

    Rectangle {
        id: face
        anchors.fill: parent
        color: "black"
        radius: width
        antialiasing: true

        // Create the twelve tick marks
        Repeater {
            model: 12
            TickMark {
                angle: 30 * index
            }
        }

        Rectangle
        {
            // TODO MS Needs a lot of refactoring
            id: secondsHand
            property real angle: roatation.angle

            color: "dark grey"
            anchors.top: parent.top
            width: parent.width / 100
            height: parent.height / 2
            x: (parent.width / 2) - width / 2

            transform: Rotation {
                id: roatation
                origin.x: 0;
                origin.y: secondsHand.height;
                angle: secondsHand.angle
            }
        }

        Timer {
            interval: 100; running: true; repeat: true
            onTriggered: {
                secondsHand.angle = secondsHand.angle + 1
            }
        }
    }
}
