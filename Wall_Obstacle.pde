class Wall_Obstacle {
  // posX, X2, & Y controls where the walls will spawn
  float posX;        
  float posX2;
  float posY = 30;
  // wallH, wallW, & wall2W controls how big the walls are
  int wallH = 30;  
  int wallW = 200;
  int wall2W;
  
  // Moves the walls down at a certain speed
  void move(float speed) {
    float actualSpeed = speed/5;
    posY += actualSpeed;
  }
  
  // Display walls on the left and right
  void LRWall(float speed) {
    posX = 50;
    posX2 = 250;
    wall2W = 100;
    
    fill(0);
    rectMode(CENTER);
    rect(posX,posY,wall2W,wallH);    // left wall
    rect(posX2,posY,wall2W,wallH);   // right wall
    move(speed);
  }
  
  // Displays walls on the left and middle
  void LMWall(float speed) {
    posX = 100;
    fill(0);
    rectMode(CENTER);
    rect(posX,posY,wallW,wallH);
    move(speed);
  }
  
  // Displays walls on the middle and right
  void MRWall(float speed) {
    posX = 200;
    fill(0);
    rectMode(CENTER);
    rect(posX,posY,wallW,wallH);
    move(speed);
  }
  
  // Main function
  void show(float speed) { //<>//
    int r = (int) random(3); //<>//
    switch(r){
      case 0:
        LRWall(speed);
        break;
      case 1:
        LMWall(speed);
        break;
      case 2:
        MRWall(speed);
        break;
      }
  }
    /*println(r); //<>//
    if (r == 0) LRWall(speed); //<>//
    else if (r == 1) LMWall(speed); //<>//
    else if (r == 2) MRWall(speed);*/ //<>//
}
