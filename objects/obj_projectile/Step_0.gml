/// @description Insert description here

//collision with floor, teleport to random spot above
if ((place_meeting(x,y + 1,obj_floor)) || (phy_position_y > room_height)){
	
	phy_position_x = irandom_range(2, 1365); 
	phy_position_y = irandom_range(0, -250);
	//instance_destroy();
}