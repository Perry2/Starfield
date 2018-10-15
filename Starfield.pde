Particle[] bob = new Particle[1000]; 
void setup()
{
	size(500,500);
	for (int i = 0; i < bob.length; i++) {
		bob[i] = new NormalParticle();
	}
	bob[0] = new OddballParticle();
	bob[1] = new JumboParticle();
}
void draw()
{
	background(0);
	for (int i = 0; i < bob.length; i++) {
		bob[i].show();
		bob[i].move();
	}
}
class NormalParticle implements Particle
{
	double myX, myY, mySpeed, myAngle;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*7;
		myAngle = Math.random()*(-960);
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
	double myX,myY;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
	}
	public void show(){
		fill(255);
		rect((float)myX, (float)myY, 50, 50);
	}
	public void move(){
		myX = myX + (int)(Math.random()*11)-2;
		myY = myY + (int)(Math.random()*11)-2;
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show(){
		ellipse((float)myX, (float)myY, 50, 50);
	}

}

