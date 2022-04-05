Walker bigMatter = new Walker();
Walker smallMatter = new Walker();
Walker[] gWalker = new Walker[10];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < gWalker.length; i++)
  {
    gWalker[i] = new Walker();
    gWalker[i].mass = 15 - i;
    gWalker[i].scale = gWalker[i].mass * 10;
  }
  
  //bigMatter.position = new PVector();
  //bigMatter.mass = 20;
  //bigMatter.scale = bigMatter.mass * 10;
  
  //smallMatter.position = new PVector(150, 150);
  //smallMatter.mass = 10;
  //smallMatter.scale = smallMatter.mass * 10;
}

void draw()
{
  background(255);
  
  for (int i = 0; i < gWalker.length; i++)
  {
    gWalker[i].update();
    gWalker[i].render();
  }
  
  for (int i = 0; i < gWalker.length; i++)
  {
    for (int j = 0; j < i; j++)
    {
      gWalker[i].applyForce(gWalker[j].calculateAttraction(gWalker[i]));
      gWalker[j].applyForce(gWalker[i].calculateAttraction(gWalker[j]));
    }
  }
  
  //bigMatter.update();
  //bigMatter.render();
  
  //smallMatter.update();
  //smallMatter.render();
  
  //smallMatter.applyForce(bigMatter.calculateAttraction(smallMatter));
  //bigMatter.applyForce(smallMatter.calculateAttraction(bigMatter));
}
