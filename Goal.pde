class Goal
{
  
  PVector pos;
  boolean semaforo;
  int ball_width;

  Goal(PVector pos)
  {
    
    this.pos = pos;
    
    semaforo = true;
    ball_width = 50;
  
  }
  
  
  
  void draw()
  {
    stroke(0);
    fill(0);
    rect(pos.x, displayHeight - 10, ball_width, 10);
  
  }
  
  
  
  void applyForce()
  {
  
    if(semaforo){
      
      pos.add(new PVector(2,0));
      
    }
    
    else{
      
      pos.add(new PVector(-2,0));
      
    }
    
    
    if(pos.x > displayWidth - ball_width){
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
    return displayHeight - 10;
  
  }
 
 


}