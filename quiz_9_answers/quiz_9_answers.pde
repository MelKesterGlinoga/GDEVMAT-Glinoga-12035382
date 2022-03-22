Walker[] walkers = new Walker[8];

PVector acceleration = new PVector(0.2, 0);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  int posY = 0;
  
  for (int i = 0; i < walkers.length; i++)
  {
    posY = 2 * (Window.windowHeight / 8) * (i - 4);
    walkers[i] = new Walker();
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    walkers[i].position = new PVector(-500, posY);
  }
}

void draw()
{
  background(80);
  
  line(0, 360, 0, -360);
  
  for (Walker w : walkers)
  {
    // Friction = -1 * mew * N * v
    
    float mew = 0.01; // coefficient of friction
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy(); // copies the current velocity of the walker
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    
    w.render();
    w.update();
    w.applyForce(acceleration);
    
    if (w.position.x >= 0)
    {
      mew = 0.4;
      normal = 1;
      frictionMagnitude = mew * normal;
      PVector frictionS = w.velocity.copy(); // copies the current velocity of the walker
      frictionS.mult(-1);
      frictionS.normalize();
      frictionS.mult(frictionMagnitude);
      w.applyForce(frictionS);
    }
    
    if (w.position.x >= Window.right)
    {
      w.position.x = Window.right;
      w.velocity.x *= -1;
    }
    
    if (w.position.y <= Window.bottom)
    {
      w.position.y = Window.bottom;
      w.velocity.y *= -1;
    }
    
    if (mousePressed == true)
    {
      setup();
    }
  }
}
