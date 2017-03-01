so fs
so ./language as parser
so ./transform as transform

very fn is process.argv[2]
fs dose readFile with fn much err content
	very str is content dose toString
	very parsed is parser dose parse with str
	very json is JSON dose stringify with parsed
	very final is plz transform with parsed
	shh console dose loge with json
	console dose loge with final
wow&
