import React from 'react'
import ReactDOM from 'react-dom'
import App  from './components/App'

// document.querySelector("body").innerHTML = "<h1>Hello Mod 4</h1>";

// let myElement = React.createElement("h1", null, "Hello Mod 4")

// let myElement = {
//     $$typeof: Symbol.for("react.element"),
//     ref: null, 
//     props: {
//         children: "Hello from manual object"
//     },
//     type: "h2",
//     key: null
// }
// console.log(myElement)

ReactDOM.render(<App />, document.getElementById("root"));

