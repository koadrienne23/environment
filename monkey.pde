class monkey {
  float xp;
  float yp;
  float x;
  float y;
  float s;
  float angle=0;
  float rotate;
  float speed;

  monkey(float xi, float yi, float size, float sp) {
    xp=xi;
    yp=yi;
    s = size;
    x=-s/80*45-60*s/80*1.1;
    y=-50*s/80;
    speed=sp;
  }

  void display() {
    pushMatrix();
    noStroke();
    translate(xp, yp);
    translate(x+s/80*45, y+s/80*50);

    rotate= 30*sin(angle)-40;
    rotate(radians(rotate));
    angle+=speed;


    //tail
    pushMatrix();
    translate(x-s*1.14, y-s/80*10);
    noFill();
    strokeJoin(BEVEL);
    curveTightness(0.001);
    stroke(#461A04);
    strokeWeight(int(s/80*10));
    beginShape();
    curveVertex(0, 0); 
    curveVertex(0, 0);
    curveVertex(s/80*5, s/80*-5);
    curveVertex(s/80*10, s/80*10);
    curveVertex(0, s/80*15);
    curveVertex(s/80*-10, s/80*14);
    curveVertex(s/80*-20, 0);
    curveVertex(s/80*-10, s/80*-20);
    curveVertex(s/80*15, s/80*-15);
    curveVertex(s/80*25, s/80*20); 
    curveVertex(0, s/80*70);
    curveVertex(0, s/80*140);
    curveVertex(s/80*50, s/80*160);
    curveVertex(s/80*50, s/80*160);
    endShape();
    popMatrix();
    noStroke();

    //left leg
    pushMatrix();
    fill(#461A04);

    translate(x-s*.35, y+s*1.9);
    scale(s/80*1.2);
    beginShape();
    curveTightness(0.001);
    curveVertex(0, 0);
    curveVertex(0, 0);
    curveVertex(-20, 40);
    curveVertex(5, 50);
    curveVertex(-10, 60);
    curveVertex(-15, 65);
    curveVertex(-10, 70);
    curveVertex(20, 55);
    curveVertex(0, 40);
    curveVertex(10, 20);
    curveVertex(0, 0);
    curveVertex(0, 0);
    endShape();
    popMatrix();

    //right leg
    pushMatrix();
    translate(x+s*.35, y+s*1.9);
    scale(s/80*1.2);
    beginShape();
    curveTightness(0.001);
    curveVertex(0, 0);
    curveVertex(0, 0);
    curveVertex(20, 40);
    curveVertex(-5, 50);
    curveVertex(10, 60);
    curveVertex(15, 65);
    curveVertex(10, 70);
    curveVertex(-20, 55);
    curveVertex(0, 40);
    curveVertex(-10, 20);
    curveVertex(0, 0);
    curveVertex(0, 0);
    endShape();
    popMatrix();

    //right arm
    pushMatrix();
    translate(x+s/80*45, y+s/80*50);
    scale(s/80*1.1); 
    beginShape();
    curveTightness(0.01);
    curveVertex(-10, -13);
    curveVertex(-10, -13);
    curveVertex(37, 40);
    curveVertex(55, 10);

    curveVertex(50, -5);
    curveVertex(60, -10);
    curveVertex(70, -5);

    curveVertex(68, 10);
    curveVertex(47, 60);
    curveVertex(10, 40);
    curveVertex(10, 40);
    endShape();
    popMatrix();


    //left arm
    pushMatrix();
    translate(x-s*.6, y+s/80*60);
    scale(s/80*1.2);

    beginShape();
    curveTightness(.1);

    curveVertex(10, -18);
    curveVertex(10, -18);
    curveVertex(0, -10);
    curveVertex(-7, 0);
    curveVertex(-20, 25);
    curveVertex(-25, 45);
    curveVertex(-27, 65);

    curveVertex(-31, 72);
    curveVertex(-25, 79);
    curveVertex(-9, 74);
    curveVertex(-11, 65);

    curveVertex(-11, 45);
    curveVertex(-4, 25);
    curveVertex(9, 0);
    curveVertex(15, -5);
    curveVertex(15, -5);

    endShape();
    popMatrix();


    // body
    fill(#461A04);
    ellipse(x, y+s*1.25, s*1.4, s*2);
    fill(#744C10 );
    ellipse(x, y+s*1.25, s*1.1, s*1.7);


    //ears
    fill(#461A04);
    ellipse(x+s*.46, y-s*.15, s/8*3, s/2);
    ellipse(x-s*.46, y-s*.15, s/8*3, s/2);
    fill(#744C10 );
    ellipse(x+s*.46, y-s*.15, s/8*2, s/8*3);
    ellipse(x-s*.46, y-s*.15, s/8*2, s/8*3);

    //head
    fill(#461A04);
    ellipse(x, y, s, s*1.3);
    fill(#744C10 );
    arc(x, y, s*.8, s*1.1, 0, PI);
    bezier(x-s*.4, y, x-s*.3, y-s*.3, x-s*.1, y-s*.3, x, y);
    bezier(x+s*.4, y, x+s*.3, y-s*.3, x+s*.1, y-s*.3, x, y);

    //eyes
    fill(#310202);
    ellipse(x-s*.2, y, s/80*15, s/80*15);
    ellipse(x+s*.2, y, s/80*15, s/80*15);
    fill(255);
    ellipseMode(CORNER);
    ellipse(x-s*.2, y-s/80*4, s/80*5, s/80*5);
    ellipse(x+s*.2, y-s/80*4, s/80*5, s/80*5);
    ellipseMode(CENTER);

    //nose
    fill(#461A04);
    ellipse(x, y+s/80*12, s/80*12, s/80*7);

    //mouth
    stroke(#461A04);
    noFill();
    strokeWeight(int(s/80*1)+1);
    bezier(x-s*.25, y+s/8*2, x-s/80*10, y+s/8*3.5, x+s/80*10, y+s/8*3.5, x+s*.25, y+s/8*2);
    noStroke();  

    popMatrix();
  }
}
