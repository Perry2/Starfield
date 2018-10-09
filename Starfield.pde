//your code here
void setup()
{
	size(500,500);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
	int myColor = (int)(Math.random(50, 255));;

	NormalParticle(double x, double y)
	{
		myX = x;
		myY = y;
	}

	void show()
	{
		fill(myColor);
		ellipse(myX,myY,10,10);
	}
	void move()
	{
		mySpeed = 0;
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
}
class JumboParticle implements Particle//uses inheritance
{
	public void show()
	{
		fill(255);
		rect(x, y, 25, 25);
	}
	public void move()
	{

	}
}

