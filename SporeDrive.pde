class SporeDrive{
  int x;
  int y;
  int r;
  int counter = 1;
  int buttonColour;
  int track = 0;
  int opacity;
  boolean spore;
  boolean trigger = false;
  boolean activate;
  boolean online = false;
  int buttonRadius;
  float i;
  float j;
  PFont drive;
  String s;
  int fade;
  int darken;
  
 SporeDrive(int x, int y)
 {
   this.x = x;
   this.y = y;
   r = 600;
   drive = loadFont("AmericanCaptainPatrius02FRE-100.vlw");
   buttonRadius = 300;
   s = "OFFLINE";
   fade = 0;
   darken = 0;
   buttonColour = 50;
   opacity = 0;
 }
 
 void update(boolean trigger)
 {
   spore = trigger;
   i+= .01;
   j-= .02;
   
  
     if(track == 0)
     {
       buttonColour += 5;
     }
     if(buttonColour >= 150)
     {
       track = 1;
     }
     if(track == 1)
      {
        buttonColour -= 5;
      }
     if (buttonColour <= 50)
      {
        buttonColour += 5;
        track = 0;
      }

   
 }
 
 boolean render(boolean online)
 {
   activate = online;
   if (spore == true)
   {
     s = "CHARGING";
     if(activate == true)
     {
     s = "ENGAGE";
     float disX = x - mouseX;
     float disY = y - mouseY;
      if(mousePressed)
      {
        if (sqrt(sq(disX) + sq(disY)) < buttonRadius/2 )
        {
          counter++;
          delay(100);
        }
      }
      if(counter % 2 == 0)
      {
        fill(darken, 206, 206, fade);
        noStroke();
        rect(0, 0, width, height);
        fade += 15;
        darken += 15;
        trigger = true;
        opacity = 0;
        if(fade >= 255)
        {
          counter--;
          fade = 0;
          darken = 0;
          trigger = false;
          online = false;
          //s = "CHARGING";
        }
      }
    }
   }
    else
    {
      s = "OFFLINE";
    }
   translate(x, y);
   textFont(drive);
   textSize(40);
   textAlign(CENTER);
   noFill();
   if(spore == true)
   {
     opacity += 10;
     fill(buttonColour, 0, 0, opacity);
   }
   else
   {
     opacity = 0;
   }
   ellipse(0, 0, buttonRadius, buttonRadius);
   fill(255);
   text(s, 0, 20);
   textSize(60);
   stroke(255);
   text("Spore Drive", 0, 400);
   rotate(i);
   noFill();
   arc(0, 0, r, r, 0, (PI * 1.7));
   rotate(j);
   arc(0, 0, r-60, r-60, 0, (PI * 1.8));
   textAlign(LEFT);
   translate(-x, -y);
   
   return trigger;
 }
}