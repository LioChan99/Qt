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
   // property int _RAD:20
  Image{
      id: icol
      anchors.centerIn: parent
      source: mouseA1.pressed?"image/1.jpg":"image/2.jpg"
      Rectangle{
                      anchors.fill: parent; color: "transparent";border.width: 1
                  }
  }
      Image{
          id: ico2
          anchors{
              horizontalCenter: icol.horizontalCenter
              bottom: icol.top; bottomMargin: 5
          }
          source: mouseA1.pressed?"image/1.jpg":"image/2.jpg"
          Rectangle{
                          anchors.fill: parent; color:"transparent";
                      }
      }
          MouseArea{
              id: mouseA1
              anchors.fill: parent
          }
      }


