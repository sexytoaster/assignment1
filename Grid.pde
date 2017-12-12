class Grid{
  //creating the background effect
  //declare valiables
  int x;
  int y;
  int xbuffer;
  int ybuffer;
  
  Grid(){
    //give variales values
    this.x = 0;
    this.y = 0;
    this.xbuffer = 400;
    this.ybuffer = 450;
  }
  
  void render(){
    //draw the first grid
    strokeWeight(.5);
    stroke(#3C5A64);
    for(x = 0; x < width; x += 50)
    {
       line(x, 0, x, height);
    }
    for(y = 0; y < height; y += 20)
    {
       line(0, y, width, y);
    }
    //overlapping offset grid
     for(x = xbuffer; x < width - xbuffer; x += 45)
    {
       line(x, xbuffer, x, height - xbuffer);
    }
    for(y = ybuffer; y < height - ybuffer; y += 15)
    {
       line(ybuffer, y, width - ybuffer, y);
    }
  }
}