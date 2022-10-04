void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  int numDots = 0;
  background(209, 230, 255);
   for(int y = 0; y<450; y+=50){
  for(int x = 0; x<500; x+=50){
  Die bob = new Die(x,y);
  bob.show();
   if(bob.dice == 1)
     numDots+=1;
   else if(bob.dice == 2)
     numDots+=2;
   else if(bob.dice == 3)
     numDots+=3;
   else if(bob.dice == 4)
     numDots+=4;
   else if(bob.dice == 5)
     numDots+=5;
   else if(bob.dice == 6)
     numDots+=6;
  }
   } 
   textSize(20);
   text("Total: " + numDots,250,490);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  int dice;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY= y;
  }
  void roll()
  {
    dice = (int)(Math.random()*6)+1;
  }
  void show()
  { 
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if (dice == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (dice == 2) {
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
    }
    if (dice == 3) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (dice == 4) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    }
    if (dice == 5) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    }
    if (dice == 6) {
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      }
    }
  }
