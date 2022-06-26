Js.log("Hello, World!")
//partial application 
let add = (a,b) => a+b
let _ = add(2,2)
//partial application allows us to pass partial parameter to a function
//we get another function, which we can use to pass rest parameters

let add5 = add(5);
let x = add5(0);
Js.log(x);

let add9 = add(9);

//piping / function composition

// let y = add5(add9(3))
let y = 3 -> add9 -> add5;
Js.log(y)