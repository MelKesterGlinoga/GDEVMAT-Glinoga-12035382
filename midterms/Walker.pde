public class Walker {
  
  public PVector position = new PVector();
  public float x;
  public float y; 

  public Walker(){}
  
  public void render(float scale)
  {
    circle(position.x, position.y, scale);
  }
}
