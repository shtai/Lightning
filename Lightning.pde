int startX = 200;
int startY = 0;
int endX = 200;
int endY = 0;
void setup()
{
    size(400,400);
}
void draw()
{
    lightning();
}
void mousePressed()
{
    redraw();
}
void lightning()
{
	int red = (int)(Math.random() *255);
	int green = (int)(Math.random() *255);
	int blue = (int)(Math.random() *255);
	stroke(red, green, blue);
    endX = endX + (int)((Math.random()-0.5)*18);
    endY = endY + (int)(Math.random()*9);
    line (startX, startY, endX, endY);
    startX = endX;
    startY = endY;
}