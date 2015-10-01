Snowflake[] snow;
void setup()
{
  frameRate(8);
  noStroke();
  size(500,500);
  snow = new Snowflake[80];
  for (int i=0; i< snow.length; i++)
  {
    snow[i] = new Snowflake((float)(Math.random()*490)+5,(float)(Math.random()*490)+5);
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
  float myY, myX, speed;
  Snowflake(float x, float y)
  {
    myY = y;
    myX = x;
    speed = (float)(Math.random());
  }
  void show()
  {
    ellipse(myX,myY,10,10);
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
    //your code here
  }
  void move()
  {
    for (int i=0; i< snow.length; i++)
    {
      System.out.println(snow[i].speed);
      myY= myY + snow[i].speed;
    }
  }
  void wrap()
  {
    //your code here
  }
}


