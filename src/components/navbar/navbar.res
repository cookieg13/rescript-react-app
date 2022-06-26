@module("./Nav.module.css") external styles: {..} = "default"

@react.component
let make = () => {
  // RescriptReactRouter.push()
  <div className={styles["wrapper"]}>
    <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("home")}>
      {"Home"->React.string}
    </div>
    <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("about")}>
      {"About"->React.string}
    </div>
    <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("form")}>
      {"Form"->React.string}
    </div>
    <div />
    <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("counter")}>
      {"Counter"->React.string}
    </div>
    <div />
    <div className={styles["link"]} onClick={_ => RescriptReactRouter.push("zoo")}>
      {"Zoo"->React.string}
    </div>
    <div />
  </div>
}
