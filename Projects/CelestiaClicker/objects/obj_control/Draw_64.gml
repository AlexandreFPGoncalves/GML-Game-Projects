draw_self();

#region HealthBar
//draw_sprite(spr_healthbar_bg,1,970,300);
//draw_sprite_ext(spr_healthbar_hp,1,970,300,obj_inimigo_01.hp/10,1,0,c_white,1);
//draw_sprite(spr_healthbar_boarder,1,970,300);
#endregion


draw_text(700,30, "gold: " + string(global.gold) + " Extra gold %"+ string(global.extragold));
draw_text(700,50, "level: " + string(level));
draw_text(700,70, "Inimigos Para o proximo level: " + string(inimigosmortos) + "/10");

