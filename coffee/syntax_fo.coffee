exports.fo = {}

exports.fo.BODY = (content,indent)->
	"#{indent}<fo:flow flow-name=\"xsl-region-body\">\n#{content}#{indent}</fo:flow>\n"	

exports.fo.TABLE = (content,indent)->
	"#{indent}<fo:table>\n#{content}#{indent}</fo:table>\n"

exports.fo.TR = (content,indent)->
	"#{indent}<fo:table-row>\n#{content}#{indent}</fo:table-row>\n"

exports.fo.TD = (content,indent)->
	"#{indent}<fo:table-cell>\n#{indent}#{content}#{indent}</fo:table-cell>\n"

exports.fo.P = (content,indent)->
	"#{indent}<fo:block>#{content}</fo:block>\n"

exports.fo.DIV = (content,indent)->
	"#{indent}<fo:block>#{content}</fo:block>\n"

exports.fo.IMG = (content,indent)->
	"#{indent}<fo:external-graphic />\n"

exports.fo.SPAN = (content,indent)->
	"<fo:inline>#{content}</fo:inline>\n"

exports.fo.BR = (content,indent)->
	"<br>"

exports.fo.BR = (content,indent)->
	"#{indent}<fo:block text-align=\"center\">#{content}</fo:block>\n"

exports.fo.HEADER = (content,indent)->
	"
	\n<fo:layout-master-set>
	\n	<fo:simple-page-master 
	\n		margin-bottom=\"0cm\" 
	\n		margin-left=\"1.4cm\" 
	\n		margin-right=\"1.4cm\" 
	\n		margin-top=\"1.0cm\" 
	\n		master-name=\"first\" 
	\n		page-height=\"29.6cm\" 
	\n		page-width=\"21.6cm\">
	\n			<fo:region-body 
	\n				margin-bottom=\"0.5cm\" 
	\n				margin-top=\"1.5cm\" />
	\n			<fo:region-before 
	\n				extent=\"1.5cm\" />
	\n			<fo:region-after 
	\n				extent=\"4.5cm\" />
	\n	</fo:simple-page-master>
	\n</fo:layout-master-set>
	\n\n"

