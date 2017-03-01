so fs
so ./language as parser
so ./transform as transform

such parse much str
	very parsed is parser dose parse with str
	very result is plz transform with parsed
wow result

rly require.main is module
	very fn is process.argv[2]
	fs dose readFile with fn much err content
		very str is content dose toString
		very final is plz parse with str
		console dose loge with final
	wow&
wow
module.exports is parse
