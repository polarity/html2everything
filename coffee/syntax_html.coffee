exports.html = {}

exports.html.BODY = (content,indent)->
	"#{indent}<body>\n#{content}#{indent}</body>\n"	

exports.html.TABLE = (content,indent)->
	"#{indent}<table>\n#{content}#{indent}</table>\n"

exports.html.TR = (content,indent)->
	"#{indent}<tr>\n#{content}#{indent}</tr>\n"

exports.html.TD = (content,indent)->
	"#{indent}<td>#{content}</td>\n"

exports.html.P = (content,indent)->
	"#{indent}<p>#{content}</p>\n"

exports.html.DIV = (content,indent)->
	"#{indent}<div>#{content}</div>\n"

exports.html.IMG = (content,indent)->
	"#{indent}<img alt=\"hallo welt\"/>\n"

exports.html.SPAN = (content,indent)->
	"<span>#{content}</span>\n"
