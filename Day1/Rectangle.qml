
import QtQuick 2.3
import QtQuick.Window 2.2


Window {
    width: 360
    height: 360
    visible: true
    x:750; y:90
    property int _RAD: 20
    Rectangle
    {
        id: bground
        anchors.fill: parent
        color: "gray"; opacity: 0.5
    }
    Rectangle
    {
        id: rect1
        width: 200; height: 200
        color: "green"
//        LayoutMirroring.enabled: true
//        LayoutMirroring.childrenInherit: true
        radius: _RAD
//        border.width: 1
//        border.color: "black"
//        clip:  true

        QCircle
        {
            radius: _RAD
            //  label: "1"
            anchors.left: parent.left
        }

        QCircle
        {
            radius: _RAD
            //  label: "2"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
        }

        QCircle
        {
            radius: _RAD
            //  label: "3"
            anchors.right: parent.right
            //  x: 100 -10
        }

        QCircle
        {
            radius: _RAD
            //  label: "4"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            //  x: 100 -10
        }
    }


}

