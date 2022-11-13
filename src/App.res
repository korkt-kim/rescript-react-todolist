%%raw(`import './App.css';`)
@module("./logo.svg") external logo: string = "default"

@react.component
let make = () => {
  let (list, setList) = React.useState(() => [])

  <div className="App">
    <TodoInput setList />
    {Belt.Array.mapWithIndex(list, (key, listItem) => {
      <TodoListItem key={Belt.Int.toString(key)} listItem />
    })->React.array}
  </div>
}
