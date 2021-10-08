void setup()
{
  size(400,400);
  noLoop();
}
int sum = 0;
void draw()
{
  fill(0);
  sum= 0;
  background(#CFD1E3);
  for(int y = 5; y <=350; y = y+40)
  {
    for(int x = 5; x<=400; x = x+40)
    {
      Die  m = new Die(x,y);
      m.show();

    }

  }
  for(int y = 365; y <=400; y = y+40)
  {
    for(int x = 5; x<=160; x = x+40)
    {
      Die  c = new Die(x,y);
      c.show();

    }

  }
  for(int y = 365; y <=400; y = y+40)
  {
    for(int x = 245; x<=400; x = x+40)
    {
      Die  a = new Die(x,y);
      a.show();

    }

  }
 fill(0);
 text("Total: " + sum, 173, 383);
}
void mousePressed()
  {
      redraw();
  }
class Die
{
  int myX, myY, myDots;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
    sum = sum+ myDots;

  }
  void roll()
  {

  myDots = (int)(Math.random()*6)+1;



  }
  void show()
  {
    noStroke();
    fill(230,230,230);
    rect(myX,myY,30,30,10);

    if (myDots == 1){
    noStroke();
    fill(0);
    ellipse(myX+15,myY+15,5,5);
    }
    else if (myDots == 2){
    noStroke();
    fill(0);
    ellipse(myX+10,myY+15,5,5);
    ellipse(myX+20,myY+15,5,5); 
    }
    else if (myDots  == 3){
    noStroke();
    fill(0);
    ellipse(myX+10,myY+20,5,5); 
    ellipse(myX+15,myY+10,5,5);
    ellipse(myX+20,myY+20,5,5); 
    }
    else if (myDots  == 4){
    noStroke();
    fill(0);
    ellipse(myX+10,myY+20,5,5); 
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+20,myY+20,5,5); 
    ellipse(myX+20,myY+10,5,5);
    }
    else if (myDots ==5){
    noStroke();
    fill(0);
    ellipse(myX+10,myY+20,5,5); 
    ellipse(myX+10,myY+10,5,5);
    ellipse(myX+20,myY+20,5,5); 
    ellipse(myX+20,myY+10,5,5);
    ellipse(myX+15,myY+15,5,5);
    }
else if (myDots == 6){
    noStroke();
    fill(0);
    ellipse(myX+10,myY+22,5,5); 
    ellipse(myX+10,myY+8,5,5);
    ellipse(myX+20,myY+22,5,5); 
    ellipse(myX+20,myY+8,5,5);
    ellipse(myX+10,myY+15,5,5);
    ellipse(myX+20,myY+15,5,5);
    }

  }

}
