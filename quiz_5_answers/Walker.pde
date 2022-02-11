class Walker
{
  PVector position = new PVector();
  PVector speedLR = new PVector(5, 0); // left and right
  PVector speedUD = new PVector(0, 5); // up and down
  //float x;
  //float y;
  
  void render()
  {
    circle(position.x, position.y, 30);
  }
  
  void singleColor()
  {
    fill(182, 52, 100);
    strokeWeight(0);
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
  
  void randomWalk() // PVector implementation
  {
    int rng = int(random(8));
    
    if (rng == 0) // up
    {
      position.add(speedUD);
    }
    
    else if (rng == 1) // down
    {
      position.sub(speedUD);
    }
    
    else if (rng == 2) // left
    {
      position.sub(speedLR);
    }
    
    else if (rng == 3) // right
    {
      position.add(speedLR);
    }
    
    else if (rng == 4) // up right
    {
      position.add(speedUD);
      position.add(speedLR);
    }
    
    else if (rng == 3) // up left
    {
      position.add(speedUD);
      position.sub(speedLR);
    }
    
    if (rng == 3) // down right
    {
      position.sub(speedUD);
      position.add(speedLR);
    }
    if (rng == 3) // down left
    {
      position.sub(speedUD);
      position.sub(speedLR);
    }
    
  }
  
  //void randomWalk()
  //{
  //  int rng = int(random(8));
    
  //  if (rng == 0) // up
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y+=10;
  //  }
  //  else if (rng == 1) // down
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y-=10;
  //  }
  //  else if (rng == 2) // right
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    x+=10;
  //  }
  //  else if (rng == 3) // left
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    x-=10;
  //  }
  //  else if (rng == 4) // up right
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y+=10;
  //    x+=10;
  //  }
  //  else if (rng == 5) // up left
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y+=10;
  //    x-=10;
  //  }
  //  else if (rng == 6) // down right
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y-=10;
  //    x+=10;
  //  }
  //  else if (rng == 7) // down left
  //  {
  //    //randomizedColor();
  //    singleColor();
  //    y-=10;
  //    x-=10;
  //  }
  //}
  
  //void randomWalkBiased()
  //{
  //  int rng = int(random(9));
    
  //  if (rng == 0) // up
  //  {
  //    y+=10;
  //  }
  //  else if (rng == 1) // down
  //  {
  //    y-=10;
  //  }
  //  else if (rng == 2) // right
  //  {
  //    x+=10;
  //  }
  //  else if (rng == 3) // left
  //  {
  //    x-=10;
  //  }
  //  else if (rng == 4) // up right
  //  {
  //    y+=10;
  //    x+=10;
  //  }
  //  else if (rng == 5) // up left
  //  {
  //    y+=10;
  //    x-=10;
  //  }
  //  else if (rng == 6) // down right
  //  {
  //    y-=10;
  //    x+=10;
  //  }
  //  else if (rng == 7) // down left
  //  {
  //    y-=10;
  //    x-=10;
  //  }
  //  else if (rng == 8) // up (biased)
  //  {
  //    y+=10;
  //  }
  //}
}
