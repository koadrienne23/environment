class lizard {
  float bodysz;
  float angle=0;
  float x=0;
  float ang=0;
  float ang1=0;
  float bounda;
  float boundb;
  boolean phase;
  float xi;
  float yi;
  float s;

  lizard(float sz, float ba, float bb, float xii, float yii, float speed) {
    bodysz=sz;
    bounda=ba;
    boundb=bb;
    xi=xii;
    yi=yii;
    s=speed;
  }

  void display() {
    pushMatrix();
    if (phase) {
      x+=s;
    } else if (phase==false) {
      x-=s;
    }
    if (x<=boundb) {
      phase=true;
      // println("y");
    }
    if (x>=bounda) {
      phase=false;
      // println("x");
    }
    translate(xi, yi-x);
    noStroke();
    rotate(radians(120));
    scale(bodysz/80*4);

    //body
    fill(#2FB902);
    pushMatrix();
    beginShape();
    vertex(-10.4, -4.8);
    bezierVertex(-3.86, -16, 5.95, -21.16, 18.2, -17.8);
    bezierVertex(29.1, -14, 39.4, -16.5, 38.7, -28.4);
    bezierVertex(37.6, -41.1, 25.5, -44.7, 20.6, -38.5);
    bezierVertex(25.6, -48.3, 39.2, -44.1, 42.5, -34.4);
    bezierVertex(45, -27.7, 43.9, -18.2, 42.1, -15.9);
    bezierVertex(39.8, -12.6, 37.6, -10.1, 33.5, -9.2);
    bezierVertex(9.7, -4.9, 15.8, 4.4, 0.8, 5);
    bezierVertex(-6.84, 4.3, -0.8, 14.4, -20, 12);
    bezierVertex(-21.65, 12.4, -23.86, 10.7, -23.4, 9.44);
    bezierVertex(-22.6, -6.9, -11.47, -0.86, -10.4, -4.8); 
    endShape();
    popMatrix();

    // eyes –– the eyes move around
    fill(255);
    strokeWeight(.2);
    stroke(0);
    pushMatrix();
    translate(-17, 2.5);
    ellipse(0, 0, 6.5, 6.5);
    fill(0);
    pushMatrix();
    rotate(1.1*sin(angle)-.8);
    angle+=0.01;
    ellipse(-1.5, -1, 1.5, 1.5);
    popMatrix();
    fill(255);
    translate(4, 5.5);
    ellipse(0, 0, 6.5, 6.5);
    fill(0);
    pushMatrix();
    rotate(1.1*sin(angle)-.8);
    angle+=0.01;
    ellipse(-1.5, -1, 1.5, 1.5);
    popMatrix();
    fill(255);
    popMatrix();
    float r = 30*sin(ang1);
    ang1+=0.1;

    //right leg
    noStroke();
    pushMatrix();
    translate(24, -8);
    rotate(radians(-r));
    fill(#2FB902);
    curveTightness(0.001);
    beginShape();
    curveVertex(-.5, 0);
    curveVertex(-.5, 0);
    curveVertex(-1.5, 5);
    curveVertex(-2, 11);
    curveVertex(-1, 13);
    curveVertex(2, 12);
    curveVertex(6, 10);
    curveVertex(10, 7);
    curveVertex(9, 6);
    curveVertex(7, 5);
    curveVertex(7, 5);
    curveVertex(4, 7);
    curveVertex(3, 8);
    curveVertex(4, 5);
    curveVertex(7, -6);
    curveVertex(7, -6);
    endShape();
    //toes
    pushMatrix();
    translate(8, 5.5);
    rotate(radians(140));
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    translate(-.4, -1);
    rotate(radians(50));
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.2, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    popMatrix(); 
    popMatrix();

    //left leg
    noStroke();
    pushMatrix();
    translate(21, -16);
    //float c = 10*sin(ang1);
    //ang1+=0.05;
    rotate(radians(150+r));
    fill(#2FB902);
    curveTightness(0.001);
    beginShape();
    curveVertex(.5, 0);
    curveVertex(.5, 0);
    curveVertex(1.5, 5);
    curveVertex(2, 11);
    curveVertex(1, 13);
    curveVertex(-2, 12);
    curveVertex(-6, 10);
    curveVertex(-10, 7);
    curveVertex(-9, 6);
    curveVertex(-7, 5);
    curveVertex(-7, 5);
    curveVertex(-4, 7);
    curveVertex(-3, 8);
    curveVertex(-4, 5);
    curveVertex(-6, -1);
    curveVertex(-6, -11);
    curveVertex(-6, -11);
    endShape();
    //toes
    pushMatrix();
    translate(-9, 8);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    translate(-.4, -1);
    rotate(radians(50));
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(40));
    translate(-1.2, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    popMatrix();
    popMatrix();


    //right arm
    noStroke();
    pushMatrix();
    translate(6, 4);
    rotate(radians(150+180+r));
    fill(#2FB902);
    curveTightness(0.001);
    beginShape();
    curveVertex(.5, 0);
    curveVertex(.5, 0);
    curveVertex(1.5, 5);
    curveVertex(2, 11);
    curveVertex(1, 13);
    curveVertex(-2, 12);
    curveVertex(-6, 10);
    curveVertex(-10, 7);
    curveVertex(-9, 6);
    curveVertex(-7, 5);
    curveVertex(-7, 5);
    curveVertex(-4, 7);
    curveVertex(-3, 8);
    curveVertex(-4, 5);
    curveVertex(-6, -1);
    curveVertex(-7, -13);
    curveVertex(-7, -13);
    endShape();
    //toes
    pushMatrix();
    translate(-9, 8);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    translate(-.4, -1);
    rotate(radians(50));
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    rotate(radians(40));
    translate(-1.2, -.5);
    rect(0, 0, 1.5, 3.5);
    ellipse(0.75, 3.5, 2, 2); 

    popMatrix();
    popMatrix();


    //left arm
    noStroke();
    pushMatrix();
    translate(-2, -14);
    rotate(radians(140-r));
    fill(#2FB902);
    curveTightness(0.001);
    beginShape();
    curveVertex(-.5, 0);
    curveVertex(-.5, 0);
    curveVertex(-1.5, 5);
    curveVertex(-2, 11);
    curveVertex(-1, 13);
    curveVertex(2, 12);
    curveVertex(6, 10);
    curveVertex(10, 7);
    curveVertex(9, 6);
    curveVertex(7, 5);
    curveVertex(7, 5);
    curveVertex(4, 7);
    curveVertex(3, 8);
    curveVertex(4, 5);
    curveVertex(8, -6);
    curveVertex(8, -6);
    endShape();
    //toes
    pushMatrix();
    //fill(0);
    translate(8, 5.5);
    rotate(radians(140));
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    translate(-.4, -1);
    rotate(radians(50));
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.5, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    rotate(radians(50));
    translate(-1.2, -.5);
    rect(0, 0, 1.5, 3);
    ellipse(0.75, 3, 2, 2); 

    popMatrix();

    popMatrix();
    popMatrix();
  }
}
