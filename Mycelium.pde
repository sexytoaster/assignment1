class Mycelium{
  //create the variables we need
  float x;
  float y;
  float sx;
  float sy;
  float d;
  float speed;
  int counter = 1;
  boolean spore = false;
  int gap;
  int randomizer;
  color red;
  
  Mycelium()
  {
    //spawn the mycelium at edges of screen
    //this is so we can reset the position of the mycelium after the spore drive has fired
    reset();
    gap = int(random(1, 15));
    d = 8;
    red = int(random(0, 180));
    speed = 1;
  }
  
  void reset()
  {
    //this makes them spawn offscreen, pretty clever if you ask me ;)
    //random x
    x = random(-200, width + 200);
    //if the x is on the screen
    if ((x >= -10) && (x <= width + 10))
    {
      randomizer = int (random(0, 2));
      if(randomizer == 1)
      {
        //make y go off the screen one side or the other
        y = random(-200, -10);
      }
      else
      {
        y = random(height + 10, height + 200);
      }
    }
    else
    {
      y = random(-200, height + 200);
    }
  }
  
  void update(boolean spore)
  {
    //if value hasnt yet reached the ammount we are allowing it to move on screen, let it move more
    //apply to all
    if(y < gap)
    {
      y = y + speed;
    }
    else if(y > height - gap)
    {
      y = y - speed;
    }
    if(x < gap)
    {
      x = x + speed;
    }
    else if(x > width - gap)
    {
      x = x - speed;
    }
    
    //if the spore falls in a potential range near the gap, make it shrink and then reset its x and y
    if((y > gap - speed && y < gap + speed) || (y < (height - gap) + speed && y > (height - gap) - speed))
    {
      d-= 2;
      if (d <= 0)
      {
      d = 8;
      randomizer = int (random(0, 2));
      if(randomizer == 1)
      {
        y = random(-200, 10);
      }
      else
      {
        y = random(height -10, height + 200);
      }
    }
    }
    //same as above
    if((x > gap - speed && x < gap + speed) || (x < (width - gap) + speed && x > (width - gap) - speed) )
    {
      d -= 2;
      if(d <= 0)
    {
      d = 8;
      randomizer = int (random(0, 2));
      if(randomizer == 1)
      {
        x = random(-200, 10);
      }
      else
      {
        x = random(width -10, width + 200);
      }
    }
    }
    //if the spore drive is going off, make the gap bigger and increase speed
    if(spore)
    {
      gap = 100;
      speed += 5;
      counter = 0;
    }
    //otherwise the same
    else
    {
      gap = int(random(1, 15));
      speed = (random(0,2));
      counter++;
    }
    //if the else happens right after the drive fires, counter will be equal to one, if so reset
    if (counter == 1)
    {
      reset();
    }
  }
  
  void render()
  {
    //normal render with an ellipse
   fill(red, 230, 230);
   noStroke();
   ellipse(x, y, d, d);
    
  }
}