class Grass {
  float x;
  int unit;
  float angle;
  float direction;
  float time=0;
  Grass(float tempx, int tempunit, float tempdirection) {
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
  void display1(float tempangle, float tempangle2) {

    pushMatrix();
    translate(x, height);
    for (int i = unit; i >0; i--) {

      stroke(50, i*50, 0);//set to green


      strokeWeight(i*2); 

      line(0, 0, 0, -20);
      translate(0, -10);
      float r=random(tempangle, tempangle2);
      rotate(tempangle*direction);
    }
    popMatrix();
  }

  void move() {
    inc += .0001;
  }
  float sinfunction() {
    return inc;
  }
}
