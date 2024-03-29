// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Navbar from "../navbar/navbar.bs.js";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.bs.js";

function add(a, b) {
  return a + b | 0;
}

function Counter(Props) {
  var match = React.useState(function () {
        return 0;
      });
  var setCount = match[1];
  return React.createElement(React.Fragment, undefined, React.createElement(Navbar.make, {}), React.createElement("h1", undefined, "Counter: " + String(match[0])), React.createElement("button", {
                  onClick: (function (param) {
                      return Curry._1(setCount, (function (count) {
                                    return count + 1 | 0;
                                  }));
                    })
                }, "+"), React.createElement("button", {
                  onClick: (function (param) {
                      return Curry._1(setCount, (function (count) {
                                    return count - 1 | 0;
                                  }));
                    })
                }, "-"), React.createElement("button", {
                  onClick: (function (param) {
                      return RescriptReactRouter.push("zoo");
                    })
                }, "Go to Zoo"));
}

var make = Counter;

export {
  add ,
  make ,
  
}
/* react Not a pure module */
