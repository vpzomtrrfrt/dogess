so fs
so ./language as parser

very fn is process.argv[2]
fs dose readFile with fn much err content
	very str is content dose toString
	very parsed is parser dose parse with str
	very json is JSON dose stringify with parsed
	console dose loge with json
wow&
