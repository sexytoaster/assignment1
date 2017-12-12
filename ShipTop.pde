class ShipTop
{
  int x;
  int y;
  int r;
  int rx;
  String toolTip;
  
  ShipTop(int x, int y)
  {
    this.x = x;
    this.y = y;
    r = 450;
    toolTip = "Working";
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
     line(162, 690, 347, 445);
     line(162, 700, 350, 450);
     //right outer
     line(688, 690, 503, 445);
     line(688, 700, 500, 450);
     //left lower
     line(160, 820, 325, 680);
     //right lower
     line(690, 820, 525, 680);
     //back
     line(325, 680, 525, 680);
     line(340, 695, 510, 695);
     line(325, 680, 340, 695);
     line(525, 680, 510, 695);
     //fill(255);
     
     //disk
     //fill(55);
     ellipse(425, 240, r, r); 
     ellipse(425, 240, 440, 440);
     //line circle
     fill(#031F29);
     ellipse(425, 240, 270, 270);
     ellipse(425, 240, 220, 220);
     //fill(55);
     ellipse(425, 240, 160, 160);
     ellipse(425, 240, 100, 100);
     //disk lines
     for(float angle = 0; angle < 360; angle = angle + 5) 
      { //move round the circle to each point
        float cx = cos(radians(angle)) * 135; //convert angle to radians for x and y coordinates
        float cy = sin(radians(angle)) * 135;
        line(cx+425, cy+240, 425, 240); //draw a line from each point back to the centre
      }
     //fill(#031F29);
     ellipse(425, 240, 80, 80);
     translate(-x, -y);
     
     float disX = x + 425 - mouseX;
     float disY = y + 240 - mouseY;
      if(mousePressed)
      {
        if (sqrt(sq(disX) + sq(disY)) < r/2 )
        {
          println(toolTip);
          float tw = textWidth(toolTip);
          fill(0);
          stroke(255);
          rect(mouseX, mouseY, tw + 4, 90);
          textSize(30);
          fill(255);
          text(toolTip, mouseX + 10, mouseY + 20, tw, 40);
        }
      }
     
}
}