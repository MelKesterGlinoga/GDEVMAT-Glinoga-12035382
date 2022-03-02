Walker blackhole = new Walker();
Walker target = new Walker();
Walker[] rngCircle = new Walker[100];

void setup()
{
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  size(1080, 720, P3D);
  background(0);
  
  blackhole.position.x = random(-540, 540);
  blackhole.position.y = random(-360, 360);
  
  blackhole.position.normalize();
    
  for (int i = 0; i < rngCircle.length; i++)
  {
    float gaussian = randomGaussian();
    float standardDeviationX = 200; // spread
    float meanX = random(-500, 500); // position x axis
    
    float randY = random(-360, 360);
    
    float cX = standardDeviationX * gaussian + meanX;
    float cY = randY;
  
    rngCircle[i] = new Walker();
    rngCircle[i].position.x = cX;
    rngCircle[i].position.y = cY;
  }
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw()
{
  background(0);
  
  noStroke();
  fill(255, 255, 255);
  blackhole.render(50);
  
  for (int i = 0; i < rngCircle.length; i++)
  {
    float circleSize = random(20, 40);
    
    noStroke();
    fill(random(255), random(255), random(255), 75);
    rngCircle[i].render(circleSize);
    
    PVector direction = PVector.sub(blackhole.position, rngCircle[i].position);
    
    println(direction);
    rngCircle[i].position.div(100).add(direction);
  }
  
  //PVector direction = PVector.sub(blackhole.position, rngCircle[i].position);
  ////println(direction);
  //rngCircle[i].position.normalize().mult(4).add(direction);
  
  
  //PVector direction = PVector.sub(blackhole.position, target.position);
  //println(direction);
  //target.position.normalize().mult(4).add(direction);
}
