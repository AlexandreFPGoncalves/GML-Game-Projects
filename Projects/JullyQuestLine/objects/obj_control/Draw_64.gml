
var str = "";
draw_text(30,30,string(inimigosmortos));
var i = 0;
repeat(ds_quests_number){
	
	var stage = ds_quests[# 1, i];
	if(stage != -1){
		var array = ds_quests[# 2, i];
		str += "\n"+string_upper(ds_quests[# 0, i]) + ": " + array[stage];
		
	}
	i++;
} 

draw_set_font(font_text);
draw_text(10,0, str);

//dicas :
// string_upper faz com que o texto apareça em CAPS
// \n  faz com que um enter seja dado ( espaço )