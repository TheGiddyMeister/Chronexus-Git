function on_ground(){
		///returns true if on Ground
		
		var side = bbox_bottom;
		var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
		var t2= tilemap_get_at_pixel(global.map, bbox_right, side + 1);
		var t3 = tilemap_get_at_pixel(global.map,  bbox_left, side);
		var t4 = tilemap_get_at_pixel(global.map,  bbox_right, side);
		
		if (t1 == SOLID or t1 == PLATFORM) and  (t3 != SOLID and t3 != PLATFORM) or (t1 == SOLID and t3 == PLATFORM) or
			(t2 == SOLID or t2 == PLATFORM) and  (t4 != SOLID and t4 != PLATFORM) or (t2 == SOLID and t4 == PLATFORM)
			return true else return false;
}