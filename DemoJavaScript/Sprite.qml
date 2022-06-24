import QtQuick 2.0

Rectangle {
    width: 100
    height: 100
    color: "black"
    Text {
        font.pixelSize: 15
        anchors.centerIn: parent
        color: "white"
        text: "%1\n%2".arg(parent.x).arg(parent.y)
    }
}

