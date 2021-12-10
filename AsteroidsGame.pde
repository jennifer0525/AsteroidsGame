//variable declarations
Star [] sky = new Star [200];
Spaceship ship = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid> ();

public void setup() 
{
  size(800, 600);
  sky = new Star [150];
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for (int i = 0; i <= 15; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++) {
    sky[i].show();
  }

  /* KEYS:
   A: Turn Left
   D: Turn Right
   W: Accelerate in direction of A
   Space Key: Hyperspace
   S: Pause
   */
   
// KEYCODE FOR ARROWS - 37: left key, 39: right, 38: up key, 40: down key
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      ship.turn(-10);
    }
    if (key == 'd' || key == 'D') {
      ship.turn(10);
    }
    if (key == 'w' || key == 'W') { // for space bar key
      ship.accelerate(0.4);
    }
    if (key == ' ') { // for space bar key
      ship.hyperspace(0);
    }
    if (key == 's' || key == 'S') {
      ship.pause(0); // press space to unpause and gain movement
    }
  }

  ship.show();
  ship.move();

  // COLLISION
  for (int i = 0; i < rocks.size(); i++) {
    // rocks.add (i, new Asteroid());
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 15) {
      rocks.remove(i);
    }
  }
  
}
