/// @description draw cursor

var cursorSprite;

switch (cursorType)
	{
		case Cursor.Bread:
			cursorSprite=spr_breadCursor;
			break;
		case Cursor.Coin:
			cursorSprite=spr_coinCursor;
			break;
		case Cursor.Candle:
			cursorSprite=spr_candleCursor;
			break;
		case Cursor.Dynamite:
			cursorSprite=spr_dynamiteCursor;
			break;
		case Cursor.DynamiteLit:
			cursorSprite=spr_dynamiteLitCursor;
			break;
		case Cursor.DynamiteBread:
			cursorSprite=spr_dynamiteBreadCursor;
			break;
		case Cursor.LitDynamiteBread:
			cursorSprite=spr_litDynamiteBreadCursor;
			break;
		case Cursor.Glue:
			cursorSprite=spr_glueCursor;
			break;
		case Cursor.Knife:
			cursorSprite=spr_knifeCursor;
			break;
		default:
			cursorSprite=spr_mouseCursor;
			if (global.mouseOver==true)
				cursorSprite=spr_mouseCursorOver;
			break;
	}
	
var alpha=1;
if (global.mouseOver==true)
	alpha=0.5;
draw_sprite_ext(cursorSprite,0,mouse_x,mouse_y,1,1,0,c_white,alpha);