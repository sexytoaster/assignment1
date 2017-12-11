color borderColour;
Border border;
Star[] stars = new Star[800];
ShipTop top;
Grid grid;
BlackAlert blackAlert;
Logo logo;
//Slider slider;


void setup()
{
  borderColour = 255;
  fullScreen();
  //slider = new Slider(500, 1000, 300, 50);
  logo = new Logo (100, 150);
  border = new Border(50, borderColour);
  blackAlert = new BlackAlert(2600, 300, 500, 100);
  top = new ShipTop(0, 600);
  grid = new Grid();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}


void draw()
{
  background(#031F29);
  grid.render();
  border.render();
  top.render();
  borderColour = blackAlert.render();
  border.update(borderColour);
  logo.update();
  logo.render();
  translate(2800, 1500);
  
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}