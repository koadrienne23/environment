class butterfly {
  float xp;
  float yp;
  float size;
  float x;
  float y;
  float angle1=0.0;
  float speed;

  butterfly(float xi, float yi, float s, float speedx) {
    xp=xi;
    yp=yi;
    size=s;
    speed=speedx;
  }

  void display() {
    pushMatrix();
    x+=3+15*speed;
    if (x >= xp+80) {
      x=-1.2*xp-130;
    }
    y=50*sin(angle1);
    angle1+=speed;
    translate(xp-x, yp+y); 
    noStroke();

    //outer wing
    pushMatrix();
    scale(4*size/80);
    beginShape();
    fill(0);
    vertex(0, 0);
    bezierVertex(-13.56, -17.72, 4.82, -15.1, 9.33, -7.17);
    bezierVertex(22.6, -23, 20.4, -5.9, 14.2, 0);
    endShape();
    popMatrix();

    //inner wing
    pushMatrix();
    scale(3*size/80);
    translate(2.5, 0);
    beginShape();
    fill(#0DC0FF);
    vertex(0, 0);
    bezierVertex(-13.56, -17.72, 4.82, -15.1, 9.33, -7.17);
    bezierVertex(22.6, -23, 20.4, -5.9, 14.2, 0);
    endShape();
    popMatrix();

    //body
    pushMatrix();
    fill(0);
    scale(4*size/80);
    ellipse(7, 0, 20, 3);
    translate(-3.5, -3);
    rotate(radians(-30));
    rect(0, 0, .5, 4);
    ellipse(.25, 0, 1, 1);
    translate(-2, 0);
    rotate(radians(-20));
    rect(0, 0, .5, 4);
    ellipse(.25, 0, 1, 1); 
    popMatrix();
    popMatrix();
  }
}
