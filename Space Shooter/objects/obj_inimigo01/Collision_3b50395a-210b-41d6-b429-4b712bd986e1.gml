/// @description Insert description here

//-----------Mudar Variavel-----------
atingido = true;
//-----------Destruir o Tiro-----------
instance_destroy(other);
//-----------Destruir o Inimigo-----------
inimigo1hp -= 50;
//obj_inimigo01.hp -= 50;
//instance_destroy(other); //com quem ele colidir
