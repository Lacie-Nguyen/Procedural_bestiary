function daemonMaker(myHead){
	
	// how common are horns?
	var hornFreq = 0.8;


	var faceX = 0;
	var faceY = 0;
	myHead.x = basicX;
	myHead.y = basicY;
//	myHead.myHandle = myHead;

	var myShade = instance_create_layer(0, 0, "inst_shadow",obj_face);
	var myFace = instance_create_layer(0, 0, "inst_faces",obj_face);

	// choose a rando headshape via custom fn
	var faceIndex = myIndexr(15, "spr_headshape");
	// duplicate for shadow
	var shadeIndex = faceIndex;
	// assign those sprites
	myFace.sprite_index = faceIndex;
	myShade.sprite_index = shadeIndex;

	// horned?
	// need to be able to use myHorns outside of the 
	// condition (if) below, so create it here.
	var myHornL = noone;
	var myHornR = noone;

	// now get to work
	if (random(1)<=hornFreq) {
		// yes
		var hornIndex = myIndexr(3, "spr_horn");
		myHornL = instance_create_layer(0, 0, "inst_extras", obj_horn);
		myHornR = instance_create_layer(0, 0, "inst_extras", obj_horn);
		myHornL.sprite_index = hornIndex;
		myHornR.sprite_index = hornIndex;
		myHornR.image_xscale = random_range(-0.8,-1.2);
		// arbitrary placement ahead
		var _xPos = myFace.sprite_width/3;
		var _yPos = myFace.sprite_height/3;
		myHornL.relativeX=faceX-_xPos;
		myHornR.relativeX=faceX+_xPos;
		myHornL.relativeY=faceY-_yPos;
		myHornR.relativeY=faceY-_yPos;
	}

	var colorIndex = irandom_range(0, paletteSize-1);
	myFace.image_blend = myPalette[colorIndex];
	myShade.image_blend = c_black;
	myShade.image_xscale = 1.18;
	myShade.image_yscale = 1.13;

	//
	//
	var myEyeLeft = instance_create_layer(0,0,"inst_eyes",obj_eye);
	var myEyeRight = instance_create_layer(0,0,"inst_eyes",obj_eye);
	var eyeIndex = myIndexr(50, "spr_eyes");
	//
	myEyeLeft.sprite_index = eyeIndex;
	myEyeRight.sprite_index = eyeIndex;
	myEyeRight.image_xscale = random_range(-0.85,-1.15);
	//
	var _widthMax = myFace.sprite_width;
	var _widthMin = myEyeLeft.sprite_width;
	var _eyeDistance = irandom_range(_widthMin,_widthMax);
	var _eyeYRange = myEyeLeft.sprite_height/2;
	var _eyeYPlacement = random_range(-_eyeYRange, _eyeYRange);

	myEyeLeft.relativeX = faceX - (_eyeDistance / 2);
	myEyeLeft.relativeY = faceY + _eyeYPlacement;
	myEyeRight.relativeX = faceX + (_eyeDistance / 2);
	myEyeRight.relativeY = faceY + _eyeYPlacement;
	// 
	// 
	var noseIndex = myIndexr(15,"spr_noses");
	var myNose = instance_create_layer(0,0,"inst_noses",obj_nose);
	myNose.sprite_index = noseIndex;

	//
	var noseYRange = (myFace.sprite_height / 9);
	var noseY = irandom_range(faceY - noseYRange, faceY + (noseYRange*3));
	myNose.relativeX = faceX;
	myNose.relativeY = noseY;

	//
	//
	//
	var mouthIndex = myIndexr(38, "spr_mouths");
	var myMouth = instance_create_layer(0,0,"inst_mouths",obj_mouth);
	myMouth.sprite_index = mouthIndex;

	//
	var mouthTopMost = myNose.relativeY + (myNose.sprite_height/2) + (myMouth.sprite_height/2);
	var mouthBottomMost = faceY + (myFace.sprite_height/1.98);
	var mouthY = irandom_range(mouthTopMost, mouthBottomMost);
	myMouth.relativeX = faceX;
	myMouth.relativeY = mouthY;

	array_push(myHead.partsList, myHead);
	array_push(myHead.partsList, myShade);
	array_push(myHead.partsList, myFace);
	array_push(myHead.partsList, myEyeLeft);
	array_push(myHead.partsList, myEyeRight);
	array_push(myHead.partsList, myNose);
	array_push(myHead.partsList, myMouth);
	// only add these to array if we are using them
	// (we set to noone by default, around line 34 above).
	if (myHornL != noone) {
		array_push(myHead.partsList, myHornL);
	}
	if (myHornR != noone) {
		array_push(myHead.partsList, myHornR);
	}
	
}