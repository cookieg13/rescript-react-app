// we have to write functions outside react component make
let add = (a, b) => a + b

@react.component
let make = () => {
  //as this is a react hook we can use it inside make
  let (count, setCount) = React.useState(_ => 0)
  <>
    <Navbar />
    <h1> {("Counter: " ++ (count->Belt.Int.toString))->React.string} </h1>
    <button onClick={_ => setCount(count => count + 1)}> {"+"->React.string} </button>
    <button onClick={_ => setCount(count => count - 1)}> {"-"->React.string} </button>
    <button onClick={_ => RescriptReactRouter.push("zoo")}> {"Go to Zoo"->React.string} </button>
  </>
}
