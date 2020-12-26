ArrayList somefish;

void setup(){
  size(800,800);
  somefish = new ArrayList();
  background(255);
  noStroke();
  for(int i=0;i<10;i++){ 
    somefish.add(new Fish(random(0,800),random(0,800),random(0,255),random(0,255),random(0,255)));
  }  
}

void draw(){
  background(255); 
  for(int i=0;i<somefish.size();i++){
    Fish f=(Fish)somefish.get(i);
    f.run();
    if(f.t>1000-f.tt/255*500){
      somefish.remove(i);
    }
  }     
}
