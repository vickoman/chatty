import React from "react"
import ReactDOM from "react-dom"
import { Router, Route, IndexRoute, hashHistory } from "react-router"
import { Provider } from 'react-redux'
import store from "./redux/store"


import Home from "./components/Home"
//import Chat from "./components/Chat"
import Settings from "./components/Settings"
import { default as App } from "./components/App"
import "./styles/reset.css"

// const App = props => (<div>{props.children}</div>)

ReactDOM.render(
  <Provider store={store}>
    <Router history={hashHistory}>
      <Route path="/" component={App}>
        <IndexRoute component={Home} />
        <Route path="settings" component={Settings} />
      </Route>
    </Router>
  </Provider>,
  document.getElementById("root")
)
