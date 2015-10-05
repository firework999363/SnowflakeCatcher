Snowflake[] snow;
Snowflake[] snow2;
void setup()
{
  background(0);
  frameRate(40);
  noStroke();
  size(500,500);
  snow = new Snowflake[150];
  snow2 = new Snowflake[150];
  for (int i=0; i< snow.length; i++)
  {
    snow[i] = new Snowflake((int)(Math.random()*490)+5,(int)(Math.random()*490)+5);
  }
  for (int i=0; i< snow2.length; i++)
  {
    snow2[i] = new Snowflake((int)(Math.random()*490)+5,(int)(Math.random()*490)+5);
  }
}
void draw()
{
  for (int i=0; i< snow.length; i++)
  {
    snow[i].erase();
    snow[i].lookdown();
    snow[i].move();
    snow[i].show();
    snow[i].wrap();
  }
  for (int i=0; i< snow2.length; i++)
  {
    snow[i].erase2();
    snow[i].lookdown2();
    snow2[i].wrap();
    snow2[i].move2();
    snow2[i].show2();
  }
}
void mouseDragged()
{
  if(mouseButton==LEFT)
  {
    fill(100);
    ellipse(mouseX,mouseY,7,7);
  }
}
class Snowflake
{
  int myY, myX;
  boolean isMoving;
  Snowflake(int x, int y)
  {
    isMoving = true;
    myX=x;
    myY=y;
  }
  void show()
  {
    fill(255);
    ellipse(myX,myY,7,7);
  }
  void show2()
  {
    fill(255);
    ellipse(myX,myY,9,9);
  }
  void wrap()
  {
      if (myY>495)
      {
        myY=0;
      }
  }
  void erase()
  {
    fill(0);
    ellipse(myX,myY-2,9,9);
  }
  void erase2()
  {
    fill(0);
    ellipse(myX,myY-1,11,11);
  }
  void move()
  {
    if(isMoving)
    {
      myY=myY+2;
    } 
  }
  void move2()
  {
    if(isMoving)
    {
      myY++;
    }
  }
  void lookdown()
  {
    if(get(myX+3,myY+3) !=color(0,0,0))
    {
      isMoving=false;
    }
    else if(get(myX-3,myY+3) !=color(0,0,0))
    {
      isMoving=false;
    }
    else
    {
      isMoving=true;
    } 
  }
  void lookdown2()
  {
    if(get(myX+4,myY+4) !=color(0,0,0))
    {
      isMoving=false;
    }
    else if(get(myX-4,myY+4) !=color(0,0,0))
    {
      isMoving=false;
    }
    else
    {
      isMoving=true;
    } 
  }
}


