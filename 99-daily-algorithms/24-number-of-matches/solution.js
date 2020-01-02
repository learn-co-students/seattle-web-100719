// shawn
function samesies(a,b,c){
    if(a === b && a === c){
		return 3
	}
	else if(a === b || a === c){
		return 2
	}
	else if(b === c){
		return 2
	}
	else return 0
}

// with a Set 

function equal(a, b, c) {
	const size = (new Set([a, b, c])).size;
	return size === 3 ? 0 : 4 - size;
}