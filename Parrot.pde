class Parrot{ 
  float x;
  float y;
  float s;
  float r = 110;;
  float w = 120;
  float h = -50;
  
  Parrot(float tempXpos, float tempYpos, float tempSize){
    x = tempXpos-width/2;
    y = tempYpos-height/2;
    s = tempSize;
  }
  
  void display() {
    pushMatrix();
    scale(s);
    translate(x,y+200);
    
    //tail
    w = 240;
    h = 140;
    r = 50;
    fill(255,0,0);
    bezier(w+40+1.844*r/10*9,h-220+height-0.295*r/10*9,w+40+2.74*r/10*9,h-220+height+5.13*r/10*9,w+40+3.32*r/10*9,h-220+height+5.32*r/10*9,w+40+2.12*r/10*9,h-220+height-0.24*r/10*9);
    bezier(w+40+2.12*r/10*9,h-220+height-0.24*r/10*9,w+40+3.34*r/10*9,h-220+height+5.74*r/10*9,w+40+3.97*r/10*9,h-220+height+5.8*r/10*9,w+40+2.4*r/10*9,h-220+height-0.36*r/10*9);
    bezier(w+40+2.4*r/10*9,h-220+height-0.36*r/10*9,w+40+3.97*r/10*9,h-220+height+5.8*r/10*9,w+40+4.91*r/10*9,h-220+height+5.9*r/10*9,w+40+2.71*r/10*9,h-220+height-0.26*r/10*9);
    fill(#0038FC);
    bezier(w+40+1.844*r/10*9,h-220+height-0.295*r/10*9,w+40+1.8*r/10*9,h-220+height+1.2*r/10*9,w+40+2.35*r/10*9,h-220+height+1.6*r/10*9,w+40+2.12*r/10*9,h-220+height-0.24*r/10*9);
    bezier(w+40+2.12*r/10*9,h-220+height-0.24*r/10*9,w+40+2.45*r/10*9,h-220+height+1.49*r/10*9,w+40+2.8*r/10*9,h-220+height+1.47*r/10*9,w+40+2.46*r/10*9,h-220+height-0.25*r/10*9);
    bezier(w+40+2.46*r/10*9,h-220+height-0.25*r/10*9,w+40+2.944*r/10*9,h-220+height+1.78*r/10*9,w+40+3.304*r/10*9,h-220+height+1.76*r/10*9,w+40+2.74*r/10*9,h-220+height-0.27*r/10*9);
    
    w = 160;
    h = -50;
    r = 110;
    beginShape(); //body
      fill(#E50000);
      noStroke();
      vertex(w+1.95*r,h+height-0.22*r);
      bezierVertex(w+0.62*r,h+height-1.07*r,w+0.72*r,h+height-2.22*r,w+1.44*r,h+height-2.48*r);
      vertex(w+78+0.383*r/10*9,h-170+height-0.69*r/10*9);
      bezierVertex(w+78+0.56*r/10*9,h-170+height-0.88*r/10*9,w+78+0.58*r/10*9,h-170+height-1.11*r/10*9,w+78+0.45*r/10*9,h-170+height-1.25*r/10*9);
      vertex(w+40+0.97*r/10*9,h-220+height-0.51*r/10*9);
      bezierVertex(w+40+0.73*r/10*9,h-220+height-0.96*r/10*9,w+40+0.17*r/10*9,h-220+height-1.67*r/10*9,w+40+1.37*r/10*9,h-220+height-1.39*r/10*9);
      vertex(w+40+1.37*r/10*9,h-220+height-1.39*r/10*9);
      bezierVertex(w+40+1.6*r/10*9,h-220+height-1.28*r/10*9,w+40+1.66*r/10*9,h-220+height-0.89*r/10*9,w+40+1.72*r/10*9,h-220+height-0.51*r/10*9);
      vertex(w+40+1.72*r/10*9,h-220+height-0.51*r/10*9);
      bezierVertex(w+40+2.073*r/10*9,h-220+height-0.364*r/10*9,w+40+2.16*r/10*9,h-220+height+0.38*r/10*9,w+40+2.21*r/10*9,h-220+height+1.387*r/10*9);
    endShape();
    
    stroke(0);
    strokeWeight(0.5);
    
    w = 135;
    h = -40;
    r = 90;
    beginShape(); //eye area
      fill(#EACECE);
      vertex(w+40+1.299*r/10*9,h-220+height-1.547*r/10*9);
      bezierVertex(w+40+1.29*r/10*9,h-220+height-1.9*r/10*9,w+40+2.038*r/10*9,h-220+height-1.7*r/10*9,w+40+2.05*r/10*9,h-220+height-1.5*r/10*9);
      vertex(w+40+2.05*r/10*9,h-220+height-1.5*r/10*9);
      bezierVertex(w+40+2.094*r/10*9,h-220+height-1.187*r/10*9,w+40+1.807*r/10*9,h-220+height-0.843*r/10*9,w+40+1.55*r/10*9,h-220+height-0.86*r/10*9);
    endShape();
    
    beginShape(); //beak
      fill(#F0DFB3);
      vertex(w+40+0.882*r/10*9,h-220+height-0.71*r/10*9);
      bezierVertex(w+40+0.523*r/10*9,h-220+height-1.12*r/10*9,w+40+0.792*r/10*9,h-220+height-1.41*r/10*9,w+40+1.11*r/10*9,h-220+height-1.603*r/10*9);
      vertex(w+40+1.11*r/10*9,h-220+height-1.603*r/10*9);
      bezierVertex(w+40+1.327*r/10*9,h-220+height-1.58*r/10*9,w+40+1.466*r/10*9,h-220+height-1.443*r/10*9,w+40+1.51*r/10*9,h-220+height-1.292*r/10*9);
      vertex(w+40+1.51*r/10*9,h-220+height-1.292*r/10*9);
      bezierVertex(w+40+1.523*r/10*9,h-220+height-1.2*r/10*9,w+40+1.55*r/10*9,h-220+height-1.14*r/10*9,w+40+1.617*r/10*9,h-220+height-1.13*r/10*9);
      vertex(w+40+1.617*r/10*9,h-220+height-1.13*r/10*9);
      bezierVertex(w+40+1.59*r/10*9,h-220+height-1.1*r/10*9,w+40+1.58*r/10*9,h-220+height-1.04*r/10*9,w+40+1.585*r/10*9,h-220+height-0.99*r/10*9);
      vertex(w+40+1.585*r/10*9,h-220+height-0.99*r/10*9);
      bezierVertex(w+40+1.585*r/10*9,h-220+height-0.655*r/10*9,w+40+1.255*r/10*9,h-220+height-0.555*r/10*9,w+40+1.08*r/10*9,h-220+height-0.703*r/10*9);
      vertex(w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
      bezierVertex(w+40+1.13*r/10*9,h-220+height-0.785*r/10*9,w+40+1.164*r/10*9,h-220+height-0.846*r/10*9,w+40+1.18*r/10*9,h-220+height-0.95*r/10*9);
      vertex(w+40+1.18*r/10*9,h-220+height-0.95*r/10*9);
      bezierVertex(w+40+0.995*r/10*9,h-220+height-0.954*r/10*9,w+40+0.856*r/10*9,h-220+height-0.91*r/10*9,w+40+0.882*r/10*9,h-220+height-0.71*r/10*9);
      vertex(w+40+0.882*r/10*9,h-220+height-0.71*r/10*9);
    endShape();
    
    beginShape(); //beak detail
      fill(0);
      vertex(w+40+1.1*r/10*9,h-220+height-0.95*r/10*9);
      bezierVertex(w+40+1.333*r/10*9,h-220+height-1.04*r/10*9,w+40+1.455*r/10*9,h-220+height-1.14*r/10*9,w+40+1.51*r/10*9,h-220+height-1.292*r/10*9); 
      vertex(w+40+1.51*r/10*9,h-220+height-1.292*r/10*9);
      bezierVertex(w+40+1.523*r/10*9,h-220+height-1.2*r/10*9,w+40+1.55*r/10*9,h-220+height-1.14*r/10*9,w+40+1.617*r/10*9,h-220+height-1.13*r/10*9);
      vertex(w+40+1.617*r/10*9,h-220+height-1.13*r/10*9);
      bezierVertex(w+40+1.59*r/10*9,h-220+height-1.1*r/10*9,w+40+1.58*r/10*9,h-220+height-1.04*r/10*9,w+40+1.585*r/10*9,h-220+height-0.99*r/10*9);
      vertex(w+40+1.585*r/10*9,h-220+height-0.99*r/10*9);
      bezierVertex(w+40+1.585*r/10*9,h-220+height-0.655*r/10*9,w+40+1.255*r/10*9,h-220+height-0.555*r/10*9,w+40+1.08*r/10*9,h-220+height-0.703*r/10*9);
      vertex(w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
      bezierVertex(w+40+1.13*r/10*9,h-220+height-0.785*r/10*9,w+40+1.164*r/10*9,h-220+height-0.846*r/10*9,w+40+1.18*r/10*9,h-220+height-0.95*r/10*9);
      vertex(w+40+1.1*r/10*9,h-220+height-0.95*r/10*9);
    endShape();
    
    beginShape(); //beak detail
      fill(0);
      vertex(w+40+0.882*r/10*9,h-220+height-0.71*r/10*9);
      bezierVertex(w+40+0.828*r/10*9,h-220+height-0.766*r/10*9,w+40+0.78*r/10*9,h-220+height-0.841*r/10*9,w+40+0.74*r/10*9,h-220+height-0.938*r/10*9);
      vertex(w+40+0.74*r/10*9,h-220+height-0.938*r/10*9);
      bezierVertex(w+40+0.7984*r/10*9,h-220+height-0.947*r/10*9,w+40+0.8855*r/10*9,h-220+height-0.917*r/10*9,w+40+0.917*r/10*9,h-220+height-0.8915*r/10*9);
      vertex(w+40+0.93*r/10*9,h-220+height-0.8915*r/10*9);
      bezierVertex(w+40+0.8855*r/10*9,h-220+height-0.864*r/10*9,w+40+0.875*r/10*9,h-220+height-0.7725*r/10*9,w+40+0.882*r/10*9,h-220+height-0.71*r/10*9);
    endShape();
    
    w = 163;
    h = -58;
    r = 68;
    beginShape(); //mouth
      fill(#D62B2E);
      noStroke();
      vertex(w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
      bezierVertex(w+40+1.13*r/10*9,h-220+height-0.785*r/10*9,w+40+1.164*r/10*9,h-220+height-0.846*r/10*9,w+40+1.18*r/10*9,h-220+height-0.95*r/10*9);
      vertex(w+40+1.18*r/10*9,h-220+height-0.95*r/10*9);
      bezierVertex(w+40+1.26*r/10*9,h-220+height-0.955*r/10*9,w+40+1.336*r/10*9,h-220+height-0.965*r/10*9,w+40+1.428*r/10*9,h-220+height-1.002*r/10*9);
      vertex(w+40+1.428*r/10*9,h-220+height-1.002*r/10*9);
      bezierVertex(w+40+1.37*r/10*9,h-220+height-0.88*r/10*9,w+40+1.21*r/10*9,h-220+height-0.733*r/10*9,w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
    endShape();
    
    w = 198;
    h = -82;
    r = 40;
    beginShape();
      fill(#FFB2B3);
      vertex(w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
      bezierVertex(w+40+1.1*r/10*9,h-220+height-0.785*r/10*9,w+40+1.155*r/10*9,h-220+height-0.846*r/10*9,w+40+1.1*r/10*9,h-220+height-0.95*r/10*9);
      vertex(w+40+1.1*r/10*9,h-220+height-0.95*r/10*9);
      bezierVertex(w+40+1.26*r/10*9,h-220+height-0.955*r/10*9,w+40+1.336*r/10*9,h-220+height-0.965*r/10*9,w+40+1.428*r/10*9,h-220+height-1.002*r/10*9);
      vertex(w+40+1.428*r/10*9,h-220+height-1.002*r/10*9);
      bezierVertex(w+40+1.37*r/10*9,h-220+height-0.88*r/10*9,w+40+1.21*r/10*9,h-220+height-0.733*r/10*9,w+40+1.07*r/10*9,h-220+height-0.703*r/10*9);
    endShape(); 
    
    pushMatrix(); //eye
      stroke(0);
      translate(1.545454*w,height+4.634146*h);
      rotate(PI/20*18);
      fill(255);
      ellipse(0,0,23,33);
      fill(#56D8ED);
      ellipse(-1,-1.5,16,26);
      fill(0);
      ellipse(-1,-1.5,11,19);
      fill(255);
      ellipse(2,1,4,4);
      ellipse(0,6,5.5,5.5);
    popMatrix();
    
    r = 250;
    w = -100;
    h = 190;
    
    beginShape();
      fill(0,0,255);
      vertex(w+40+1.914*r/10*9,h-220+height-1.21*r/10*9);
      bezierVertex(w+40+1.584*r/10*9,h-220+height-1.366*r/10*9,w+40+1.52*r/10*9,h-220+height-0.73*r/10*9,w+40+2.09*r/10*9,h-220+height-0.14*r/10*9);
      vertex(w+40+2.09*r/10*9,h-220+height-0.14*r/10*9);
      bezierVertex(w+40+2.14*r/10*9,h-220+height-0.08*r/10*9,w+40+2.195*r/10*9,h-220+height-0.09*r/10*9,w+40+2.127*r/10*9,h-220+height-0.19*r/10*9);
      vertex(w+40+2.127*r/10*9,h-220+height-0.19*r/10*9);
      bezierVertex(w+40+1.948*r/10*9,h-220+height-0.378*r/10*9,w+40+1.746*r/10*9,h-220+height-0.704*r/10*9,w+40+1.74*r/10*9,h-220+height-0.912*r/10*9);
      vertex(w+40+1.74*r/10*9,h-220+height-0.912*r/10*9);
      bezierVertex(w+40+1.746*r/10*9,h-220+height-0.704*r/10*9,w+40+1.948*r/10*9,h-220+height-0.378*r/10*9,w+40+2.127*r/10*9,h-220+height-0.19*r/10*9);
      vertex(w+40+2.127*r/10*9,h-220+height-0.19*r/10*9);
      bezierVertex(w+40+2.175*r/10*9,h-220+height-0.168*r/10*9,w+40+2.195*r/10*9,h-220+height-0.225*r/10*9,w+40+2.115*r/10*9,h-220+height-0.3*r/10*9);
      vertex(w+40+2.115*r/10*9,h-220+height-0.3*r/10*9);
      bezierVertex(w+40+1.993*r/10*9,h-220+height-0.435*r/10*9,w+40+1.82*r/10*9,h-220+height-0.702*r/10*9,w+40+1.806*r/10*9,h-220+height-0.915*r/10*9);
      vertex(w+40+1.806*r/10*9,h-220+height-0.915*r/10*9);
      bezierVertex(w+40+1.82*r/10*9,h-220+height-0.702*r/10*9,w+40+1.993*r/10*9,h-220+height-0.435*r/10*9,w+40+2.115*r/10*9,h-220+height-0.3*r/10*9);
      vertex(w+40+2.115*r/10*9,h-220+height-0.3*r/10*9);
      bezierVertex(w+40+2.17*r/10*9,h-220+height-0.245*r/10*9,w+40+2.192*r/10*9,h-220+height-0.31*r/10*9,w+40+2.118*r/10*9,h-220+height-0.4*r/10*9);
      vertex(w+40+2.118*r/10*9,h-220+height-0.4*r/10*9);
      bezierVertex(w+40+1.997*r/10*9,h-220+height-0.537*r/10*9,w+40+1.89*r/10*9,h-220+height-0.775*r/10*9,w+40+1.865*r/10*9,h-220+height-0.954*r/10*9);
      vertex(w+40+1.865*r/10*9,h-220+height-0.954*r/10*9);
      bezierVertex(w+40+1.89*r/10*9,h-220+height-0.775*r/10*9,w+40+1.997*r/10*9,h-220+height-0.537*r/10*9,w+40+2.118*r/10*9,h-220+height-0.4*r/10*9);
      vertex(w+40+2.118*r/10*9,h-220+height-0.4*r/10*9);
      bezierVertex(w+40+2.15*r/10*9,h-220+height-0.33*r/10*9,w+40+2.2*r/10*9,h-220+height-0.4*r/10*9,w+40+2.115*r/10*9,h-220+height-0.51*r/10*9);
      vertex(w+40+2.115*r/10*9,h-220+height-0.51*r/10*9);
      bezierVertex(w+40+2.02*r/10*9,h-220+height-0.67*r/10*9,w+40+1.939*r/10*9,h-220+height-0.875*r/10*9,w+40+1.924*r/10*9,h-220+height-1.014*r/10*9);
      vertex(w+40+1.924*r/10*9,h-220+height-1.014*r/10*9);
      bezierVertex(w+40+1.939*r/10*9,h-220+height-0.875*r/10*9,w+40+2.02*r/10*9,h-220+height-0.67*r/10*9,w+40+2.115*r/10*9,h-220+height-0.51*r/10*9);
      vertex(w+40+2.115*r/10*9,h-220+height-0.51*r/10*9);
      bezierVertex(w+40+2.155*r/10*9,h-220+height-0.49*r/10*9,w+40+2.197*r/10*9,h-220+height-0.515*r/10*9,w+40+2.112*r/10*9,h-220+height-0.658*r/10*9);
      vertex(w+40+2.112*r/10*9,h-220+height-0.658*r/10*9);
      bezierVertex(w+40+2.053*r/10*9,h-220+height-0.765*r/10*9,w+40+2.005*r/10*9,h-220+height-0.918*r/10*9,w+40+1.994*r/10*9,h-220+height-1.035*r/10*9);
      vertex(w+40+1.994*r/10*9,h-220+height-1.035*r/10*9);
      bezierVertex(w+40+2.005*r/10*9,h-220+height-0.918*r/10*9,w+40+2.053*r/10*9,h-220+height-0.765*r/10*9,w+40+2.112*r/10*9,h-220+height-0.658*r/10*9);
      vertex(w+40+2.112*r/10*9,h-220+height-0.658*r/10*9);
      bezierVertex(w+40+2.156*r/10*9,h-220+height-0.592*r/10*9,w+40+2.18*r/10*9,h-220+height-0.68*r/10*9,w+40+2.113*r/10*9,h-220+height-0.8*r/10*9);
    endShape();
    
    beginShape();
      fill(#FEFF03);
      vertex(w+40+1.663*r/10*9,h-220+height-1.08*r/10*9);
      bezierVertex(w+40+1.65*r/10*9,h-220+height-0.934*r/10*9,w+40+1.68*r/10*9,h-220+height-0.859*r/10*9,w+40+1.723*r/10*9,h-220+height-0.798*r/10*9);
      vertex(w+40+1.723*r/10*9,h-220+height-0.798*r/10*9);
      bezierVertex(w+40+1.748*r/10*9,h-220+height-0.859*r/10*9,w+40+1.744*r/10*9,h-220+height-0.924*r/10*9,w+40+1.73*r/10*9,h-220+height-1.007*r/10*9);
      vertex(w+40+1.73*r/10*9,h-220+height-1.007*r/10*9);
      bezierVertex(w+40+1.744*r/10*9,h-220+height-0.926*r/10*9,w+40+1.748*r/10*9,h-220+height-0.859*r/10*9,w+40+1.815*r/10*9,h-220+height-0.783*r/10*9);
      vertex(w+40+1.815*r/10*9,h-220+height-0.783*r/10*9);
      bezierVertex(w+40+1.823*r/10*9,h-220+height-0.86*r/10*9,w+40+1.826*r/10*9,h-220+height-0.953*r/10*9,w+40+1.8*r/10*9,h-220+height-1.037*r/10*9);
      vertex(w+40+1.8*r/10*9,h-220+height-1.037*r/10*9);
      bezierVertex(w+40+1.826*r/10*9,h-220+height-0.953*r/10*9,w+40+1.82*r/10*9,h-220+height-0.86*r/10*9,w+40+1.895*r/10*9,h-220+height-0.78*r/10*9);
      vertex(w+40+1.895*r/10*9,h-220+height-0.78*r/10*9);
      bezierVertex(w+40+1.914*r/10*9,h-220+height-0.842*r/10*9,w+40+1.9*r/10*9,h-220+height-0.936*r/10*9,w+40+1.88*r/10*9,h-220+height-1.014*r/10*9);
      vertex(w+40+1.88*r/10*9,h-220+height-1.014*r/10*9);
      bezierVertex(w+40+1.9*r/10*9,h-220+height-0.936*r/10*9,w+40+1.914*r/10*9,h-220+height-0.842*r/10*9,w+40+1.96*r/10*9,h-220+height-0.77*r/10*9);
      vertex(w+40+1.96*r/10*9,h-220+height-0.77*r/10*9);
      bezierVertex(w+40+1.974*r/10*9,h-220+height-0.856*r/10*9,w+40+1.966*r/10*9,h-220+height-0.934*r/10*9,w+40+1.95*r/10*9,h-220+height-1.024*r/10*9);
      vertex(w+40+1.95*r/10*9,h-220+height-1.024*r/10*9);
      bezierVertex(w+40+1.966*r/10*9,h-220+height-0.934*r/10*9,w+40+1.974*r/10*9,h-220+height-0.856*r/10*9,w+40+2.031*r/10*9,h-220+height-0.76*r/10*9);
      vertex(w+40+2.031*r/10*9,h-220+height-0.76*r/10*9);
      bezierVertex(w+40+2.048*r/10*9,h-220+height-0.842*r/10*9,w+40+2.05*r/10*9,h-220+height-0.917*r/10*9,w+40+2.025*r/10*9,h-220+height-1.02*r/10*9);
      vertex(w+40+2.025*r/10*9,h-220+height-1.02*r/10*9);
      bezierVertex(w+40+2.04*r/10*9,h-220+height-0.917*r/10*9,w+40+2.04*r/10*9,h-220+height-0.838*r/10*9,w+40+2.1*r/10*9,h-220+height-0.74*r/10*9);
      vertex(w+40+2.1*r/10*9,h-220+height-0.74*r/10*9);
      bezierVertex(w+40+2.128*r/10*9,h-220+height-0.791*r/10*9,w+40+2.12*r/10*9,h-220+height-0.894*r/10*9,w+40+2.07*r/10*9,h-220+height-1.03*r/10*9);
    endShape();
    
    beginShape();
      fill(255,0,0);
      vertex(w+40+1.914*r/10*9,h-220+height-1.21*r/10*9);
      bezierVertex(w+40+1.723*r/10*9,h-220+height-1.295*r/10*9,w+40+1.658*r/10*9,h-220+height-1.12*r/10*9,w+40+1.662*r/10*9,h-220+height-1.001*r/10*9);
      vertex(w+40+1.662*r/10*9,h-220+height-1.001*r/10*9);
      bezierVertex(w+40+1.688*r/10*9,h-220+height-0.988*r/10*9,w+40+1.727*r/10*9,h-220+height-1.046*r/10*9,w+40+1.72*r/10*9,h-220+height-1.08*r/10*9);
      vertex(w+40+1.72*r/10*9,h-220+height-1.08*r/10*9);
      bezierVertex(w+40+1.716*r/10*9,h-220+height-0.946*r/10*9,w+40+1.78*r/10*9,h-220+height-0.936*r/10*9,w+40+1.792*r/10*9,h-220+height-1.063*r/10*9);
      vertex(w+40+1.792*r/10*9,h-220+height-1.063*r/10*9);
      bezierVertex(w+40+1.78*r/10*9,h-220+height-0.936*r/10*9,w+40+1.859*r/10*9,h-220+height-0.916*r/10*9,w+40+1.866*r/10*9,h-220+height-1.04*r/10*9);
      vertex(w+40+1.866*r/10*9,h-220+height-1.04*r/10*9);
      bezierVertex(w+40+1.859*r/10*9,h-220+height-0.916*r/10*9,w+40+1.945*r/10*9,h-220+height-0.905*r/10*9,w+40+1.945*r/10*9,h-220+height-1.025*r/10*9);
      vertex(w+40+1.945*r/10*9,h-220+height-1.025*r/10*9);
      bezierVertex(w+40+1.945*r/10*9,h-220+height-0.905*r/10*9,w+40+2.014*r/10*9,h-220+height-0.86*r/10*9,w+40+2.03*r/10*9,h-220+height-0.998*r/10*9);
      vertex(w+40+2.03*r/10*9,h-220+height-0.998*r/10*9);
      bezierVertex(w+40+2.014*r/10*9,h-220+height-0.86*r/10*9,w+40+2.13*r/10*9,h-220+height-0.877*r/10*9,w+40+2.07*r/10*9,h-220+height-1.03*r/10*9);
      vertex(w+40+2.07*r/10*9,h-220+height-1.03*r/10*9);
      bezierVertex(w+40+2.03*r/10*9,h-220+height-1.131*r/10*9,w+40+1.97*r/10*9,h-220+height-1.19*r/10*9,w+40+1.914*r/10*9,h-220+height-1.21*r/10*9);
    endShape();
    
    pushMatrix();
      fill(#F5A607);
      translate(-3*w,height-0.60526*h);
      rotate(PI/10);
      ellipse(0,0,12,26);
      ellipse(10,0,12,26);
      ellipse(35,0,12,26);
      ellipse(45,0,12,26);
    popMatrix();
    popMatrix();
  }
  
}