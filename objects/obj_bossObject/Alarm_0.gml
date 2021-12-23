/// @description Draw a head instance
myHead = instance_create_layer(basicX, basicY, "inst_heads", obj_head);
daemonMaker(myHead);
// we draw the face in 
// daemonMaker, but that doesn't
// necessarily put it on the screen
// yet.  I use a tiny delay with an
// alarm to give things a chance
// to get drawn.

alarm_set(1,25);
