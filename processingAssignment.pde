//bools to control the flow of the rogram
boolean spore;
boolean trigger;
boolean sporeOnline;
//declare all our objects
Border border;
Star[] stars = new Star[800];
Mycelium[] mycelium = new Mycelium[1000];
ShipTop top;
Grid grid;
BlackAlert blackAlert;
Logo logo;
SporeDrive sporeDrive;



void setup()
{
  fullScreen();
  //create objects
  logo = new Logo (100, 150);
  sporeDrive = new SporeDrive(width/2, height/2);
  border = new Border(50);
  blackAlert = new BlackAlert(2600, 300, 500, 100);
  top = new ShipTop(0, 600);
  grid = new Grid();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i < mycelium.length; i++)
  {
    mycelium[i] = new Mycelium();
  }
}


void draw()
{
  //render and update objects
  background(#031F29);
  grid.render();
  //spore is used to keep track of the bkack alert status
  spore = blackAlert.render();
  //spore online is to see if the spore drive is charged to 100%
  sporeOnline = top.update(spore);
  top.render();
  border.update(spore);
  border.render();
  translate(2800, 1500);
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  translate(-2800, -1500);
 if(spore)
 {
  for(int i = 0; i < mycelium.length; i++)
  {
    mycelium[i].update(trigger);
    mycelium[i].render();
  }
 }
  logo.render();
  sporeDrive.update(spore);
  trigger = sporeDrive.render(sporeOnline);




}