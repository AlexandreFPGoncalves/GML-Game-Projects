/// @description fading animation

if(visivel){
	//alterar o alpha da imagem
	//alpha = 1 = visivel
	//alpha = 0 = invisivel
	
	image_alpha += .01;
}

if(fading){
	image_alpha -= .01;
}

if(image_alpha <= .1){
	visivel = true;
	fading = false;}

if(image_alpha >= 1){
	visivel = false;
	fading = true;}