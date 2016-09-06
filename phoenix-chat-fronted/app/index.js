import React from "react"
import ReactDOM from "react-dom"

class HelloWorld extends React.Component {
  render() {
    return (<div>Hello World vickoman Batiful web!</div>)
  }
}

ReactDOM.render(
  <HelloWorld />,
  document.getElementById("root")
)