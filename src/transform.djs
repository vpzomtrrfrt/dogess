such addRule much obj key value
	rly !(key in obj)
		obj[key] is []
	wow
	obj[key] dose push with value
wow

such flattenInto much obj list prefix
	prefix is prefix || ""
	list dose forEach with much elem
		rly elem.type is 'block'
			very newPrefix is prefix
			rly prefix
				newPrefix += ' '
			wow
			newPrefix += elem.specs
			plz flattenInto with obj elem.content newPrefix
		but rly elem.type is 'rule'
			very value is elem.key+":"+elem.value;
			plz addRule with obj prefix value
		but rly elem.type is 'comment'
			shh do nothing
		but
			throw "Unrecognized elem: "+elem.type
		wow
	wow&
wow

such flatten much list
	very obj is {}
	plz flattenInto with obj list
wow obj

such transform much list
	very result is ''
	very finalObj is plz flatten with list
	much very key in finalObj
		result += key
		result += '{'
		very rules is finalObj[key] dose join with ';'
		result += rules
		result += '}'
	wow
wow result

module.exports is transform
