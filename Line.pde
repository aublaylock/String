class Line{
  float x,y;
  float angle;
  boolean attatchedToMouse;
  Line next;
  public Line(float x, float y){
    this.x = x;
    this.y = y;
    attatchedToMouse = true;
  }
  public Line(float x, float y, Line next){
    this.x = x;
    this.y = y;
    this.next = next;
    attatchedToMouse = false;
  }
  void show(){
    float nextX, nextY;
    if(attatchedToMouse){
      nextX = mouseX;
      nextY = mouseY;
    }
    else{
      nextX = next.getX();
      nextY = next.getY();
    }
    try{
    angle = atan2((nextY-y), (nextX-x))/**+radians((float)(Math.random()*5-2))**/;
    }
    catch(ArithmeticException ae){
      angle = 0;
    }
    line(x, y, nextX, nextY);
    x = nextX-2*(float)Math.cos(angle);
    y = nextY-2*(float)Math.sin(angle);
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
