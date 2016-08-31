int startX = mouseX;
int startY = 0;
int endX = mouseX + (int)((Math.random()-0.5)*18);
int endY = 0;
int backRed = (int)(Math.random()*255);
int backGreen = (int)(Math.random()*255);
int backBlue = (int)(Math.random()*255);

void setup()
{
	background(backRed, backGreen, backBlue);
    size(400,400);
}

void draw()
{	
	lightning();
}

void mousePressed()
{
	lightning();
}

void lightning()
{
	int red = (int)(Math.random() *255);
	int green = (int)(Math.random() *255);
	int blue = (int)(Math.random() *255);
	stroke(red, green, blue);
    endX = endX + (int)((Math.random()-0.5)*18);
    endY = endY + (int)(Math.random()*12);
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    if (endY > 400)
    {
    	noLoop();
    }
}