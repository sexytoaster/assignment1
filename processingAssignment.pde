boolean spore;
Border border;
Star[] stars = new Star[800];
ShipTop top;
Grid grid;
BlackAlert blackAlert;
Logo logo;
SporeDrive sporeDrive;



void setup()
{
  fullScreen();
  logo = new Logo (100, 150);
  sporeDrive = new SporeDrive(width/2, height/2);
  border = new Border(50);
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
  top.render();
  spore = blackAlert.render();
  border.update(spore);
  border.render();;
  translate(2800, 1500);
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  translate(-2800, -1500);
  
  logo.update();
  logo.render();
  sporeDrive.update();
  sporeDrive.render();




}