Level_1 lvl_1;
Level_2 lvl_2;
Menu menu;

void setup() {
 
  
  size(displayWidth, displayHeight);
  
  background(255);
  
  
  //menu = new Menu();
  
  
  //construtor nao pode pintar
  //lvl_1 = new Level_1();
  lvl_2 = new Level_2();
  
}





void draw() { 
  
  
  //menu.draw();
  //lvl_1.draw();
  lvl_2.draw();
   
  
      
}


void mouseReleased()
{
  
  
}