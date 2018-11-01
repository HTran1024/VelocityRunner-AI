Spaceship ship;
//Wall_Obstacle obs;

boolean alive = true;

void setup() {
  size(300,700);
  ship = new Spaceship();
  //obs = new Wall_Obstacle();
  ship.addWall();
}

void draw() {
  background(255);
  ship.show();
  
  if(frameCount % 40 == 0){
    ship.addWall();
  }
  //obs.show(1);
  //obs.move(2);
  /*if(leftPressed && ship.x > 0){
    ship.x -= 50;
  }
  if(rightPressed && ship.x < width){
    ship.x += 50;
  }*/
}

// Controls the movement of the ship
void keyPressed() {
  if (keyCode == LEFT && ship.x > 50){
    ship.x -= 100;
  }
  if (keyCode == RIGHT && ship.x < width-50){
    ship.x += 100;
  }
}


/*void keyReleased(){
  if (keyCode == LEFT) leftPressed = false;
  if (keyCode == RIGHT) rightPressed = false;
}*/

/*void displayMenu(){
  textAlign(CENTER);
  text("Velocity Runner", width/2, 300);
  text("Press Enter to play", width/2, 500);
}*/
