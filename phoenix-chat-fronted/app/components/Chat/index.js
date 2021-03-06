import React from "react"
import cssModules from "react-css-modules"
import style from "./style.css"

import { default as Sidebar} from "../Sidebar"

export class Chat extends React.Component {
	render() {
		return (
			<div>
				<div className={style.chatWrapper}>
					Chat me
				</div>
				{this.props.children}
			</div>
		)
	}
}

export default cssModules(Chat, style)
