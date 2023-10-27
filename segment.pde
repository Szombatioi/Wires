class Segment{
  private int x, y, length;
  private float multiplier;
  public Segment(int x, int y){
    this.x = x;
    this.y = y;
    length = 100;
    multiplier = 0.25;
  }
  
  public void Draw(){
    pushStyle();
    //stroke(255,0,0);
    //stroke(0);
    noStroke();
    fill(255,0,0);
    rect(x,y,length*multiplier, length);
    triangle(x,y,  x+length*multiplier, y,   x+length*(multiplier/2), y-length*(multiplier/2));
    triangle(x, y+length,  x+length*multiplier,y+length,  
             x+length*(multiplier/2), y+length+length*(multiplier/2) );
    popStyle();
  }
}
