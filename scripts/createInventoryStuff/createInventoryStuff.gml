/*Find cell number (1-6)
Draw stuff at the bottom of the cell and set the objects linked isntance
also destroy any other things that exist already
Also remember ot destroy things when you close inventory*/

destroyInventoryStuff();
//How far along the top left grid of the inventory is shifted from O
var invScreenXOffset=1920+52;
var invScreenYOffset=11;
var sprWidth=sprite_width;
var sprHeight=sprite_height;
var cellSize=128;
var adjustedX=x-invScreenXOffset+(sprWidth-cellSize)*0.5;
var adjustedY=y-invScreenYOffset+(sprHeight-cellSize)*0.5;

//Cell coords INDEXED FROM 0
var cellX=adjustedX/128;
var cellY=adjustedY/128;

//Now create the stuff - their sprite origins are bottom centre, so start with Use
var xx=invScreenXOffset+(cellX+0.5)*128;
var yy=invScreenYOffset+(cellY+1)*128-8; //8 just accounts for the cell borders

var thing=instance_create_layer(xx,yy,layer,obj_inventoryUse);
thing.owner=id;
thing=instance_create_layer(xx-20,yy,layer,obj_inventoryExamine);
thing.owner=id;
thing=instance_create_layer(xx+20,yy,layer,obj_inventoryCombine);
thing.owner=id;