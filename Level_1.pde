class Level_1
{

  Ball ball;
  Wall w;
  Goal l;
  
  boolean collision;
  boolean winner;
  boolean new_ball;
  
  long startTime;
  
  int count_balls;
  
  String level_name;
  
  
  // ha-de entrar nr de balls, ou seja o player vai para o level 2 com as bolas que sobrarem do level 1
  Level_1(){
    
    level_name = "Level: 1";
    
    // imaginem pixeis vao de 0% a 100% entram floats portanto e com a precisao que quisermos
    w = new Wall(new PVector(0.375 * displayHeight, 0.4 * displayHeight));
    
    l = new Goal(new PVector(0.02 * displayHeight, 0));
    
    
    collision = false;
    winner = false;
    new_ball = false;
    
    count_balls = 10;
  
  
  }


  
  void draw()
  {
  
    background(255);
    
  
    l.applyForce();
    l.draw();
    
    
    w.applyForce();
    w.draw(); 
    
    
    if(ball != null){
        
      ball.applyForce();
      ball.draw();
      
    
    }
    
    
    
    
    if(mousePressed && (winner || collision)) {
      
      
      ball = null;
      startTime = millis();
      collision = false;
      winner = false;
    

    }
     
    
    // se der tap e nao tiver perdido nem ganho, esteja acima do primeiro Wall e depois de comecar Novo Jogo tenha passado pelo menos 1 seg
    if (mousePressed == true && !collision && !winner && mouseY < w.get_Y() && millis() - startTime > 1000) {
      
      
      ball =  new Ball (new PVector(mouseX, mouseY));
      new_ball = true;
       
        
    }
   
    
    
    
    
   if(ball != null){
   
     if(ball.pos.y > w.pos.y && new_ball){
     
     count_balls--;
     new_ball = false;
   
   
     }
   
   } 
   
   
    checkCollision();
    checkWinner();
    
    
    
      
    
        
    // antes: if collision
    if(collision)
    { 
      
      textAlign(CENTER);
      fill(0);
      textSize(21);
      text("Loser.", displayWidth/2, 0.12 * displayHeight);  
      textSize(19);
      text("TAP TO TRY AGAIN", displayWidth/2, 0.16 * displayHeight);
    
    }
    
    
    if(winner)
    { 
      
      textAlign(CENTER);
      fill(0);
      textSize(21);   
      text("Nice!", displayWidth/2, 0.12 * displayHeight); 
      textSize(19);
      text("TAP TO CONTINUE", displayWidth/2, 0.16 * displayHeight);
    
    
    }
    
    print_Balls();
    print_Level();
   
  

  }


  
  
  
  
  
  void checkWinner()
  {
    
    if(ball != null && !collision && !winner)
    {
    
      if(ball.get_X() > l.get_X() && ball.get_X() < l.get_X() + 50 && ball.get_Y() > l.get_Y() && ball.get_Y() < l.get_Y() + 10)
        {
    
          winner = true;
          
      
        }
        
    }
      
  }
  
  
  
  
  
  
  void checkCollision()
  {
  
    if(ball != null && !winner && !collision)
    {
      
      if(ball.get_X() > w.get_X() && ball.get_X() < w.get_X() + 50 && ball.get_Y() > w.get_Y() && ball.get_Y() < w.get_Y() + 10)
      {
        
        collision = true;
        
        
      }
   
    }
    
  }
  
  
  
  
  void print_Balls()
  {
    
    textAlign(LEFT);
    fill(0);
    textSize(30);   
    text("x " + count_balls, displayHeight * 0.515, displayWidth * 0.08);   
    
    
  }
  
  
  void print_Level()
  {
    
    textAlign(RIGHT);
    fill(0);
    textSize(26);   
    text(level_name, displayHeight * 0.12, displayWidth * 0.08);
    
  
  
  
  
  }
  
  
  



}