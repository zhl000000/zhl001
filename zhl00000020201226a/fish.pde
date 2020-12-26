class Fish {
  boolean mouseDown = false;
 
  float x,y;
  float xv = random(-1,1), yv = random(-1,1);
  float tailStep = 0, tailSpeed = random(2,3); 
  float s = random(.05,.2);
  float sx = -90, sy = 0; 
  float ax = -40, ay = 0;
  float bx = 5, by = 40; 
  float cx = -40, cy = 0;
  float dx = 5, dy = -40; 
  float ex = 10, ey = 0; 
  float animOff = random(TWO_PI); 
  float a;
  float b;
  float c;
  float k =2;
  float a1,a2;
  float t=0;
  float tt;
  
  Fish(float x, float y,float a,float b,float c){
    this.x = x;
    this.y = y;
    this.a = a;
    this.b = b;
    this.c = c;     
    tt=(a+b+c)/3;
  }
  
  void run(){
    update();
    born();
  }
  void update(){ 
    t=t+1;
    this.tailStep += this.tailSpeed;    
    this.xv += (  noise(  this.x*.005 + PI,this.y*.005, millis()*.005  )*2-1 )*0.05+random(-0.25,0.25);
    this.yv += (  noise(  this.x*.005 - PI,this.y*.005, millis()*.005  )*2-1  )*0.05+random(-0.25,0.5);   
    this.xv = constrain(this.xv, -2,2);
    this.yv = constrain(this.yv, -2,2); 
    this.x += this.xv;
    this.y += this.yv; 
    a1 = this.x;
    a2 = this.y;    
      if(k<4){
      k = k + 0.025;
      drawFish(k,a,b,c);
    }   
    else{      
      drawFish(k,a,b,c);
    }    
    if(this.x<0){
      this.x = width;
    }
    else if(this.x>width){
      this.x = 0;
    } 
    if(this.y<0){
      this.y = height;
    }
    else if(this.y>height){
      this.y = 0;
    }

  } 
  
  void born(){
    for(int j=0;j<somefish.size();j++){
      Fish ff =(Fish)somefish.get(j);
      float d=dist(x,y,ff.x,ff.y);
      if(d<100&&somefish.size()<200){
        somefish.add(new Fish(random(0,800),random(0,800),a+ff.a/2+random(-20,20),b+ff.b/2+random(-20,20),c+ff.c/2+random(-20,20)));
      }
    }
  }
 
  void drawFish(float k,float a,float b,float c){
    fill(a,b,c);
    sy = 30*sin( this.tailStep*.1 + this.animOff);
    pushMatrix();
    translate(this.x, this.y);
    scale(this.s,this.s);
    rotate( atan2(this.yv, this.xv) ); 
    bezier( this.sx*k,this.sy*k, this.ax*k,this.ay*k, this.bx*k,this.by*k, this.ex*k,this.ey*k );
    bezier( this.sx*k,this.sy*k, this.cx*k,this.cy*k, this.dx*k,this.dy*k, this.ex*k,this.ey*k );
    popMatrix(); 
  } 
}
