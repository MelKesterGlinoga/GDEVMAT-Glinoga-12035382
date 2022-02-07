public class Walker
{
  public float x;
  public float y;
  public float tx = 0, ty = 10000;
  public float ts = 30;
  public float size;
  
  void render()
  {
    circle(x, y, size);
  }
  
  void perlinWalk()
  {
    size = map(noise(ts), 0, 1, 10, 100);
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    ts += 0.01f;
    tx += 0.01f;
    ty += 0.01f;
  }
}
