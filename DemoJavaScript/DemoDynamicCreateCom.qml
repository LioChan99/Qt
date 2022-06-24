import QtQuick 2.3
import QtQuick.Window 2.2
import "componentCreation.js" as MyScript

Window {
    id: root
    visible: true
    width: 360
    height: 360
    x: 700; y: 90

    Rectangle {
        id: appWindow
        width: 300; height: 300

        Component.onCompleted: MyScript.createSpriteObjects();
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
                               root,
                               "");
            appWindow.destroy()
        }
    }

}

