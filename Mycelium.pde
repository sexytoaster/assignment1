class Mycelium{
  float x;
  float y;
  float z;
  float sx;
  float sy;
  int gap;
  int randomizer;
  color red;
  
  Mycelium()
  {
    //spawn the mycelium at edges of screen
    x = random(-200, width + 200);
    if ((x >= -10) && (x <= width + 10))
    {
      randomizer = int (random(0, 2));
      if(randomizer == 1)
      {
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
    
    z = width;
    gap = 10;
    red = int(random(0, 180));
  }
  
  void update()
  {
    if(y < gap)
    {
      y = y + 1;
    }
    else if(y > height - gap)
    {
      y = y - 1;
    }
    if(x < gap)
    {
      x = x + 1;
    }
    else if(x > width - gap)
    {
      x = x - 1;
    }
    
    if((y > gap - 1 && y < gap + 1) || (y < (height - gap) + 1 && y > (height - gap) - 1))
    {
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
    if((x > gap - 1 && x < gap + 1) || (x < (width - gap) + 1 && x > (width - gap) - 1) )
    {
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
  
  void render()
  {
   fill(red, 230, 230);
   noStroke();
   ellipse(x, y, 8, 8);
    
  }
}