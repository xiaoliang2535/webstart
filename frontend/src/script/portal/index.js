function numbers() {
	return !!arguments.length && function(a, l) {
		while(typeof a[--l] == 'number') {}
		return l == -1;
	}(arguments, arguments.length);
}

function numbers_source() {
	var l = arguments.length;
	if(l === 0){ return false; }
	while(typeof arguments[--l] == 'number') {}
	return l == -1;
}
