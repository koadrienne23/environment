Sloth mySloth1;
Parrot myParrot1;
Grass[] mygrass= new Grass[50];
fern[] myfern= new fern[24];
tree[] mytree= new tree[8];
branch[] mybranch=new branch[1];
Drop[] drops; 
int totalDrops = 0;
butterfly[] fly = new butterfly[3];
Frog myFrog1;
waterfall[] mywaterfall= new waterfall[10];
boolean press=false;

float inc = 0.0;
float inc2=0;
float dir=0;
float tempx;
float direction;
float heights;
float r;
PImage img;
float x2;
float y2=0;
float size_leaf = 80;
float theta = 0;

float dir2;
void setup() {
  drops = new Drop[1000];    // Create 1000 spots in the array
  size(900, 400);
  stroke(255, 204);
  smooth();
  //background(0);
  for (int i=0; i<mybranch.length; i++) {
    if (i>50) {
      tempx=20*(i-35);
    } else {
      tempx=20*i;
    }
    mybranch[i]=new branch(tempx, 6, random(-1, 1));
  }
  for (int i=0; i<mygrass.length; i++) {
    tempx=40*i; 
    inc=random(-.01, .01)*i;
    mygrass[i]= new Grass(tempx, 6, random(-1, 1));
  }
  for (int i=0; i<myfern.length; i++) {
    int m=i%2;
    if (m==1) {
      direction=1;
      r=.04;
    } else {
      direction=-1;
      r=.04;
    }
    myfern[i]= new fern(i, direction, heights, r);
    myFrog1 = new Frog(width, height*5);
  }
  img=loadImage("trunk.png");
  for (int i=1; i<mytree.length; i+=2) {
    mytree[i]=new tree(105*i);
  }

  for (int i=0; i< fly.length; i++) {
    fly[i]= new butterfly(width/2-100*i+100, height/2+60*i-60, random(25, 40), random(0.02, 0.06));
  }
  for (int i=0; i<mywaterfall.length; i++) {
    mywaterfall[i]=new waterfall(800 +i, i);
  }
  mySloth1 = new Sloth(180, 275, 70, 145, 190);
  myParrot1 = new Parrot(2050, 600, 0.25);
}

void draw() {
  float c = 255/2*sin(theta)+255/2;
  float d = 75/2*sin(theta)+75/2;
  theta+=0.002;
  background(13, d, c);

  pushMatrix();
  translate(width/2, height);
  fill(#EDFF03);
  rotate(theta);
  noStroke();
  ellipse(-width/2.5, 0, 60, 60);
  fill(255);
  ellipse(width/2.5, 0, 40, 40);

  popMatrix();

  // speed of wave
  //println(inc);
  for (int i=0; i<mywaterfall.length; i++) {
    mywaterfall[i].display();
  }

  fill(#00B20D);
  noStroke();
  rect(0, height-20, width, 20);

  for (int i=0; i<mybranch.length; i++) {
    mybranch[i].display();
  }

  for (int i=1; i<mytree.length; i+=2) {
    mytree[i].display();
    mytree[3].havemonkey1();
    mytree[7].havemonkey2();
  }

  for (int i=0; i<mygrass.length; i++) {
    float dir2=noise(dir)*10;

    float angle1 = sin(inc)/10;
    dir+=.01;
    inc+=noise(dir)*.001*(i/20);
    float angle2=sin(inc2)/10;
    inc2+=noise(dir)*.0001*(i/20);

    mygrass[i].display1(angle1, angle2); 

    mygrass[i].move();
  }


  for (int i=0; i< fly.length; i++) {
    fly[i].display();
  }
  myFrog1.display();

  mySloth1.display();
  mySloth1.move();

  myParrot1.display();

  if (press) {
    drops[totalDrops] = new Drop();
    // Increment totalDrops
    totalDrops++ ;
  }
  // If we hit the end of the array
  if (press) {
    if (totalDrops >= drops.length) {
      totalDrops = 0; // Start over
    }
  }

  // Move and display all drops if (press)
  for (int i = 0; i < totalDrops; i ++ ) {
    drops[i].move();
    drops[i].display();
  }
}

void mouseClicked() {
  press=!press;
}
