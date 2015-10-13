PImage money;
PImage star;
PImage eraser;
Snowflake[] snow;
Snowflake[] snow2;
void setup()
{
  star = loadImage("communism.png");
  eraser = loadImage("eraser.png");
  money = loadImage("DOLLABILLS.png");
  background(0);
  frameRate(40);
  noStroke();
  size(800,800);
  snow = new Snowflake[250];
  for (int i=0; i< snow.length; i++)
  {
    snow[i] = new Snowflake((int)(Math.random()*790)+5,(int)(Math.random()*790)+5);
  }
}
void draw()
{
  for (int i=0; i< snow.length; i++)
  {
    snow[i].erase();
    snow[i].wrap();
    snow[i].lookdown();
    snow[i].move();
    snow[i].show();
  }
}
void mouseDragged()
{
  if(mouseButton==LEFT)
  {
    if (frameCount%3 == 0)
    {
      image(money,mouseX,mouseY);
    }
  }
  if(mouseButton==RIGHT)
  {
    fill(0);
    ellipse(mouseX,mouseY,30,30);
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
    image(star,myX,myY);
  }
  void wrap()
  {
    if (myY>790)
    {
      myY=-30;
    }
  }
  void erase()
  {
    image(eraser,myX,myY);
  }
  void move()
  {
    if(isMoving)
    {
      myY=myY+2;
    } 
  }
  void lookdown()
  {
    if(get(myX,myY+38) == color(0,194,0) || get(myX,myY+38) == color(0,220,0))
    {
      isMoving=false;
    }
    else if(get(myX+34,myY+38) == color(0,194,0) || get(myX+34,myY+38) == color(0,220,0))
    {
      isMoving=false;
    }
    else if(get(myX+17,myY+38) == color(0,194,0) || get(myX+17,myY+38) == color(0,220,0))
    {
      isMoving=false;
    }
    else
    {
      isMoving=true;
    } 
  }
}
