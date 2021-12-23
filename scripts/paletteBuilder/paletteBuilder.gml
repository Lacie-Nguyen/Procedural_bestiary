function paletteBuilder(){
	var myC_sky = make_color_rgb(186,225,255);
	var myC_grass = make_color_rgb(43,209,252);
	var myC_skin = make_color_rgb(251,150,186);
	var myC_coin = make_color_rgb(243,234,95);
	var myC_cone = make_color_rgb(255,230,247);
	var myPalette = [];
	array_push(myPalette, myC_sky);
	array_push(myPalette, myC_grass);
	array_push(myPalette, myC_skin);
	array_push(myPalette, myC_coin);
	array_push(myPalette, myC_cone);
	return myPalette;
}