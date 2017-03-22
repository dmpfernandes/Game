class Wall
{
  
  PVector pos;
  int wall_width;
  boolean semaforo;
  
  
  Wall(PVector pos)
  {
    
    this.pos = pos;
    
    wall_width = 50;
    semaforo = true;
  
  
  }

  
  void draw()
  {
    //stroke(155);
    //strokeWeight(2);
    //stroke(255,20,150);
    fill(255,20,150);
    
    rect(pos.x, pos.y, wall_width, 10);
  
  
  }
  
  
  
  void applyForce()
  {
    
    if(semaforo){ 
      pos.add(new PVector(2,0));
    }
    
    else{
      pos.add(new PVector(-2,0));
    }
    
    
    if(pos.x > displayWidth - wall_width){
      semaforo = false;
    }
    
    
    if(pos.x < 0){
      semaforo = true;
    }
      
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