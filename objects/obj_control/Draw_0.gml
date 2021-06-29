/// @description Insert description here

draw_self();

//dead
if (global.dead){
	draw_text(room_width/2 -100, room_height/2, "Game Over. Press Space to Restart \nscore: " + string(timer));
}

//score tracker
if(!global.dead){
	draw_text(10, 10, "score: " + string(timer));
}
