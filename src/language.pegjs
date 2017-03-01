start = sections: section * { return sections.join("\n"); }
section = ws content:(
	comment
) ws { return content; }
ws = [\t\n \r]*
comment = ('#' / '//') content:([^\n]*) "\n" { return "//"+content.join(""); }
