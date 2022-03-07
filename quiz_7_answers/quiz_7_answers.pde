Walker myWalker = new Walker();
Walker[] randCircle = new Walker[200];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //myWalker.velocity = new PVector(3, 3);
  
  for (int i = 0; i < randCircle.length; i++)
  {
    float randX = random(-640, 640);
    float randY = random(-360, 360);
    fill(random(255), random(255), random(255));
  
    randCircle[i] = new Walker();
    randCircle[i].position.x = randX;
    randCircle[i].position.y = randY;
  }
}

  PVector mousePos()
  {
    float x = mouseX - Window.windowWidth;
    float y = -(mouseY - Window.windowHeight);
    return new PVector(x, y);
  }

/* Vector Motion 101

    1. Add velocity to position
    2. Draw the object at position
*/

void draw()
{
  background(80);
  
  PVector mouse = mousePos();
  
  for (int i = 0; i < randCircle.length; i++)
  {
    noStroke();
    //fill(255, 255, 255);
    
    PVector direction = PVector.sub(mouse, randCircle[i].position);
    direction.normalize().mult(7);
    randCircle[i].position.add(direction);
    randCircle[i].acceleration = new PVector(random(-5, 5), random(-5, 5));
    
    randCircle[i].update();
    randCircle[i].render();
    randCircle[i].checkEdges();
  }
  
  //myWalker.acceleration = new PVector(10, 10);
  
  //PVector direction = PVector.sub(mouse, myWalker.position);
  //direction.normalize().mult(5);
  //myWalker.position.add(direction);
  
  //myWalker.update();
  //myWalker.render();
  //myWalker.checkEdges();
}
