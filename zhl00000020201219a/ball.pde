class Ball{
  float x,y;
  float r=1;
  
  Ball(float x,float y){
    this.x=x;
    this.y=y;
  }   
  void update(){
    drawball(this.x,this.y,r);
    r=r+0.25;
  }
  void drawball(float x,float y,float r){
    noFill();
    ellipse(x,y,r,r);
    for(int i=0;i<5;i++){
      drawball(x,y,r-10*i);
    }    
  }
}
