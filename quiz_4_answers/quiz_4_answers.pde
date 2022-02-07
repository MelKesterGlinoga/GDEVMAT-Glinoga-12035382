void setup()
{
  size(1280, 720, P3D);
  background(0);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker perlinWalker = new Walker();
float tr = 255;
float tg = 255;
float tb = 255;

void draw()
{
  float nr = noise(tr);
  float red = map(nr, 0, 1, 0, 255);
  
  float ng = noise(tg);
  float green =  map(ng, 0, 1, 0, 255);
  
  float nb = noise(tb);
  float blue =  map(nb, 0, 1, 0, 255);
  
  tr += 0.04f;
  tg += 0.05f;
  tb += 0.06f;
  
  fill(red, green, blue);
  noStroke();
  
  perlinWalker.render();
  perlinWalker.perlinWalk();
}
