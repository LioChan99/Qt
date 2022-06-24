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
    ListModel{
        id: modelList
        ListElement{ name: "one"; elementIndex: 1}
        ListElement{ name: "two"; elementIndex: 2}
        ListElement{ name: "three"; elementIndex: 3}
        ListElement{ name: "four"; elementIndex: 4}
    }
    ListView{
        model: modelList

        spacing: 2
        anchors.fill: parent
        delegate:Row{
            Rectangle{
            width:40; height: 200
            border.width: 1
            radius: 20
            gradient: Gradient {
                GradientStop { position: 0.0; color: "cyan"}
                GradientStop{ position: 1.0*(index+1)/20;color:"gray"}
            }
            Text{
                anchors.centerIn: parent
                color:"yellow"
                text: "%1 %2".arg(name).arg(elementIndex)
            }
        }
    }
 }
}
