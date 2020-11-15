# zhl001
float a,b,c,d;
void setup(){
  size(640,360);
  background(a,b,c);
}
void draw(){
  a=random(0,640);
  b=random(0,360);
  c=random(0,20);
  fill(a/640*255,b/360*255,c/20*255);
  ellipse(a,b,c,c);
}
