/// @description Insert description here

//create projectiles every 15 ticks (half second)
 if(((timer % 15) == 0) && !global.dead){
	 instance_create_layer(irandom_range(2, 1365), irandom_range(0, -250), 0, obj_projectile);
 }

//increment timer
if (!global.dead){
	timer ++;
}

//game over
if (global.dead){
	if (keyboard_check_pressed(vk_space)) {
        room_restart();
    }
}