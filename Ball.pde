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
    ellipse(pos.x, pos.y, 20, 20);
  
  }
  
  
  void applyForce()
  {
    
    pos.add(new PVector (0,3));
    
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