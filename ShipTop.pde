class ShipTop
{
  //to know if the spore drive is charged
  boolean sporeDrive = false;
  int x;
  int y;
  //for hull tooltip
  int x1;
  int y1;
  //for left thruster
  int xl;
  int yl;
  //for rght thruster
  int xr;
  int yr;
  //for hull
  int w1;
  int h1;
  //for thrusters
  int ht;
  int wt;
  int r;
  int rx;
  //power in systems
  int sp;
  int ap;
  int ep;
  int sdp;
  boolean spore = false;
  String sd = "Shield Power: ";
  String sh = "Auxiliary Power: ";
  String se = "Engine Power: ";
  String ss = "Spore Drive Power: ";
  String percent = "%";
  String toolTipDisk;
  String toolTipHull;
  String toolTipEngine;
  String toolTipSpore;
  
  ShipTop(int x, int y)
  {
    this.x = x;
    this.y = y;
    r = 450;
    x1 = 162;
    y1 = 450;
    xl = 87;
    yl = 500;
    xr = 688;
    yr = 500;
    h1 = 290;
    w1 = 526;
    ht = 400;
    wt = 75;
    sp = 70;
    ap = 100;
    ep = 30;
    sdp = 0;
    toolTipDisk = sd + sp + percent;
    toolTipHull = sh + ap + percent;
    toolTipEngine = se + ep + percent;
    toolTipSpore = ss + sdp + percent;
  }
  
  boolean update(boolean trigger)
  {
    spore = trigger;
    if(spore)
    {
      if (sp > 0)
      {
        sp--;
      }
      if(ap > 0)
      {
        ap--;
      }
      if(ep < 100)
      {
        ep++;
      }
      if(sdp < 100)
      {
        sdp++;
      }
      toolTipDisk = sd + sp + percent;
      toolTipHull = sh + ap + percent;
      toolTipEngine = se + ep + percent;
      toolTipSpore = ss + sdp + percent;
      if (sdp >= 100)
      {
        sporeDrive = true;
      }
    }
    else
    {
      sp = 70;
      ap = 100;
      ep = 30;
      sdp = 0;
      toolTipDisk = sd + sp + percent;
      toolTipHull = sh + ap + percent;
      toolTipEngine = se + ep + percent;
      toolTipSpore = ss + sdp + percent;
      sporeDrive = false;
    }
    
    return sporeDrive;
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
     
     if ((sqrt(sq(disX) + sq(disY)) < r/2) )
     {
       float tw = textWidth(toolTipDisk);
       fill(#013646);
       stroke(255);
       rect(mouseX, mouseY, tw + 4, 90);
       textSize(30);
       fill(255);
       text(toolTipDisk, mouseX + 10, mouseY + 20, tw, 40);
     }
    if(mouseX> (x +x1) && mouseX < (x +x1 + w1) && mouseY > (y + y1) && mouseY < (y + y1 + h1))
     {
       float tw = textWidth(toolTipHull);
       fill(#013646);
       stroke(255);
       rect(mouseX, mouseY, tw + 4, 90);
       textSize(30);
       fill(255);
       text(toolTipHull, mouseX + 10, mouseY + 20, tw, 40);
     }
     if((mouseX> (x + xl) && mouseX < (x +xl + wt) && mouseY > (y + yl) && mouseY < (y + yl + ht)) || (mouseX > (x + xr) && mouseX < (x +xr + wt) && mouseY > (y + yr) && mouseY < (y + yr + ht)) )
     {
       float tw = textWidth(toolTipEngine);
       fill(#013646);
       stroke(255);
       rect(mouseX, mouseY, tw + 4, 90);
       textSize(30);
       fill(255);
       text(toolTipEngine, mouseX + 10, mouseY + 20, tw, 40);
       text(toolTipSpore, mouseX + 10, mouseY + 60, tw, 80);
     }
     
}
}