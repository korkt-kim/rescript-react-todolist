@react.component
let make = (~setList) => {
  let (value, setValue) = React.useState(_ => "")
  let onChangeValue = e => {
    let target = e->ReactEvent.Synthetic.currentTarget
    setValue(target["value"])
  }

  <form
    onSubmit={e => {
      // JS: e.preventDefault()
      e->ReactEvent.Synthetic.preventDefault
      if value->Js.String.trim != "" {
        setList(prev => Belt.Array.concat(prev, [value]))
      }
    }}>
    <input type_="text" value onChange=onChangeValue />
    <button type_="submit"> {`제출`->React.string} </button>
  </form>
}
