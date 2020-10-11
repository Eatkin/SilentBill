/// @description

var text="The knife is really stuck to this painting...almost like...the duck is gripping it. Maybe if this painting wasn't watching me.";

if (obj_duckPaintingEyelid.glued)
{
	addToInventory();
	text="Haha, now I have the knife";
}

createTextbox(x-64,y-128,text);