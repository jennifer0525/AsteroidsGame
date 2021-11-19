//your variable declarations here
Star [] sky = new Star [100];
Spaceship ship = new Spaceship();

public void setup() 
{
  size(800,600);
  sky = new Star [150];
  for (int i = 0; i < sky.length;i ++){
    sky[i] = new Star(); 
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  /* KEYS:
  A: Turn
  Space: Accelerate in direction of A
  Shift: hyperspace
  P: Pause
  */
  
  if (keyPressed){
    if (key == 'a' || key == 'A'){
      ship.turn(-10);
    }
    if (key == ' '){ // for space bar key
      ship.accelerate(0.4);
    }
    if (key == CODED){
      ship.hyperspace(0);
    }
    if (key == 'p' || key == 'P'){
      ship.pause(0); // press space to unpause and gain movement
    }
  }
  ship.move();
  ship.show();
}
