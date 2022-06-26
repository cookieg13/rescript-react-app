@react.component
let make = (~description: string) => {
  <> <Navbar /> <h2> {("Selected animal: " ++ description)->React.string} </h2> </>
}
