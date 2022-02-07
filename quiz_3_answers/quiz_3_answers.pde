void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(0);
}

void draw()
{
  float gaussian = randomGaussian();
  println(gaussian);
  
  float standardDeviationX = 100; // spread
  float meanX = random(-200, 200); // position x axis
  
  float randY = random(-720 / 2, 720 / 2);
  
  float x = standardDeviationX * gaussian + meanX;
  float y = randY;
  
  int rngR = int(random(255));
  int rngG = int(random(255));
  int rngB = int(random(255));
  int rngAlpha = int(random(10, 100));
  
  float standardDeviationSize = 30;
  float meanSize = random(20, 40);
  
  float circleSize = standardDeviationSize * gaussian + meanSize;
  
  noStroke();
  fill(rngR, rngG, rngB, rngAlpha);
  
  circle(x, y, circleSize);
  
  if (frameCount == 300)
  {
    background(0);
    frameCount = 0;
  }
}
