so fs
so ./language as parser
so ./transform as transform

very fn is process.argv[2]
fs dose readFile with fn much err content
	very str is content dose toString
	try {
		very parsed is parser dose parse with str
	}
	catch(e) {
		console.error(e);
		process.exit(-1);
	}
	very final is plz transform with parsed
	console dose loge with final
wow&
