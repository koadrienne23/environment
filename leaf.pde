class leaf {
  float x;
  float y;
  float r;
  float rotate;

  leaf(float xi, float yi, float b, float rot) {
    x=xi;
    y=yi;
    r=b;
    rotate = rot;
  }

  void display() {
    fill(#93C65C);
    pushMatrix();
    translate(x, y);
    noStroke();
    scale(size_leaf/80*r);
    rotate(rotate);
    beginShape();
    vertex(5.13, -3.55);
    bezierVertex(3.53, -3.0, 1.4, -1.8, 0, 0);
    vertex(0, 0);
    bezierVertex(1.4, -1.8, 3.53, -1.6, 5.13, -3.55);
    endShape();
    popMatrix();
  }


  void display2() {
    fill(#93C65C);
    pushMatrix();
    translate(x, y);
    noStroke();
    scale(size_leaf/80*r);
    rotate(rotate);
    beginShape();
    vertex(5.13, 3.55);
    bezierVertex(3.53, 3.0, 1.4, 1.8, 0, 0);
    vertex(0, 0);
    bezierVertex(1.4, 1.8, 3.53, 1.6, 5.13, 3.55);
    endShape();
    popMatrix();
  }
}
