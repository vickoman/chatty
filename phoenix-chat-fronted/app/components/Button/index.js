import React from "react"
import cssModules from "react-css-modules"
import  style "./style.css"

export const Button = props => {
	return (
		<button
			style={props.style}
			onClick={props.onClick}
			className={style[props.type]}>
			{props.children}
		</button>
	)
}

export default cssModules(Button, style)