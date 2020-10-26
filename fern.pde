class fern {
  float x = 0;
  float y = 0;
  int j;
  float direction;
  float heights;
  float r2;
  float add;
  fern(int tempi, float tempdir, float tempheight, float tempr) {
    j=tempi;
    direction=tempdir;
    heights=tempheight;
    r2=tempr;
  }

  void display2(float x2) {
    for (int i = 0; i < 10000; i++) {
      rotate(PI);
      float xt = 0;
      float yt = 0;

      float r = random(100);

      if (r <= 1) {
        xt = 0;
        yt = .16*y;
      } else if (r <= 8) {
        xt = 0.20*x - 0.26*y;
        yt = 0.23*x +0.022*y + .50;
      } else if (r <= 15) {
        xt = -0.17*x + 0.28*y;
        yt =  0.26*x + 0.024*y + 0.44;
      } else {
        xt =  0.85*x + (0.04*y);
        yt = -0.004*x + .85*y +.5;
      }

      x = xt;
      y = yt;

      if (j>3 && j<=7) {
        j=j-3;
      }
      if (j>7) {
        j=j-6;
      }
      if (j<=1) {
        add=10*j;
        dir2=1;
      }
      if (j==2) {
        add=70;
        dir2=-1;
      }
      if (j==3) {
        add=80;
        dir2=-1;
      }
      int m = round((x2) + dir2*40*x +add);
      int n = ((height/2)-60 )+round((30*y));


      //https://processing.org/reference/set_.html
      color mycolor= color(48, 209, 87);
      set(m, n, mycolor);
    }
  }
}
