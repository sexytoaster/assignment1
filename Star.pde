
class Star {
  // I create variables to specify the x and y of each star.
  float x;
  float y;
  float highlight;
  float thetay;
  float sx;
  float sy;
  int count;
  PFont Trek;
  
  Star() {
    // I place values in the variables
    float rx = random(0, 200);
    float ry = random(0, 200);
    float thetay = random(0, 2 * PI);
    sx = -100;
    sy = -150;
    x = rx * cos(thetay);
    y = ry * sin(thetay);
    highlight = random(0, 100);
    Trek = loadFont("DINTrek-30.vlw");
    count = 0;
  }
  
    
  void update() {
    //rotating each x and y in a way so it looks 3d
    x = (x * cos(.002)) - (y * sin(.008));
    y = (x * sin(.002)) + (y * cos(.002));
    //rotate the "Klingons detected" in a similar way
    sx = (sx * cos(.001)) - (sy * sin(.001));
    sy = (sx * sin(.001)) + (sy * cos(.001));
  }
  
  
  void show() {
    //choose font
    textFont(Trek);
    fill(255);
    noStroke();
    strokeWeight(10);
    
    //draw each star
    float r = 2;
    ellipse(x, y, r, r);
    
    //highlight is a random float, it means that klingons detected and planets of interest are highlighted randomly
    if (highlight < 1) 
    {
    noFill();
    stroke(255);
    strokeWeight(2);
    ellipse(x, y, 20, 20);
    //this is for klingons detected, its a low chance but with 800 stars usually we find 1 or 2 atleast
      if(highlight < .2)
      {
        stroke(255, 0, 0);
        ellipse(x, y, 20, 20);
        pushMatrix();
        translate(0, -100);
        line(x, y + 100, sx, sy);
        textSize(32);
        rect(sx - 150, sy -45, 350, 45);
        fill(255, 0, 0);
        text("Klingon Activity Detected", sx -130, sy -17);
        popMatrix();
       }
    }
  }
}