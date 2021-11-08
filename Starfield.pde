Bees[] bob = new Bees[300];
void setup()
{
  size(1000,1000);
  background(93,199,255);
  for(int i = 0 ; i< bob.length ; i++){
  bob[i] = new Bees();
  }
  bob[0] = new OddballHive();
}
void draw()
{
  background(93,199,255);
  for(int i = 0; i<bob.length -1; i++){
    bob[i].show();
    bob[i].move();
  }
    bob[0].show();
  bob[0].move();
}
class Bees
{
    double myX, myY, myAngle, mySpeed;
  Bees(){
     myX = 500;
     myY = 500;
     mySpeed = Math.random()*6;
     myAngle = Math.random()*360;
  }
  void show(){
stroke(255,204,3);
    stroke(0);
    strokeWeight(1);
    fill(255,234,147);
    ellipse((float)myX, (float)myY, 30,20); //bee body
    fill(211,255,254); 
    ellipse((float)myX+2, (float)myY-10, 15,15); //wings
    strokeWeight(5);
    stroke(0);
    line((float)myX-1,(float)myY+8,(float) myX-1, (float)myY-5);

  }
  void move(){
    myX=myX+(float)Math.cos(myAngle)*mySpeed;
    myY=myY+(float)Math.sin(myAngle)*mySpeed;
  }
}

class OddballHive extends Bees //inherits from Particle
{
  OddballHive(){
    myX = 500;
    myY = 500;
    mySpeed = 0;
  }
  void show(){ // bee hive
  strokeWeight(2);
  fill(255,203,31);
  ellipse((float)myX, (float)myY, 60,70);
  fill(0);
  noStroke();
  ellipse((float)myX-25, (float)myY, 10,30);
  ellipse((float)myX+25, (float)myY, 10,30);
  ellipse((float)myX, (float)myY+30, 30,10);
  }
}
