class Mycelium{
  float x;
  float y;
  float z;
  float sx;
  float sy;
  float d;
  int speed;
  int counter = 1;
  boolean spore = false;
  int gap;
  int randomizer;
  color red;
  
  Mycelium()
  {
    //spawn the mycelium at edges of screen
    
    reset();
    z = width;
    gap = int(random(1, 15));
    d = 8;
    red = int(random(0, 180));
    speed = 1;
  }
  
  void reset()
  {
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
  }
  
  void update(boolean spore)
  {
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
    if(spore)
    {
      gap = 100;
      speed += 5;
      counter = 0;
    }
    else
    {
      gap = int(random(1, 15));
      speed = 1;
      counter++;
    }
    if (counter == 1)
    {
      reset();
    }
  }
  
  void render()
  {
   fill(red, 230, 230);
   noStroke();
   ellipse(x, y, d, d);
    
  }
}