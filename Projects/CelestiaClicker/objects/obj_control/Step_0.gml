#region codigo para subir de nivel.
if(inimigosmortos >= inimigosparaproximolevel){
	level++;
	inimigosmortos = 0;
	global.gold += 500;
}
#endregion