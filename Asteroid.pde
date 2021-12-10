class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid () { // constructor
    rotSpeed = (int)(Math.random()*5+1);
    myColor = 180;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myXspeed = (int)(Math.random()*7 - 3);
    myYspeed = (int)(Math.random()*7 - 3);
    myPointDirection = (int)(Math.random()*360);
  }

  /*
public void show(){
   stroke (255);
   fill (myColor);
   }
   */

  public void move() {
    super.move();
    turn(rotSpeed);
  }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
}
