class SporeDrive{
  int x;
  int y;
  int r;
  int buttonRadius;
  float i;
  float j;
  PFont drive;
  
  
 SporeDrive(int x, int y)
 {
   this.x = x;
   this.y = y;
   r = 600;
   drive = loadFont("AmericanCaptainPatrius02FRE-100.vlw");
   buttonRadius = 300;
 }
 
 void update()
 {
   i+= .01;
   j-= .02;
 }
 
 void render()
 {
   float disX = x - mouseX;
   float disY = y - mouseY;
  if(mousePressed)
  {
    if (sqrt(sq(disX) + sq(disY)) < buttonRadius/2 )
    {
      fill(250);
    }
    //if(counter%2 == 0)
    //{
     // rectColour = 0;
    //}
    //else
    //{
     // rectColour = 100;
   // }
  }
   translate(x, y);
   textFont(drive);
   textSize(40);
   textAlign(CENTER);
   ellipse(0, 0, buttonRadius, buttonRadius);
   noFill();
   text("OFFLINE", 0, 30);
   textSize(60);
   text("Spore Drive", 0, 400);
   rotate(i);
   arc(0, 0, r, r, 0, (PI * 1.7));
   rotate(j);
   arc(0, 0, r-60, r-60, 0, (PI * 1.8));
   textAlign(LEFT);
   translate(-x, -y);
 }
}