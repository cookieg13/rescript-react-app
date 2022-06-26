@react.component
let make = () => {
  let (name, setName) = React.useState(_ => "")
  let handleInput = event => {
    let updatedName = ReactEvent.Form.target(event)["value"]
    setName(_ => updatedName)
    // this function returns an object ReactEvent.Form.target(event)
    //we then get the value of key ["value"] from object
  }
  <>
    <Navbar />
    <h1> {"Form Page"->React.string} </h1>
    <div> {name->React.string} </div>
    //   <input type_="text" onChange={e => handleInput(e)}/>
    // as the return type of onchange and input of handleinput is same we can write like this too
    <input type_="text" onChange={handleInput} />
  </>
}
