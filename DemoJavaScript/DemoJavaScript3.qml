import QtQuick 2.3
import QtQuick.Window 2.2
import "image"
import "DemoJavaScript.js" as Demo
Window {
    id: root
    visible: true
    width: 360
    height: 360
    x: 700; y: 90

    /*****************************/
    Rectangle{
        id: rect1
        width: 100; height: 100
        border.width: mouse1.pressed ?10:1
        color: "green"

    }
    MouseArea{
        id: mouse1
        anchors.fill: parent
        onClicked: {
            //body of signal handler
            Demo.doTest()
           setColor()
        }
    }
    //custom function
    function setColor(){
        rect1.color = Qt.rgba(1/255,23/255,13/255,233/255)
    }
}

