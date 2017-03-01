start = sections: section * { return sections; }
section = ws content:(
	comment /
	defblock
) ws { return content; }
ws = wsc*
wsc = [\t\n \r]
wsr = wsc+
comment = ws ('#' / '//') content:([^\n]*) "\n" { return {type:"comment",content:content.join("")}; }
defblock = specs:specs "much" wsr content: (defcontent *) "wow" { return {type: "block", content: content, specs: specs}; }
specs = specs:spec * { return specs.join(""); }
spec = ws spec:(
	("such" ws id:id { return "#"+id; }) /
	("many" ws clazz:clazz { return "."+clazz; }) /
	("very" ws tag:tag { return tag; })
) ws { return spec; }
id = start:[A-Za-z] rest:[a-zA-Z0-9-_:]* { return start+rest.join(""); }
clazz = start:[-_a-zA-Z] rest:[_a-zA-Z0-9-]* { return start+rest.join(""); }
tag = tag:[A-Za-z-]* { return tag.join(""); } // not sure about this
defcontent = ws content:(
	(key:defkey wsr ("is" wsr)? ws value:defval ws ";" { return {type: "rule", key: key, value: value}; }) /
	comment
) ws { return content; }
defkey = key:[^ \n\t\r:;]* { return key.join(""); }
defval = value:[^;]* { return value.join(""); }
