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

        Repeater {
            model: 12
            TickMark {
                angle: 30 * index
            }
        }
    }
}
