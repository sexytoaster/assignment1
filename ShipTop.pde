class ShipTop
{
  int x;
  int y;
  ShipTop(int x, int y)
  {
    this.x = x;
    this.y = y;
  
  }
  
  void render()
  {
    
    strokeWeight(1);
    
    stroke(255);
    //translate(x, y);
    for(x = 100; x <= 150; x += 10)
    {
      line(x, 900, x, 500);
    }
    for(x = 700; x<=750; x+= 10)
    {
      line(x, 900, x, 500);
    }
     noFill();
     curve(180, 600, 100, 900, 100, 500, 180, 800); //curves surrounding thrusters
     curve(70, 600, 150, 900, 150, 500, 70, 800);
     curve(780, 600, 700, 900, 700, 500, 780, 800); 
     curve(670, 600, 750, 900, 750, 500, 670, 800);
     line(160, 820, 325, 680);//wing lines
     line(690, 820, 525, 680);
     line(162, 700, 400, 400);
     line(688, 700, 450, 400);
     line(162, 690, 400, 390);
     line(688, 690, 450, 390);
     line(325, 680, 525, 680);
     line(340, 695, 510, 695);
     fill(255);
     ellipse(425, 240, 450, 450); 
}
}