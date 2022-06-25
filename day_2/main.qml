import QtQuick 2.6
import QtQuick.Controls 2.0
import io.qt.examples.backend 1.0

ApplicationWindow {
    id: root
    width: 300
    height: 480
    visible: true

    Backend {
        id: backend
    }

    TextField {
        text: backend.userName
        placeholderText: qsTr("User name")
        anchors.centerIn: parent

        onEditingFinished: backend.userName = text
    }

    Text
    {
        x: 100; y:30
        text: backend.userName
        font.pixelSize: 20
    }
}
