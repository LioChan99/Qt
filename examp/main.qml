import QtQuick 2.3
import QtQuick.Window 2.2
//import "image"
Window {
    //id: root
    width: 360
    height: 360
    visible: true
     x:750; y:90
    title: qsTr("Hello World")
    Text{
        id: root
        property bool textRunning: true
        text:qsTr("text")
        font.pixelSize: 20

        NumberAnimation {
            target: root;
            running: textRunning
            loops: Animation.Infinite
            property: "x";
            from: 0; to: 50;
            duration: 1000
            }
        }
   }








