class branch {
  float x;

  int unit;
  float angle;
  float direction;
  float time=0;

  branch(float tempx, int tempunit, float tempdirection) {
    x=tempx;
    unit=tempunit;
    direction=tempdirection;
    if ((direction %1)>0) {
      direction=1;
    }
    if ((direction%1)<0) {
      direction=-1;
    }
  }




  void display() {
    pushMatrix();
    translate(width/2, height/1.5);
    scale(20);
    stroke(#0A2C09);
    strokeWeight(1);
    noFill();
    bezier(0, -12.68, 1.7, -11.4, 8.4, -5.2, 30.86, -4.1);
    bezier(0, -12.68, 1.7, 11.4, 8.4, 5.2, 30.86, -4.1);
    bezier(0, -12.68, 1.7, -15.4, 8.4, -9.2, 30.86, -4.1);
    bezier(3.48, -10, 7.9, 6.4, 13.03, 1.87, 4.85, 20);
    bezier(2.48, -20, -7.9, 6.4, -13.03, 1.87, -4.85, 20);

    bezier(0, -12.68, -1.7, -15.4, -8.4, -9.2, -30.86, -4.1);
    bezier(-1.48, -13, -7.9, -7.4, -15.03, 1.87, -20.85, 20);
    bezier(-2.48, -20, -7.9, 6.4, -13.03, 1.87, -4.85, 20);

    popMatrix();
  }
}
