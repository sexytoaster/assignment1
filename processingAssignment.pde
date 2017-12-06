Star[] stars = new Star[800];

float speed;


void setup()
{
  fullScreen();
  top = new ShipTop(0, 0);
  power = new PowerMeter(10, 1500, 1500);
  grid = new Grid();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

ShipTop top;
PowerMeter power;
Grid grid;

void draw()
{
  background(#031F29);
  grid.render();
  top.render();
  //power.render();
  
  translate(2800, 1500);
  
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}