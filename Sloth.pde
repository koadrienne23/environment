class Sloth{
  float x;
  float y;
  float radius;
  float s = 0.7;
  float m = 0;
  float n = 0;
  boolean left = true;
  float t = 0;
  float l;
  float r;
  
  Sloth(float tempXpos, float tempYpos, float tempSize, float leftLimit, float rightLimit) {
    x = tempXpos-width/2;
    y = tempYpos-height/2;
    radius = tempSize;
    l = leftLimit;
    r = rightLimit;
  }
  
  void display(){
    pushMatrix();
    translate(x+t,y);
    arm(-radius/13.33,color(#716757),1);
    arm(0,color(#B7997C),-1);
    arm(radius/2.667,color(#716757),1);
    arm(radius/2.222,color(#B7997C),-1);
    fill(#B7997C);
    bezier(width/2+radius/40*18.5,height/2+radius/17-0.025*radius,width/2+radius/40*21,height/2-radius/40*9,width/2+radius/40*15,height/2-radius/40*23,width/2+radius/40*6+m,height/2-radius/10*7-m/6);
    triangle(width/2+radius/40*18.5,height/2+radius/17,width/2+radius/40*18.5-0.35*radius,height/2+radius/17,width/2+radius/40*18.5-0.1*radius,height/2+radius/17-0.45*radius);
    
    noStroke();
    fill(#B7997C);
    ellipse(width/2,height/2,radius/40*38,radius/40*20);
    pushMatrix();
      translate(width/2-radius*0.4227,height/2-radius*0.15);
      rotate(2*PI/3+PI/10*12);
      ellipse(0,0,radius*4/10,radius*3/10);
      noStroke();
      fill(#F5ECD5);
      bezier(-radius/6.5,radius/29,-radius/6.5,-radius/12,radius/25,-radius/12,radius/25,radius/29);
      bezier(radius/6.5,radius/29,radius/6.5,-radius/12,-radius/25,-radius/12,-radius/25,radius/29);
      bezier(-radius/6.5,radius/31,-radius/6.5,radius/6,radius/6.5,radius/6,radius/6.5,radius/31);
      fill(#7C7A77);
      bezier(-radius/6,radius/16,-radius/25,-radius/35,radius/30,radius/35,-radius/6.5,radius/10);
      bezier(radius/6,radius/16,radius/25,-radius/35,-radius/30,radius/35,radius/6.5,radius/10);
      ellipse(0,radius/20,radius/20,radius/25);
      fill(0);
      ellipse(-radius/15,radius/31,radius/30,radius/30);
      ellipse(radius/15,radius/31,radius/30,radius/30);
      ellipse(-radius/15,radius/31,radius/30,radius/30);
      ellipse(radius/15,radius/31,radius/30,radius/30);
      fill(255);
      ellipse(-radius/17,radius/35,radius/100,radius/100);
      ellipse(radius/14,radius/35,radius/100,radius/100);
      noFill();
      stroke(0);
      strokeWeight(1);
      bezier(-radius/17,radius/12,-radius/30,radius/9,radius/30,radius/9,radius/17,radius/12);
    popMatrix();
    popMatrix();
  }
  
  void arm(float t, color c, float d){
    pushMatrix();
    translate(t,0);
    fill(0);
    noStroke();
    triangle(width/2-radius/10*3-m*d,height/2-radius/13*9+m/6*d,width/2-radius/28*7-m*d,height/2-radius/13*8.5+m/6*d,width/2-radius/40*13-m*d,height/2-radius/30*23.5+m/6*d);
    triangle(width/2-radius/10*3-m*d,height/2-radius/13*9+m/6*d,width/2-radius/28*7.5-m*d,height/2-radius/13*8.5+m/6*d,width/2-radius/40*11-m*d,height/2-radius/30*23.5+m/6*d);
    triangle(width/2-radius/30*8-m*d,height/2-radius/13*9+m/6*d,width/2-radius/28*7-m*d,height/2-radius/13*8.5+m/6*d,width/2-radius/40*9-m*d,height/2-radius/30*23.5+m/6*d);
    
    stroke(c);
    strokeWeight(3);
    beginShape();
      fill(c);
      vertex(width/2-radius/3,height/2-0.22*radius);
      bezierVertex(width/2-radius/4,height/2-radius/10,width/2-radius/6-m/2*d,height/2-radius/2,width/2-radius/13*4-m*d,height/2-radius/10*7+m/6*d);
      vertex(width/2-radius/13*4-m*d,height/2-radius/10*7+m/6*d);
      bezierVertex(width/2-radius/6+0.175*radius-m/2*d,height/2-radius/2,width/2-radius/4+0.2*radius,height/2-radius/10,width/2-radius/3+0.25*radius,height/2-0.225*radius);
    endShape();
    popMatrix();
  }
  
  void move(){
    pushMatrix();
    translate(x+t,y);
    float d = dist(width/2+x+t,height/2+y,mouseX,mouseY);
    if(d<0.45*radius && keyPressed && key==CODED && (keyCode==LEFT||keyCode==RIGHT) && width/2+x+t>=l-1 && width/2+x+t<=r+1){
      if(m>0.1*radius){
        left = false;
      }if(m<-0.14*radius){
        left = true; 
      }
      if(left == true){
        m+=s;
      }else{
        m-=s;
      }
      if(keyCode==LEFT && width/2+x+t>=l){
        t-=s*1.3;
      }
      if(keyCode==RIGHT && width/2+x+t<=r){
        t+=s*1.3;
      }
    }else{
      m = 0;
    }
    popMatrix();
  }
}