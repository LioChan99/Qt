
import QtQuick 2.12
import QtQuick.Window 2.12


Window {
    id: root
    width: 360
    height: 360
    visible: true
    x: 750; y:90

    QText
    {
        textRunning: false
        text: "<b>Hello</b> <i>World!</i>"
        //  text: "Hello World!"
        //  text: "Hello \nWorld"
    }

}
