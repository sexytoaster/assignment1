color borderColour;
Border border;
Star[] stars = new Star[800];
Button[] buttons = new Button[10];
ShipTop top;
PowerMeter power;
Grid grid;
//Slider slider;


void setup()
{
  borderColour = 255;
  fullScreen();
  //slider = new Slider(500, 1000, 300, 50);
  border = new Border(50, borderColour);
  top = new ShipTop(0, 200);
  power = new PowerMeter(10, 1500, 1500);
  grid = new Grid();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  buttons[0] = new Button(1000, 1000, 200, 50);
}


void draw()
{
  background(#031F29);
  grid.render();
  border.render();
  top.render();
  borderColour = buttons[0].render();
  border.update(borderColour);   translate(2800, 1500);
  
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}