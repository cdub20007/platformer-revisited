key_left = keyboard_check(vk_left); 
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp



//calculate movement
var move = key_right - key_left; 

hsp = move * walksp; 

vsp = vsp + grv;

//jumping 
if (place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	vsp = -5;	
	 
}

else
{
	key_right =0;
	key_left = 0;
	key_jump = 0;
}



//horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; 

//vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 
