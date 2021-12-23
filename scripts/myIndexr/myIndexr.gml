function myIndexr(_qty, _root){
	// tell it how many sprites there are
	// (_qty) and what they are all
	// called (_name)
	// and let it pick a random one
	// figure out its "asset index"
	// and send it back to you.
	
	// ?
	var myIDString = "";
	
	// ?
	var myIDnumber = (irandom_range(0, _qty));
	
	// ?
	if (myIDnumber<10) {
		myIDString = "0" + string(myIDnumber);
	} else {
		myIDString = string(myIDnumber);
	}
	
	// ?
	var mySpriteName = _root + myIDString;
	
	// ?
	var mySpriteIndex = asset_get_index(mySpriteName);
	
	// ?
	return mySpriteIndex;
}