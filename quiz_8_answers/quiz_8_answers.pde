Walker walker = new Walker();
Walker[] tenWalkers = new Walker[10];

PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //walker.mass = 2;
  //walker.scale = walker.mass * 15;
  
  for (int i = 0; i < tenWalkers.length; i++)
  {
    tenWalkers[i] = new Walker();
    tenWalkers[i].mass = i + 1;
    tenWalkers[i].scale = tenWalkers[i].mass * 15;
    tenWalkers[i].position.x = -500;
    tenWalkers[i].position.y = 200;
  }
}

void draw()
{
  background(80);
  
  for (int i = 0; i < tenWalkers.length; i++)
  {
    tenWalkers[i].render();
    tenWalkers[i].update();
    tenWalkers[i].applyForce(wind);
    tenWalkers[i].applyForce(gravity);
  
      if (tenWalkers[i].position.y <= Window.bottom)
    {
       tenWalkers[i].velocity.y *= -1; // Newton's Third Law of Motion
    }
  
    if (tenWalkers[i].position.x <= Window.left)
    {
       tenWalkers[i].velocity.x *= -1; // Newton's Third Law of Motion
    }
  
     if (tenWalkers[i].position.x >= Window.right)
    {
       tenWalkers[i].velocity.x *= -1; // Newton's Third Law of Motion
    }
  }
  
  //walker.render();
  //walker.update();
  //walker.applyForce(wind);
  //walker.applyForce(gravity);
  
  //if (walker.position.y <= Window.bottom)
  //{
  //   walker.velocity.y *= -1; // Newton's Third Law of Motion
  //}
  
  //if (walker.position.x <= Window.left)
  //{
  //   walker.velocity.x *= -1; // Newton's Third Law of Motion
  //}
  
  // if (walker.position.x >= Window.right)
  //{
  //   walker.velocity.x *= -1; // Newton's Third Law of Motion
  //}
}
