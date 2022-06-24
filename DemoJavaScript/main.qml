import QtQuick 2.3
import QtQuick.Window 2.2
import "image"
Window {
    id: root
    visible: true
    width: 360
    height: 360
    x: 700; y: 90

    Loader{
        id: loader1
        source: "DelegateContent.qml"
        Connections{
            target: loader1.item
            onDataOutput:{
                console.log(dat)
            }
        }
    }
    Loader{
        id: loader2
        source: "DelegateContent2.qml"
        Connections{
            target: loader2.item
            onDataOutput:{
                console.log(dat)
            }
        }
    }



    property int cnt: 0
    MouseArea{
        anchors.fill:parent
        onClicked: {
            if(cnt%2){
                console.log("run loader 1 item func")
                loader1.item.funtionTest()
            }else{
                console.log("run loader 2 item func")
                loader2.item.funtionTest()
            }
            cnt++
        }
    }
/********************************************/
    //    function abcd(){
    //        console.log("abcd")
    //    }
    //    DelegateContent2{
    //        id: com2
    //    }

    //    MouseArea{
    //        anchors.fill:parent
    //        onClicked: {
    //            com2.functionTest2()
    //        }
    //    }

}

