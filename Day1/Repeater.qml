import QtQuick 2.3
import QtQuick.Window 2.2
import "image"
Window {
    id: root
    width: 360
    height: 360
    visible: true
     x:750; y:90
    title: qsTr("Hello World")
    Column{
        Rectangle{width: 10;height: 20;color: "red"}
        Repeater{
            model: 10
            Rectangle{width: 20;height: 20;radius: 10;color:"green"}
        }
        Rectangle{width: 10;height: 20;color: "blue"}
    }
}
