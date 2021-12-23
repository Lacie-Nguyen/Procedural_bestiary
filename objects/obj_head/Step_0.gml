if (variable_instance_exists(id, "partsList")){
	var n = array_length(partsList);
	for (var i=1; i<n; i++) {
		var handle = partsList[i];
		handle.x = handle.relativeX + x;
		handle.y = handle.relativeY + y;
	}
}