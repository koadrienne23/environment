class whole_leaf{
  float x;
  float y;
  float rotate;
  float r;
  leaf[] petals = new leaf[9];
leaf[] petals2 = new leaf[9];
leaf[] petals3 = new leaf[2];
leaf[] petals4 = new leaf[2];
  
  
  whole_leaf(float xi, float yi, float rot){
    x=xi;
    y=yi;
    r= rot;
    
    for (int i = 0; i < petals.length; i++) {
    petals[i] = new leaf(6+7*i, 58-7*i-50, (10-i*.7), radians(-50+2*i));
    petals2[i] = new leaf(6+7*i, 56-7*i-50, (10-i*.8), radians(-30-2*i));
    
  }  for (int r = 0; r < petals3.length; r++) {
    petals3[r] = new leaf(6+7*8.2, 58-7*8.2-50, (10-9*.7), radians(-50+2*15+2*r));
    petals4[r] = new leaf(6+7*8.2, 58-7*8.2-50, (10-9*.7), radians(-30-2*19-2*r));

  }
  }
  
  void display(){
   // rotate(r);
    pushMatrix();
    translate(0, 0);
    for (int i = 0; i < petals.length; i++) {
  petals2[i].display2();
  petals[i].display();
 }  for (int r = 0; r < petals3.length; r++) {
  petals3[r].display();
  petals4[r].display2();

 }
 rotate(radians(45));
 noStroke();
 pushMatrix();
 scale(4);
 fill(#5F2F0F);
 strokeJoin(ROUND);
 rect(2,-20, 0.5, 20);
 popMatrix();
 popMatrix();
 
  }
  
  
  
  
}