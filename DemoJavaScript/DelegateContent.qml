import QtQuick 2.0
import "factorial.js" as FactorialCalculator
Rectangle{
    width: 100
    height: 62
    radius: 15
    signal dataOutput(var dat)
    color: "transparent"
    property int delegateIndex: -1
    property alias label: text1.text

    Image{
        id: ico
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
        }
    }
    Text {
        id: text1
        anchors{
            left:ico.right;  leftMargin: 5
            verticalCenter: parent.verticalCenter
        }
        font{
            pixelSize: 20
            bold: true
        }

    }
    function funtionTest(){
        console.log(arguments.length );
        FactorialCalculator.factorial(2)
    }
}

