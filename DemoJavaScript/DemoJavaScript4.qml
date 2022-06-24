import QtQuick 2.3
import QtQuick.Window 2.2
import "CommonFunc.js" as Logic

Window {
    id: root
    visible: true
    width: 360
    height: 360
    x: 700; y: 90

    Rectangle {
        id: rect
        width: 200
        height: 100
        color: "red"
        MouseArea {
            id: mousearea
            anchors.fill: parent
            onClicked: {
             Logic.onClicked(rect)

            }
        }
    }
}

