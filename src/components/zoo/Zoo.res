%%raw("import './zoo.css'")

type height = int
type isBarking = bool
type animal = Zebra | Giraffe(height) | Dog(isBarking)

type state = {selectedAnimal: option<animal>}

let state = {
  selectedAnimal: None,
  // selectedAnimal: Some(Zebra)
  // selectedAnimal: Some(Dog(false))
}
type action = AnimalSelected(animal)
let reducer = (state, action) => {
  switch action {
  | AnimalSelected(a) => {...state, selectedAnimal: Some(a)}
  }
}
//option type is an union of Some and none, so we needed a switch case handling both some and none to get the value of type option<animal>

//now to extract the string from type animal, we will need another switch as animal is also a union of type zebra, giraffe and dog

let animalString = (x: animal) => {
  switch x {
  | Zebra => "Zebra"
  | Giraffe(n) => `Giraffe of height  ${n->Belt.Int.toString}`
  | Dog(n) => `Dog is ${n ? "barking" : " not barking"}`
  }
}

let getAnimalString = (a: option<animal>) => {
  switch a {
  | Some(a) => animalString(a)
  | None => "No animal"
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, state)
  <>
    <div>
      <ZooHeader description={state.selectedAnimal->getAnimalString} />
      // <ZooHeader description={getAnimalString(state.selectedAnimal)}/>
      <button onClick={_ => dispatch(AnimalSelected(Zebra))}>
        {"Select Zebra"->React.string}
      </button>
      <button onClick={_ => AnimalSelected(Giraffe(2))->dispatch}>
        {"Select Giraffe"->React.string}
      </button>
      <button onClick={_ => AnimalSelected(Dog(true))->dispatch}>
        {"Select Dog"->React.string}
      </button>
    </div>
  </>
}
