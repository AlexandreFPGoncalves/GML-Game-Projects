/// @description Animação

#region animação
image_angle += v*10;
image_yscale = image_xscale;
if(aumentando){
	image_xscale += v;}
if(diminuindo){
	image_xscale -= v;}
#endregion
	
//-----------Limites-----------
if(image_xscale >=2){
	aumentando = false;
	diminuindo = true;
	v = random_range(.01,.1);}
if(image_xscale <=.5){
	aumentando = true;
	diminuindo = false;
	v = random_range(.01,.1);}