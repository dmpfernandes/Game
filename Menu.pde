class Menu
{

  Menu(){
    
    
    
  
  
  }
  
  
  
  
  
  void draw()
  {
  
    
    
    button_newgame();
    
    
    
    
  }
  
  
  
  
  
  void button_newgame()
  {
    stroke(0);
    fill(255);
    //rect(x,y,comp,larg);
    rect(displayWidth * 0.1, displayHeight * 0.4, 0.80 * displayWidth, 0.1 * displayHeight);
    
    
    fill(0);
    textSize(26);   
    text("New Game", displayWidth * 0.38, displayHeight * 0.46);
    
  }




}