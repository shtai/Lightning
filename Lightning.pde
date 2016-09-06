int startX = mouseX;
int startY = 0;
int endX = mouseX;
int endY = 0;

void setup()
{	
	background(0);
    size(400,400);

}

void draw()
{	

}

void mousePressed()
{
	
	lightning();
}

void lightning()
{
	noStroke();
	fill(0);
	rect(0, 0, 400, 400);

	stroke(255, 215, 0);
	strokeWeight(3);
	while (endY < 400)
	{	
		startX = endX;
		startY = endY;
		endX = endX + (int)((Math.random()-0.5)*18);
		endY = endY + (int)(Math.random()*20);
		line(startX, startY, endX, endY);
		System.out.println("startX: "+startX);
		System.out.println("startY: "+startY);
		System.out.println("endX: "+endX);
		System.out.println("endY: "+endY);
	
	}
	if (endY > 400)
	{
		endY = 0;
	}
}


