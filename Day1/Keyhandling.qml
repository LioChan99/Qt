import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    id: root
    width: 360
    height: 360
    visible: true
     x:750; y:90
    title: qsTr("Hello World")
   // property int _RAD:20
    Item {
        focus: true
        Keys.onPressed: {
            if (event.key == Qt.Key_Left) {
                console.log("move left");
                event.accepted = true;
            }
        }
        Keys.onReturnPressed: console.log("Selected");
    }
}
