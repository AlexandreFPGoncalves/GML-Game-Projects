/// @description Insert description here
// You can write your code in this editor

if(fading){
	alpha -= .05;
}else{
	alpha += .05;
}

if(alpha >=1){
	fading = true;
}
