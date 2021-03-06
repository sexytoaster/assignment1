class BlackAlert{
  //declare all variables, for our shape
  int x1;
  int y1;
  int x2;
  int y2;
  int x3;
  int y3;
  int x4;
  int y4;
  int x5;
  int y5;
  int x6;
  int y6;
  int counter;
  
  //width height etc
  int w1;
  int h1;
  int xOffset;
  int yOffset;
  
  //booleans to detect mouse positions
  color rectColour;
  boolean rectOver = false;
  boolean overRect = false;
  boolean trigger = false;
  
  //constructor
  BlackAlert(int x1, int y1, int w1, int h1){
    //give variables values
    this.x1 = x1;
    this.y1 = y1;
    this.w1 = w1;
    this.h1 = h1;
    
    xOffset = w1/3;
    yOffset = h1/3;
    
    x2 = x1 + w1;
    y2 = y1;
    x3 = x2;
    y3 = y2 + h1 - yOffset;
    x4 = x2 - xOffset;
    y4 = y2 + h1;
    x5 = x2 - w1;
    y5 = y2 + h1;
    x6 = x5;
    y6 = y2;
    rectColour = color(#024255);
    counter = 1;
  }
  
  
boolean render() {
  //button for black alert, was gonna make a button class but only had 2 buttons and they were very differnt(one rect, one circle)
  if(mousePressed)
  {
    if(mouseX>x1 && mouseX <x1+w1 && mouseY>y1 && mouseY <y1+h1)
    {
      //if clicked, increment the counter and delay because it was counting a lot
      counter++;
      delay(100);
    }
    if(counter%2 == 0)
    {
      //make rect black and change bool to let know black alert active
      rectColour = 0;
      trigger = true;
    }
    else
    {
      //colour back to neutral, trigger off
      rectColour = color(#024255);
      trigger = false;
    }
  }
  fill(rectColour);
  stroke(rectColour);
  beginShape();
  vertex(x1, y1);
  vertex(x2, y2);
  vertex(x3, y3);
  vertex(x4, y4);
  vertex(x5, y5);
  vertex(x6, y6);
  endShape();
  fill(255);
  textSize(40);
  text("BLACK ALERT", x1 + 30 , y1 + 60);
  
  return trigger;
}


}