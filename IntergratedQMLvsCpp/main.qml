import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12// have to pay ->use QtQuick
//import Monty 1.0
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    /*BackEnd{
        id: myclass
    }*/

    Button{
        id: myButton
        anchors.centerIn: parent
        text: "Click Me"
         onClicked: classA.someVar= "Loi"
       // onClicked: myclass.callMe()
        //  onClicked: myclass.setSomeVar("ABC")
    }

    Text{
        id: myLabel
        anchors{
            top: parent.top
            horizontalCenter: parent.horizontalCenter
            topMargin: 20
        }
        font.pixelSize: 24
        text: classA.someVar
    }
}
