/// @description HP bar

draw_self();

draw_healthbar(x-50,y-45,x+50,y-60, (bosshp/bossmaxhp)*100,c_black,c_red,c_green,0,true,true );