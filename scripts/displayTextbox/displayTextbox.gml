//Take text as an argument

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_alpha(0.8);

var border=4; //4 pixel border

var xdraw=argument0;
var ydraw=argument1;
var text=argument2;
var textWidth=string_width(text);
var maxWidth=240-border*2;
var basicHeight=string_height("A");
var textHeight=string_height_ext(text,basicHeight,maxWidth-border*2);

//Begin constructing a tile based box
if (textHeight>basicHeight)
	var hrepeats=ceil(maxWidth/16);
else
	var hrepeats=ceil((textWidth+border*2)/16);
	
hrepeats=max(hrepeats,2);
	
//32 is just 2*the tile size since we always have top and bottom tiles
var vrepeats=ceil((textHeight+border*2)/16);
vrepeats=max(vrepeats,2); //Make sure its at least 2

//Now I'm going to make sure that this does not display off screen, but sometimes I deliberately display off screen
if (sign(xdraw)!=-1 and sign(ydraw)!=-1)
	{
		//Get the relative coordinates
		var xdrawRelative=xdraw;
		while (xdrawRelative>=480)
			xdrawRelative-=480;
			
		var ydrawRelative=ydraw;
		while (ydrawRelative>=270)
			ydrawRelative-=270;
		
		var xadjustment=0;
		var yadjustment=0;
		
		//Now check if they're off screen
		if (xdrawRelative+16*hrepeats>480)
			xadjustment=xdrawRelative-(480-16*(hrepeats+1));
		
		//The continue button needs 42px
		if (ydrawRelative+16*vrepeats+42>270)
			yadjustment=ydrawRelative-(270-16*(vrepeats+1)-42);
			
		//xadjustment and yadjustment are both POSITIVE
		xdraw-=xadjustment;
		ydraw-=yadjustment;
	}

/*Use binary operators for this
 1
8t2
 4*/
for (var i=0; i<hrepeats; i+=1)
	{
		for (var j=0; j<vrepeats; j+=1)
			{
				var tile=0; //blank tile
				//Tile to the right
				if (i<hrepeats-1)
					tile=tile|2;
				//Tile to the left
				if (i>0)
					tile=tile|8;
				//Tile below
				if (j<vrepeats-1)
					tile=tile|4;
				//Tile above
				if (j>0)
					tile=tile|1;
				
				var tilLeft=tile*16;
				draw_sprite_part(spr_9slice,0,tilLeft,0,16,16,xdraw+i*16,ydraw+j*16);
			}
	}
	
draw_text_ext(xdraw+border,ydraw+border,text,basicHeight,maxWidth-border*2);

draw_set_alpha(1);

//Create a continue button
if (child==noone)
	{
		child=instance_create_layer(xdraw+hrepeats*16-64,ydraw+vrepeats*16+8,layer,obj_continueButton);
		child.owner=id;
	}