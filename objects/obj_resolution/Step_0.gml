/// @description

if (os_browser!=browser_not_a_browser)	{
	var windowWidth=480;
	var windowHeight=270;
	
	var scale=1;

	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
		if (displayHeight>displayWidth)	{
			var temp=displayWidth;
			displayWidth=displayHeight;
			displayHeight=temp;
		}
		
	while (windowWidth*(scale)<displayWidth and windowHeight*(scale)<displayHeight)
		scale+=1;
		
	//DEBUG - REDUCE SCALE BY 1 BECAUSE OTHERWISE IT OVER-FILLS THE SCREEN
	//scale-=1;
	//DEBUG - REMOVE FOR RELEASE BUILD

	window_set_size(windowWidth*scale,windowHeight*scale);
	
	//We will maximise for when we can't scale up to 2, for small screens like phones
	if (windowWidth*2>displayWidth)	{
		window_set_size(displayWidth,displayHeight);
		display_reset(1,true);
	}
}