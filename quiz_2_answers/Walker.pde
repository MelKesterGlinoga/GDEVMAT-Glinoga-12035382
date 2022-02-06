class Walker
{
  float x;
  float y;
  
  void render()
  {
    circle(x,y, 30);
  }
  
  void randomizedColor()
  {
    int rngRed = int(random(255));
    int rngGreen = int(random(255));
    int rngBlue = int(random(255));
    int rngAlpha = int(random(50, 100));
    
    strokeWeight(0);
    fill(rngRed, rngGreen, rngBlue, rngAlpha);
  }
  
  void randomWalk()
  {
    int rng = int(random(8));
    
    if (rng == 0) // up
    {
      randomizedColor();
      y+=10;
    }
    else if (rng == 1) // down
    {
      randomizedColor();
      y-=10;
    }
    else if (rng == 2) // right
    {
      randomizedColor();
      x+=10;
    }
    else if (rng == 3) // left
    {
      randomizedColor();
      x-=10;
    }
    else if (rng == 4) // up right
    {
      randomizedColor();
      y+=10;
      x+=10;
    }
    else if (rng == 5) // up left
    {
      randomizedColor();
      y+=10;
      x-=10;
    }
    else if (rng == 6) // down right
    {
      randomizedColor();
      y-=10;
      x+=10;
    }
    else if (rng == 7) // down left
    {
      randomizedColor();
      y-=10;
      x-=10;
    }
  }
  
  void randomWalkBiased()
  {
    int rng = int(random(9));
    
    if (rng == 0) // up
    {
      y+=10;
    }
    else if (rng == 1) // down
    {
      y-=10;
    }
    else if (rng == 2) // right
    {
      x+=10;
    }
    else if (rng == 3) // left
    {
      x-=10;
    }
    else if (rng == 4) // up right
    {
      y+=10;
      x+=10;
    }
    else if (rng == 5) // up left
    {
      y+=10;
      x-=10;
    }
    else if (rng == 6) // down right
    {
      y-=10;
      x+=10;
    }
    else if (rng == 7) // down left
    {
      y-=10;
      x-=10;
    }
    else if (rng == 8) // up (biased)
    {
      y+=10;
    }
  }
  
}
