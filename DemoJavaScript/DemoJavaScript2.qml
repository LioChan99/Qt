import QtQuick 2.3
import QtQuick.Window 2.2
import "CommonFunc.js" as COMF
Window {
    id: root
    visible: true
    width: 360
    height: 360

    MouseArea {
        anchors.fill: parent
        onClicked: {
            var mcase = 10;
            console.log("****** test case", mcase)
            switch(mcase){
            case 1:
                func1()
                break
            case 2:
                func2()
                break
            case 3:
                func3()
                break
            case 4:
                func4()
                break
            case 5:
                func5()
                break
            case 6:
                func6()
                break
            case 7:
                func7()
                break
            case 8:
                func8()
                break
            case 9:
                func9()
                break
            case 10:
                func10()
                break
            case 11:
                func11()
                break
            case 12:
                func12()
                break
            case 13:
                func13()
                break
            case 14:
                func14()
                break
            case 15:
                func15()
                break
            default:
                //my1
                data1 = 6
                console.log(data1)
                //my2
                break;
            }
        }
    }
    function func1(){
        //Objects themselves can be expressed using an array or object literal.
        //Arrays have no separate type, but are specialized objects which use array indexes as properties:
        print(COMF.o1.name, COMF.o1["age"])
        console.log(COMF.a1[0],COMF.a1[1],COMF.a1[2],COMF.a1[3])

    }
    function func2(){
        var data1 = 3
        //Functions are special kinds of objects. They only differ from objects because they can be
        //called and used as constructors. Properties can be added to functions dynamically:
        console.log(COMF.f(data1))
        console.log(COMF.f.A*data1*data1)
    }
    function func3(){
        var x = 0;
        //To query the type of a variable, use the typeof keyword. typeof returns the name of the type as a string.
        console.log(typeof { x: 1 })// 'object'
        console.log(typeof typeof { x : 1 })// 'string'
        console.log(typeof JSON.parse('{"a": 7}'))// 'object'
    }
    function func4(){
        //Everything in JavaScript acts like an object.
        console.log(1.3333333.toFixed(2))// '1.33'
        console.log(7..toString())// '7'
    }
    property var mdat: {1;2;3}
    function func5(){
        //Expressions
        //The expression syntax follows mostly "C" syntax (as in C++ or Java).
        //As a major difference, there is no sharp distinction between statements and expressions.
        //Basically everything evaluates to something. Function declarations and compounds can be included on-the-fly:
        var var2 = COMF.f2();// evaluates 'undefined'
        console.log(var2)
        var var3 = COMF.f2() +1;// evaluates to 1, because 'undefined' is casted to 0
        console.log(var3)
        console.log(typeof (function() {}))// evaluates to a function object
        console.log((function() { return 0; })())// evaluates to 0
        console.log(mdat)
        console.log(mdat* 2 )// evaluates to 6
    }
    //Control Flow
    function func6(){
        //Branching
        var a = 2
        if(a > 2){
            console.log("state1")
        }else{
            console.log("state2")
        }
    }
    function func7(){
        //The switch statement follows the same fall through semantics as in "C":
        var a
        switch(a){
        case 1:
            console.log("case 1")
            break
        case 2:
            console.log("case 2")
            break
        default:
            console.log("case default")
            break
        }
    }
    function func8(){
        //Repetitions
        var cnt = 0;
        do{
            console.log(cnt)
            cnt++
        }while(cnt <5)
        while(cnt < 10){
            console.log(cnt)
            cnt++
        }
    }
    function func9(){
        //Iterators
        var cnt = 5;
        for(var i = 0; i < cnt;  i++){
            console.log(i)
        }
        //
        var a = [1,2,3,4]
        for (var i in a)
            console.log(i, a[i]*a[i])
    }
    function func10(){
        //Labeled Loops, Break and Continue
        label_x:
        for (var x = 1; x < 11; ++x) {
            for (var y = 1; y < 5;++y) {
                if ((x+ y) % 7 == 4) {
                    console.log(x, y)
                    break label_x;
                }
            }
        }
        console.log("start from label_x")
    }

    function func11(){
    }
    function func12(){
    }
    function func13(){
    }
    function func14(){
    }
    function func15(){
    }

}
