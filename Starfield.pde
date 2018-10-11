NormalParticle bob[];
void setup()
{
	size(500,500);
	bob = new NormalParticle[200];
	for (int i = 0; i < bob.length; i++) {
		bob[i] = new NormalParticle(250,250);
	}
}
void draw()
{
	for (int i = 0; i < bob.length; i++) {
		bob[i].show();
		bob[i].move();
	}

}
class NormalParticle
{
	double myX, myY, mySpeed, myAngle;
	color calor;

	NormalParticle(double x, double y)
	{
		myX = x;
		myY = y;
		mySpeed = (int)(Math.random()*11);
		myAngle = 2*Math.PI;
		calor = (int)(Math.random()*255);
	}

	void show()
	{
		fill(calor);
		ellipse((float)myX,(float)myY,10,10);
	}
	void move()
	{
		myX = mySpeed * Math.cos(2.03) * (myAngle) + myX;
		myY = mySpeed * Math.sin(2.03) * (myAngle) + myY;
	}
}
interface Particle
{
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
}
class JumboParticle implements Particle//uses inheritance
{
}

