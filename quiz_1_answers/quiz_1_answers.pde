// function that gets called in the very first frame
void setup ()
{
  size(1280, 720, P3D);  //sets the screen size to 1280x720
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

//function that gets called every frame
void draw()
{
  background(0);  //backgorund color, 0 - 255, sets the window's background
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
  
  //circle(0, 0, 50);  //draws a sirkel
  
  //strokeWeight(2);  // changes thickness of the line below it
  //color white = color(255, 255, 255);  //declare color variable rgb codes
  //fill (white);  //fills with the color selected
  //stroke (white);
  //line(-75, -75, 75, 75); // draws a line
}

void drawCartesianPlane()
{
  strokeWeight(2);
  color white = color(255, 255, 255);
  fill (white);
  stroke (white);
  
  line(0, 300, 0, -300);  // variables are x1, y1, x2, y2
  line (300, 0, -300, 0);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i ,2, i);
  }
}

void drawLinearFunction()
{
  /*
      f(x) = -5x + 30 
      Let x be 4, then y =     (4, 10)
  */
  
  color purple = color(255, 0, 255);
  fill(purple);
  noStroke();
  
  for (int x = -300; x <= 300; x++)
  {
    circle(x, (-5 * x) + 30, 5);
  }
}

void drawQuadraticFunction()
{
  /*
      f(x) = x^2 - 15x - 3 
      Let x be 6, then y = -57
  */
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, (x * x) - (15 * x) - 3, 5); 
  }
}

void drawCircle()
{
  color pink = color(255, 53, 184);
  fill(pink);
  stroke(pink);
  float radius = 10;
  
  for (int x = -50; x <= 50; x++)
  {
    circle(x * radius, (float)Math.sin(x) * radius, 5);
  }
}
