Line[] chain = new Line[500];
void setup(){
  size(1000,1000);
  background(0,0,0);
  for(int i = 0; i<chain.length; i++){
    if(i==0)
      chain[i] = new Line(500,500);
    else
      chain[i] = new Line(500,500,chain[i-1]);
  }
}
void draw(){
  background(0);
  float strok = 255;
  stroke(strok);
  strokeWeight(5);
  for(Line line:chain){
    stroke(strok);
    line.show();
    strok-=255.0/chain.length;
  }
}
