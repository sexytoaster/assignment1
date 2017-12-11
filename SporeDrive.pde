class SporeDrive{
  int x;
  int y;
  int r;
  float i;
  float j;
  PFont drive;
  
  
 SporeDrive(int x, int y)
 {
   this.x = x;
   this.y = y;
   r = 600;
   drive = loadFont("AmericanCaptainPatrius02FRE-100.vlw");
   
 }
 
 void update()
 {
   i+= .01;
   j-= .02;
 }
 
 void render()
 {
   translate(x, y);
   textFont(drive);
   textSize(40);
   textAlign(CENTER);
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