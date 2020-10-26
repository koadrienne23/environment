class Frog {
  float x;
  float y;
  float w = 120;
  float h = 95;
  float theta;

  Frog(float xFrog, float yFrog) {
    x = xFrog;
    y = yFrog;
  }

  void display() {
    pushMatrix();
    scale(0.2);
    float tl = 70;
    float tspeed = 1;
    tl+=5;
    float pw = 5;
    //BENDING LEGS ACROSS
    pushMatrix();

    rotate(radians(-10));
    stroke(#57C439);
    strokeWeight(20);

    if (sin(theta)>=0.5)
    {
      line(x-w+30, y+w-30, x, y+0.9*w); //legs ACROSS
      line(x, y+0.9*w, x+w-30, y+w-30);
    }

    if (sin(theta)<=0.5) {
      line(x-w+30, y+w-30, x, y+2*(w/3)); //legs bent
      line(x, y+2*(w/3), x+w-30, y+w-30);
    }
    popMatrix();

    pushMatrix();
    translate(3, sin(theta)*10);
    theta+=0.5;
    ellipseMode(CENTER);
    noStroke();
    fill(#57C439); //FROG GREEN
    rotate(radians(-10));
    stroke(#57C439); //FROG GREEN STROKE FILL
    strokeWeight(20);

    pushMatrix();
    stroke(#288623);
    strokeWeight(1);
    //  rotate(radians(10));
    ellipse(x, y+60, w+10, h+10); //body
    popMatrix();

    ellipse(x, y, w, h); //head

    stroke(#57C439); //FROG GREEN STROKE FILL
    strokeWeight(20);
    float lal = x-95; //controls length of left arm
    float ral = x+110; //same, but for right arm
    line(x, y+85, lal, y); //left arm
    line(x, y+90, ral, y-10); //right arm
    strokeWeight(7);
    line(lal, y, lal, y-25); //left side - right finger
    ellipse(lal, y-25, pw, pw); //Pad of finger
    line(lal, y, lal-25, y-20); //left side - middle finger
    ellipse(lal-25, y-20, pw, pw); //Pad of finger
    line(lal, y, lal-25, y+5); //left side - left finger
    ellipse(lal-25, y+5, pw, pw); //Pad of finger
    line(ral, y-10, ral, y-35); //right side - left finger
    ellipse(ral, y-35, pw, pw); //Pad of finger
    line(ral, y-10, ral+25, y-30); //right side - middle finger
    ellipse(ral+25, y-30, pw, pw); //Pad of finger
    line(ral, y-10, ral+25, y-5); //right side - right finger
    ellipse(ral+25, y-5, pw, pw); //Pad of finger

    noStroke();
    ellipse(x-w/3, y-h/3, w/2, w/2); //left eye circle
    ellipse(x+w/3, y-h/3, w/2, w/2); //right eye circle
    strokeWeight(50);

    strokeWeight(1);
    fill(255); //WHITE
    ellipse(x-w/3, y-h/3.5, w/3, w/3); //left eye white
    ellipse(x+w/3, y-h/3.5, w/3, w/3); //right eye white

    fill(0); //BLACK
    ellipse(x-w/3, y-h/4, w/5, w/5); //left eye black
    ellipse(x+w/3, y-h/4, w/5, w/5); //right eye black
    ellipse(x-10, y, 5, 15); //left nostril
    ellipse(x+10, y, 5, 15); //right nostril
    popMatrix();

    //LEGS
    pushMatrix();
    rotate(radians(-10));
    stroke(#57C439);
    strokeWeight(15);
    line(x-w+30, y+w-30, x-40, y+1.2*w); //left leg
    line(x+w-30, y+w-30, x+50, y+1.1*w); //right leg
    strokeWeight(17);
    line(x-40, y+1.2*w, x-75, y+1.2*w); //left foot thing
    line(x+50, y+1.1*w, x+93, y+1.1*w); //right foot thing
    strokeWeight(7);
    line(x+95, y+1.05*w, x+110, y+0.97*w); //right foot left finger
    ellipse(x+110, y+0.97*w, pw, pw);
    line(x+95, y+1.1*w, x+120, y+1.11*w); //right foot middle finger
    ellipse(x+120, y+1.11*w, pw, pw);
    line(x+95, y+1.15*w, x+110, y+1.23*w); //right foot right finger
    ellipse(x+110, y+1.23*w, pw, pw);
    line(x-75, y+1.18*w, x-97, y+1.05*w); //left foot right finger
    ellipse(x-97, y+1.05*w, pw, pw);
    line(x-75, y+1.2*w, x-100, y+1.2*w); //left foot middle finger
    ellipse(x-100, y+1.2*w, pw, pw);
    line(x-75, y+1.2*w, x-97, y+1.33*w); //left foot left finger
    ellipse(x-97, y+1.33*w, pw, pw);
    popMatrix();

    //MOUTH AND TONGUE
    pushMatrix();
    translate(x+340, y-150);
    translate(3, sin(theta-PI/4)*10);

    //   if(mousePressed){translate(3,20);}
    stroke(#FA5F51);
    strokeWeight(5);
    tl+=tspeed;
    if (tl >=70 || tl<=16) {
      tspeed=tspeed*-1;
    }
    line(17, -2, tl, 5);
    beginShape();
    for (float xm = -40; xm<40; xm+=1) {
      strokeWeight(3);
      stroke(0);
      float ym = -0.01*xm*xm;
      beginShape();
      vertex(xm, ym);
      endShape();
    }
    popMatrix();


    popMatrix();
  }
}
