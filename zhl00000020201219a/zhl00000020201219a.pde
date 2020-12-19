int Num = 100;
Fish[] fish = new Fish[Num];
Ball[] ball =new Ball[1];

void setup(){
  size(800,800);
  background(255);
  noStroke();
  ball = new Ball(mouseX,mouseY);
  fish[0] = new Fish(width/2,height/2,random(0,255),random(0,255),random(0,255));
  for(int i=1;i<Num;i++){
    fish[i] = new Fish(fish[i-1].a1,fish[i-1].a2,random(0,255),random(0,255),random(0,255));
  }
}

void draw(){
  background(255);
  fish[0].update();
  for(int i=1;i<Num;i++){
    if(fish[i-1].k>=4){
      fish[i].update();
    }
  }
  
  if(mouse)
}
