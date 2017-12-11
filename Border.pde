class Border {
  int w;
  int offset;
  boolean spore;
  color borderColour;
  
  Border(int w){
    this.w = w;
    offset = (width/3) * 2;
    borderColour = 100;
  }
  
  void update(boolean trigger)
  {
   spore = trigger;
  }
  void render()
  {
     //top border
     if(spore == true)
     {
        borderColour = 0; 
     }
     else
     {
       borderColour = 100;
     }
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