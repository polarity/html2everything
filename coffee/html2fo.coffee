#require
jsdom = require "jsdom"
fs = require "fs"
syntax = require "./syntax_fo.coffee"

# read HTML File
htmlFile = fs.readFileSync "../html_source/test.html"
htmlFile = htmlFile.toString()

scripts = ["http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"]

# application
app = {}


#config
app.config =
	syntax: "fo"

# jQuery
$ = false

# get the party started
jsdom.env htmlFile, scripts, (errors,window)->
	$ = window.$
	header = syntax["fo"]["HEADER"]('','')
	body = app.getElements($('body'))

	console.log header + body


app.getElements = (element,Level) ->
	Level = if typeof Level == "undefined" then 0 else Level+1

	line = ""
	i = 0
	while i < Level
		line = line+'	'
		i++

	# Tagnamen herausfinden
	tagName = element.get(0).tagName

	# Kindelemente des aktuellen Tags Suchen
	foundElements = element.children()

	html = ""

	# Jedes Kindelement an diese Funktion schicken
	foundElements.each (i,el) ->
	 	html = html+app.getElements($(el), Level)

	# der Text im Element PLUS was da noch so drin ist
	html = app.getTextNode(element) + html

	# für den Tag entsprechende Funktion öffnen
	syntax[app.config.syntax][tagName](html,line) if typeof syntax[app.config.syntax][tagName] == 'function'

app.getTextNode = (el)->
	$(el).contents().filter(()->return this.nodeType == 3).text().trim()

