class PowerMeter{
  float t;
  float x;
  float y;
  
  PowerMeter(float t, float x, float y)
  {
    this.t = t;
    this.x = x;
    this.y = y;
  }
  
  float x1(float t)
  {
    return sin(t/10) * 100 + sin(t/5) *20;
  }
  
  float y1(float t)
  {
    return cos(t / 10) * 100;
  }
  
   float x2(float t)
  {
    return sin(t/10) * 200 + sin(t/20) * 20;
  }
  
  float y2(float t)
  {
    return cos(t / 20) * 200;
  }
  
  void render()
  {
    translate(x, y);
    for (int i = 0; i < 10; i++)
    {
      stroke(0);
      strokeWeight(100);
      line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
    }
    t++;
  }
}