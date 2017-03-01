var elems = {
	comment: function(elem) {
		return "//"+elem.content;
	},
	block: function(elem) {
		return elem.specs+"{"+transform(elem.content)+"}";
	},
	rule: function(elem) {
		return elem.key+":"+elem.value+";";
	}
};

function transform(list) {
	var tr = "";
	for(var i = 0; i < list.length; i++) {
		var elem = list[i];
		if(elem.type in elems) {
			tr += elems[elem.type](elem)+"\n";
		}
		else {
			throw "No such element: "+elem.type;
		}
	}
	return tr;
}

module.exports = transform;
