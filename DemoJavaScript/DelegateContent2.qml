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


    Text {
        id: text1
        anchors.verticalCenter: parent.verticalCenter
        font{
            pixelSize: 20
            bold: true
        }

    }
    function funtionTest(){

        console.log("reslut: ",FactorialCalculator.factorialCallCount())
        return 1000000000
    }
    function functionTest2(){
        abcd()
    }

}

