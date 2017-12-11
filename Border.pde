class Border {
  int w;
  int offset;
  color borderColour;
  
  Border(int w, color col){
    this.w = w;
    offset = (width/3) * 2;
    borderColour = col;
  }
  
  void update(int i)
  {
    borderColour = i;
  }
  void render()
  {
     //top border
     stroke(borderColour);
     fill(borderColour);
     rect(0, 0, width, w);
     rect(offset, w, width, w); 
     triangle(offset, (2*w), (offset - w), w, offset, w);
     
     //bot border
     rect(0, height, width, -w);
     rect(width - offset, height -w, -width, -w); 
     triangle(width - offset, height - (2*w), (width - offset + w), height - w, width - offset, height - w);
  }
  
}