
import QtQuick 2.0

Text
{
    id: root
    property bool textRunning: false
    text: qsTr("text")
    font.pixelSize: 10

    NumberAnimation
    {
        target: root;
        running: textRunning
        loops: Animation.Infinite
        property: "x"
        from: 0; to: 50;
        duration: 1000
    }

}
