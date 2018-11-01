class Spaceship {
  int x = 150;  // x coordinate of where the ship will start
  int y = 600;  // y coordinate  
  int h = 45;  // height of ship
  int w = 27;  // width of ship
  int size = 20;
  
  ArrayList<Wall_Obstacle> walls = new ArrayList<Wall_Obstacle>();
  
  // Prototype of the ship of whom the player will be controlling
  void show() {
    fill(0);
    rectMode(CENTER);
    rect(x,y,w,h);
    
    // Generate walls the player will dodge
    for(int i = 0; i < walls.size(); i++){
      walls.get(i).show(i+20);
    }
  }
  
  // This function adds walls into the walls array
  void addWall() {
    Wall_Obstacle obs = new Wall_Obstacle();
    walls.add(obs);
  }
}
