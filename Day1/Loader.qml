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
    Loader{
        id: loader1
        source: "QCircle.qml"
        onItemChanged: {
            if(status==Loader.Ready){
                loader1.item.color="green"

            }
        }
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
           console.log(loader1.source)
            if(loader1.source== "QCircle.qml"){
                loader1.source="QText.qml"
            }else{
                loader1.source = "QCircle.qml"
             //loader1.item.color="green"
            }
        }
    }
}
