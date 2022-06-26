@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  // empty list for home page
  | list{""} => <Index />
  | list{"home"} => <Index />
  | list{"about"} => <About />
  | list{"form"} => <Form />
  | list{"counter"} => <Counter />
  | list{"zoo"} => <Zoo />
  | _ => <FourOFour />
  }
}

// http://localhost:3000/
// http://localhost:3000/zoo
