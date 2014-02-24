###
module.exports = {
	view: "/hello.ftl"
	out: "/hello.html"
	data: {
		name: "FreeMarker Render Result"
		list: [
			"a","b","c"
		]
	}
}
###

module.exports = {
	"get /hello": (req, res)->
		this.render.ftl "hello", { name: "world "}

	"get /": (req, res)->
		this.render.ftl "portal/index"
}