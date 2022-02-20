void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  
  strokeWeight(20);
  stroke(255, 0, 0);
  PVector mouse = mousePos();
  mouse.normalize().mult(500);
  line(0, 0, mouse.x, mouse.y);

  //outerstroke
  strokeWeight(10);
  stroke(255, 255, 255);
  PVector mouseTwo = mousePos();
  mouseTwo.normalize().mult(500);
  line(0, 0, mouseTwo.x, mouseTwo.y);
  
  //handle
  strokeWeight(25);
  stroke(0, 0, 0);
  PVector mouseThree = mousePos();
  mouseThree.normalize().mult(100);
  line(0, 0, mouseThree.x, mouseThree.y);
  
  strokeWeight(20);
  stroke(255, 0, 0);
  PVector mouseFour = mousePos();
  mouseFour.normalize().mult(-500);
  line(0, 0, mouseFour.x, mouseFour.y);

  //outerstroke
  strokeWeight(10);
  stroke(255, 255, 255);
  PVector mouseFive = mousePos();
  mouseFive.normalize().mult(-500);
  line(0, 0, mouseFive.x, mouseFive.y);
  
  //handle
  strokeWeight(25);
  stroke(0, 0, 0);
  PVector mouseSix= mousePos();
  mouseSix.normalize().mult(-100);
  line(0, 0, mouseSix.x, mouseSix.y);
  
  //mouse.mult(2);
  //println(mouse.mag());
}
