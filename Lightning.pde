int startX = mouseX;
int startY = 0;
int endY;
int endX;
void setup()
{	
	int backRed = (int)(Math.random()*255);
	int backGreen = (int)(Math.random()*255);
	int backBlue = (int)(Math.random()*255);
	background(backRed, backGreen, backBlue);
    size(400,400);
    frameRate(500);
}

void draw()
{	

}

void mousePressed()
{
	
	lightning(mouseX, 0);
}

void lightning(int x, int y)
{
	stroke(255, 215, 0);
	strokeWeight(3);
	while (endY < 400)
	{
		endX = endX + (int)((Math.random()-0.5)*18);
    	endY = endY + (int)(Math.random()*25);
		startX = endX;
   		startY = endY;
   		line (x, y, endX, endY);
    	
	}
}