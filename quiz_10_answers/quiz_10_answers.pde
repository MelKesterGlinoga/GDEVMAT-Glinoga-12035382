Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker myWalker = new Walker();
Walker[] tenWalkers = new Walker[10];

PVector wind = new PVector(0.1, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //myWalker.position = new PVector(0, 300);
  //myWalker.mass = 5;
  //myWalker.scale = myWalker.mass * 10;
  
  float posX = 0;
  
  for (int i = 0; i < tenWalkers.length; i++)
  {
    posX = 2 * (Window.windowWidth / 10) * (i - 5);
    tenWalkers[i] = new Walker();
    tenWalkers[i].mass = 15 - i;
    tenWalkers[i].scale = tenWalkers[i].mass * 10;
    tenWalkers[i].position = new PVector(posX, 200);
  }
}

void draw()
{
  background(255);
  
  ocean.render();
  
  for (Walker w : tenWalkers)
  {
    w.render();
    w.update();
    
    PVector gravity = new PVector(0, -0.15f * w.mass);
    w.applyForce(gravity);
    w.applyForce(wind);
    
    float c = 0.1f;
    float normal = 1;
    float frictionMagnitude = c * normal;
    PVector friction = w.velocity.copy();
    // F = -uNv
    w.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude)); // applying friction to walker
    
    if (w.position.y <= Window.bottom)
    {
      w.position.y = Window.bottom;
      w.velocity.y *= -1;
    }
  
    if (ocean.isCollidingWith(w))
    {
      PVector dragForce = ocean.calculateDragForce(w);
      w.applyForce(dragForce);
    }
    
    if (w.position.y <= Window.bottom)
    {
       w.velocity.y *= -1; // Newton's Third Law of Motion
    }
  
    if (w.position.x <= Window.left)
    {
       w.velocity.x *= -1; // Newton's Third Law of Motion
    }
  
     if (w.position.x >= Window.right)
    {
       w.velocity.x *= -1; // Newton's Third Law of Motion
    }
  }
  
  //myWalker.render();
  //myWalker.update();
  
  //PVector gravity = new PVector(0, -0.25 * myWalker.mass);
  //myWalker.applyForce(gravity); // applying gravity to walker
  
  //float c = 0.1f;
  //float normal = 1;
  //float frictionMagnitude = c * normal;
  //PVector friction = myWalker.velocity.copy();
  //// F = -uNv
  //myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude)); // applying friction to walker
  
  //if (myWalker.position.y <= Window.bottom)
  //{
  //  myWalker.position.y = Window.bottom;
  //  myWalker.velocity.y *= -1;
  //}
  
  //if (ocean.isCollidingWith(myWalker))
  //{
  //  PVector dragForce = ocean.calculateDragForce(myWalker);
  //  myWalker.applyForce(dragForce);
  //}
}
