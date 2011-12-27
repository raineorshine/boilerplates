build = () ->
	["#page", [
	]]

render = () ->
	document.body.appendChild(create(build()))

$ -> render()
