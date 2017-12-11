class ShipTop
{
  int x;
  int y;
  int rx;
  
  ShipTop(int x, int y)
  {
    this.x = x;
    this.y = y;
  
  }
  
  void render()
  {
    
    strokeWeight(1);
    
    stroke(255);
    translate(x, y);
    //thruster lines
    for(rx = 100; rx <= 150; rx += 10)
    {
      line(rx, 900, rx, 500);
    }
    for(rx = 700; rx<=750; rx+= 10)
    {
      line(rx, 900, rx, 500);
    }
  
     noFill();
     //curves surrounding thrusters
     curve(180, 600, 100, 900, 100, 500, 180, 800);
     curve(70, 600, 150, 900, 150, 500, 70, 800);
     curve(780, 600, 700, 900, 700, 500, 780, 800); 
     curve(670, 600, 750, 900, 750, 500, 670, 800);
     //wing lines
     //left outer
     line(160, 820, 325, 680);
     line(162, 700, 400, 400);
     //right outer
     line(690, 820, 525, 680);
     line(688, 700, 450, 400);
     //left lower
     line(162, 690, 400, 390);
     //right lower
     line(688, 690, 450, 390);
     //back
     line(325, 680, 525, 680);
     line(340, 695, 510, 695);
     line(325, 680, 340, 695);
     line(525, 680, 510, 695);
     //fill(255);
     
     //disk
     fill(55);
     ellipse(425, 240, 450, 450); 
     ellipse(425, 240, 440, 440);
     //line circle
     fill(#031F29);
     ellipse(425, 240, 270, 270);
     ellipse(425, 240, 220, 220);
     fill(55);
     ellipse(425, 240, 160, 160);
     ellipse(425, 240, 100, 100);
     //disk lines
     for(float angle = 0; angle < 360; angle = angle + 5) 
      { //move round the circle to each point
        float cx = cos(radians(angle)) * 135; //convert angle to radians for x and y coordinates
        float cy = sin(radians(angle)) * 135;
        line(cx+425, cy+240, 425, 240); //draw a line from each point back to the centre
      }
     fill(#031F29);
     ellipse(425, 240, 80, 80);
     
    translate(-x, -y);
}
}