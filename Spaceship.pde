class Spaceship extends Floater  
{   
  public Spaceship() {
    // Initialize the 9 inherited protected variables: corners, xCorners, yCorners,
    // myColor, myCenterX, myCenterY, myXspeed, myYspeed and myPointDirection

    myColor = 255;
    myCenterX = 400;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    corners = 4; 
    myPointDirection = 0;
    xCorners = new int[corners]; // protected or public
    yCorners = new int[corners]; // protected or public
    xCorners [0] = -8;  
    yCorners [0] = -8;
    xCorners [1] = 16;
    yCorners [1] = 0;
    xCorners [2] = -8; 
    yCorners [2] = 8;
    xCorners [3] = -2;
    yCorners [3] = 0;
  } 
  public void hyperspace(double n) {
    myXspeed = n; 
    myYspeed = n;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = (int)(Math.random()*360);
  }
  public void pause(double n) {
    myXspeed = n;
    myYspeed = n;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  // public double getPointDirection(){return myPointDirection;}
} 
