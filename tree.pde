class tree{
 float x;
 whole_leaf[] leafs = new whole_leaf[7];
 lizard[] liz = new lizard[1];
 monkey[] mon = new monkey[1];
 monkey[] mon1= new monkey[1];
 
  tree(float tempx){
    x=tempx;
     for (int i = 0; i < leafs.length; i++) {
    leafs[i] = new whole_leaf(width/2, height/2,0);
     }
    for (int r = 0; r < liz.length; r++) {
      liz[r] = new lizard(10, random(40,60), random(-60, -40), x+7, height/4*3, random(0.5, 2));
     }
    for (int d = 0; d < mon.length; d++) {
    mon[d] = new monkey(x+80, height/2+68, 20, random(0.03, 0.05));
    }
     for (int t = 0; t < mon.length; t++) {
    mon1[t] = new monkey(x+80, height/2-30, 20, random(0.02, 0.04));
    }
  }
  
  void display(){
 //fill(#4D3104);
 pushMatrix();
 translate(x+22.5, height/2+49);
 rotate(2.0);
  for (int i = 0; i < leafs.length; i++) {
translate(-13,0);
rotate(radians(-40));
leafs[i].display();
  }
 popMatrix();
  image(img,x-15,height/2+20,51, height/2);

 for(int r=0; r<liz.length; r++){
   liz[r].display();
 }
  }
  
  void havemonkey1(){
    for(int d=0; d<mon.length; d++){
    mon[d].display();
    }
  }
  
  void havemonkey2(){
    for(int t=0; t<mon.length; t++){
    mon1[t].display();
    }
    
  }
  
}