class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star (){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*256),
                  (int)(Math.random()*256),
                  (int)(Math.random()*256));
  }
  public void show (){
  noStroke(); // without the noStroke();, then you would have stars wit boarders around them
  fill (myColor);
  ellipse (myX, myY, 5, 5);
  }
}
