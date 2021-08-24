enum quest {
	Investiga_as_Mascotes
};

inimigosmortos = 0;


//guardar data na grelha 

var quest_array = [
	["Investiga as Mascotes", 
	0,
	"Elimina 10 Mascotes e retorna ao Kozma"],
];

//criar a grelha de quests

ds_quests = create_ds_grid_from_array(quest_array);

ds_quests_number = ds_grid_height(ds_quests);


 