//CommonFunc.js
.import "DemoJavaScript.js" as DemoJS
//for DemoJavaScript4.qml
var clickCount = 0;   // this state is separate for each instance of MyButton
function onClicked(button) {
    DemoJS.doTest()
    clickCount += 1;
    if ((clickCount % 5) == 0) {

        button.color = Qt.rgba(1,0,0,1);
    } else {
        button.color = Qt.rgba(0,1,0,1);
    }
}
//test 1
var o1 = { name: 'Werner', age: 84 } // allocate simple object

// both notations are valid, but [] notation allows generated strings
var a1 = ['a', 'b', 7, 11.]
// an array, equivalent to {'0': 'a', '1': 'b', '2': 7, '3': 11.}

//test 2
function f(x) { return f.A * x * x }
f.A = 2.7
function f2() {}


