//The Type System
//boolean
//number
//string
//object
//function
//var
/*****************************/
var flag = false // a boolean
var x = 1., y = 2 // numbers can be integers and reals
var s1 = 'abc'; // a string
function doTest(){
    //test 1
    //    console.log(typeof 1.)
    //    console.log(typeof new Number(1.))
    //    console.log(typeof new String('Hi!'))

    //test 2
    //    console.log(1.3333333)
    //    console.log(1.3333333.toFixed(2))

    //test 3

    function f(x) { var A = 3;return f.A * x * x }
    console.log(f(2))
//    f.A = 2.7

    function Buffer() {}
    Buffer.MAX_LINE_LENGTH = 4096

}
