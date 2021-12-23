/// @description Saving as png image
var myFileName=working_directory+"beast_"+string(irandom_range(1000,9999))+".png";
screen_save(myFileName);
qtyCreated++;
instance_destroy(obj_head);
if (qtyCreated<maxQty) {
	// again:  a tiny delay to make
	// sure that the file actually
	// had a chance to be written
	// to the disk before we continue.
	alarm_set(0,myPause);
}
