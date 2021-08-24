#region limites
topLimit = y - (sprite_height/2) + (image_xscale*25);
bottomLimit = y + (sprite_height/2) - (image_xscale*25);
#endregion

#region set do slider
a = instance_create_layer(x,y,"scroller",obj_slider);
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.barLenght = sprite_height;
a.topLimit = topLimit;
a.bottomLimit = bottomLimit;
a.y = topLimit;
a.depth = depth -1;
#endregion