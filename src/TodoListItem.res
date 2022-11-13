@react.component
let make = (~listItem: string) => {
  <li> {listItem->React.string} </li>
}
