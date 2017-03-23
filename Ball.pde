class Ball
{
  
  PVector pos;
 
  Ball(PVector pos)
  {
    
    this.pos = pos;
    
  }



  void draw()
  {
    stroke(0);
    fill(0);
    ellipse(pos.x, pos.y, displayWidth * 0.0185185, displayWidth * 0.0185185);
  
  }
  
  
  void applyForce()
  {
    
    pos.add(new PVector (0,5));
    
  }
  
  
  
  float get_X()
  {
    return pos.x;
  
  }
  
  
  float get_Y()
  {
    return pos.y;
  
  }
 



}