class Logo 
{
  int x;
  int y;
  int x1;
  int y1;
  int x2;
  int y2;
  int x3;
  int y3;
  int x4;
  int y4;
  PFont logo;
  int d = day();
  int m = month();
  int year = year() - 1900;
  String syear = str(year);
  String sm = str(m);
  String sd = str(d);
  String stardate = "Stardate " + syear + sm + "." + sd;
  
  Logo(int x, int y)
  {
    this.x = x;
    this.y = y;
    x1 = 100;
    y1 = 0;
    x2 = 0;
    y2 = 300;
    x3 = 200;
    y3 = 270;
    x4 = 120;
    y4 = 170; 
    logo = loadFont("AmericanCaptainPatrius02FRE-100.vlw");
  }
  
  void update()
  {
   
  }
  
  void render()
  {
    translate(x, y);
    stroke(255);
    fill(255);
    textFont(logo);
    textSize(80);
    text("USS DISCOVERY", 200, 50);
    textSize(40);
    text(stardate, 200, 100);
    noFill();
    curve(250, 0, x1, y1, x2, y2, 175, 200);
    curve(-150, 0, x1, y1, x3, y3, 25, 200);
    curve(250, 200, x4, y4, x2, y2, 75, 250);
    curve(-50, 200, x4, y4, x3, y3, 125, 250);
    translate(-x, -y);
  }
}