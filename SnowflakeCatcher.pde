Snowflake[] snow;
void setup()
{
  frameRate(8);
  noStroke();
  size(500,500);
  snow = new Snowflake[80];
  for (int i=0; i< snow.length; i++)
  {
    snow[i] = new Snowflake((int)(Math.random()*500),(int)(Math.random()*500));
  }
}
void draw()
{
  background(0);
  for (int i=0; i< snow.length; i++)
  {
    snow[i].move();
    snow[i].show();
    snow[i].lookDown();
  }
}
void mouseDragged()
{
  //your code here
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
    ellipse(myX,myY,7,7);
  }
  void lookDown()
  {
    for (int i=0; i< snow.length; i++)
    {
      if (snow[i].myY>500)
      {
        snow[i].myY=0;
      }
    }
  }
  void erase()
  {
    fill(0);
    ellipse(myX,myY,7,7);
  }
  void move()
  {
    for (int i=0; i< snow.length; i++)
    {
      if (snow[i].isMoving)
      {
        snow[i].myY=snow[i].myY+1;
      }
    }
  }
  void wrap()
  {
    //your code here
  }
}


