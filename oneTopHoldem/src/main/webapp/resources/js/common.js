function gfn_isNull(value){
	if(value == "" || value == null || value == undefined
			|| ( value != null && typeof value == "object" && !Object.keys(value).length ) ){
		return true;
	}else{
		return false;
	}
}
	