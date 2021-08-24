#region variaveis globais
global.gold = 0; 
global.extragold = 1;
global.PC = 1;
global.PS = 0;
level = 1;
inimigosmortos = 0;
inimigosparaproximolevel = 10;
#endregion

#region alarm para adicionar gold por segundo
alarm[0] = 60;
#endregion

#region	spawnar botoes (posso substituir a linha 20 pelo que eu quiser 
var areaHeight = 0;
var maxWidth = 1;	// colunas
var maxHeight = 1; // linhas
var xx = 80;
var yy = 125;

for(var i=0; i < maxWidth; i++){
	for(var j=0; j < maxHeight/2; j++){
		instance_create_layer(xx,yy,"banners",obj_banner_1);
		instance_create_layer(xx,yy,"botoes",obj_botao_01);

		
		if(j == maxHeight - 1){
			yy += 150;
		}else{
			yy += 225;
		}
}

	for(var k=0; k < maxHeight/2; k++){
		instance_create_layer(xx,yy,"banners",obj_banner_1);
		instance_create_layer(xx,yy,"botoes",obj_botao_02);
		
		if(k == maxHeight - 1){
			yy += 150;
		}else{
			yy += 225;
		}
		}
		
	for(var k=0; k < maxHeight/2; k++){
		instance_create_layer(xx,yy,"banners",obj_banner_1);
		instance_create_layer(xx,yy,"botoes",obj_botao_03);
		
		if(k == maxHeight - 1){
			yy += 150;
		}else{
			yy += 225;
		}
		}
		
	areaHeight = yy;
	yy = 125;
	xx += 150;
}
global.areaHeight = areaHeight - room_height;

#endregion