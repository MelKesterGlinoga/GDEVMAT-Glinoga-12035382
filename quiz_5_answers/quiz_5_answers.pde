//PImage img;

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  //img = loadImage("dvd.jpg");
}

Walker myWalker = new Walker();

PVector position = new PVector();
PVector speed = new PVector(4, 4);

void draw()
{
  // flush the screen w/ white bg
  background(255);
  
  myWalker.randomWalk();
  myWalker.render();
  
  moveAndBounce();
}

void moveAndBounce()
{
  //add speed to current position
  position.add(speed);
  
  // bounce p6
  if ((position.x > Window.right) || (position.x < Window.left))
  {
    speed.x *= -1;
  }
  if ((position.y > Window.top) || (position.y < Window.bottom))
  {
    speed.y *= -1;
  }
  
  //render the circle
  fill(182, 52, 100);
  circle(position.x, position.y, 50);
  //image(img, position.x, position.y);
}
