class testLogo 
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
  int cpx1;
  int cpx2;
  int cpx3;
  int cpx4;
  int cpx5;
  int cpx6;
  int cpx7;
  int cpx8;
  boolean rFlag1 = false;
  testLogo(int x, int y)
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
    cpx1 = 250;
    cpx2 = 175;
    cpx3 = -150;
    cpx4 = 25;
    cpx5 = 250;
    cpx6 = 75;
    cpx7 = -50;
    cpx8 = 125;
  }
  
  void update()
  {
    if (x2 ==200)
    {
      rFlag1 = true;
    }
    if(x2 == 0)
    {
      rFlag1 = false;
    }
    if(rFlag1 == true)
    {
      x2--;
      
    }
    if(rFlag1 == false)
    {
      x2++;
      cpx1--;
      cpx2--;
    }
    
  }
  
  void render()
  {
    translate(x, y);
    stroke(255);
    noFill();
    curve(cpx1, 0, x1, y1, x2, y2, cpx2, 200);
    curve(cpx3, 0, x1, y1, x3, y3, cpx4, 200);
    curve(cpx5, 200, x4, y4, x2, y2, cpx6, 250);
    curve(cpx7, 200, x4, y4, x3, y3, cpx8, 250);
    translate(-x, -y);
  }
}