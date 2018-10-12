NormalParticle bob[];
void setup()
{
	size(500,500);
	bob = new NormalParticle[200];
	for (int i = 0; i < bob.length; i++) {
		bob[i] = new NormalParticle(250,250);
	}
	bob[0] = new OddballParticle();
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

	NormalParticle(double x, double y)
	{
		myX = x;
		myY = y;
		mySpeed = Math.random()*11;
		myAngle = Math.random()*360;
	}

	public void show()
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse((float)myX,(float)myY,10,10);
	}
	public void move()
	{
		myX = mySpeed * Math.cos(myAngle) + myX;
		myY = mySpeed * Math.sin(myAngle) + myY;
	}
}
interface Particle
{
	public void show();
	public void move();
		
}
class OddballParticle implements Particle//uses an interface
{
	OddballParticle{
		
	}
	public void show(){
		fill(0);
		rect(250, 250, 50, 50);
	}
	public void move(){
		myX = myX + (int)(Math.random()*11);
		myY = myY + (int)(Math.random()*11);
	}
}
class JumboParticle extends NormalParticles//uses inheritance
{
	public void show(){
		ellipse((float)myX,(float)myY,50,50);
	}
}

