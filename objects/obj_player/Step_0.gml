/// @description asdadaw

var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
//var up = keyboard_check(ord(vk_up));
//spd = phy_linear_velocity_x;

//move right
if(right){
	phy_position_x += 5;
}
//move left
if(left){
	phy_position_x -= 5;
}

//if both keys are not pressed or both pressed, speed 0
if((!left && !right) || (left && right)){
	hspeed = 0;
}

//wrap around r->l
if (phy_position_x < 0) {
	phy_position_x = room_width;	
}	
//wrap around l->r
if (phy_position_x > room_width) {
	phy_position_x = 1;		
}

//if a projectile hit
if place_meeting(x, y, obj_projectile) 
{
	//reduce health and change sprite accordingly
	health -= 1;
	if(health == 2){
		sprite_index = spr_health2;
	}else if (health == 1){
		sprite_index = spr_health1;
	}

	//delete projectile
    with instance_place(x, y, obj_projectile) 
    {
         instance_destroy() 
    }
}

//dead! :(
if (health <= 0){
	global.dead = true;
	instance_destroy();
}