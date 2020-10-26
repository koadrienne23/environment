class waterfall{
  float x;
  float y=0;
  float increment;
  waterfall(float tempx, float inc){
    x=tempx;
    increment=inc;
  }
  void display(){
    pushMatrix();
    stroke(#1E85E8);
    strokeWeight(40 +(y/100));
    //for(int i=0; i<100; i++){
    line(x,0,x-40,y);
    line(800,0,760,height);
    y+=2;
    if(y>height){
      y=0;
      y+=increment;
    
    strokeWeight(0);
    }
    popMatrix();
    
  }
  
  
  
  
}