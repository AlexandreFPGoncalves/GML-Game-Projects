
var grid = ds_quests; //apontador

inimigosmortos = 0;
var i = 0; 

repeat(ds_quests_number){
	switch(i){
		#region Investiga as Mascotes
		
		case quest.Investiga_as_Mascotes:
				switch(grid[# 1, i]){
					case -1: break;
					case  0: 
						if(inimigosmortos == 10){
							grid[# 1, i] += 1;
						}
						
						
					break;
				}
		#endregion
	}
	
	i++;
}

