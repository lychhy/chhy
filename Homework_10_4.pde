letter [] ss;
potato [] cc;
void setup(){
  size(1000,800);
  ss = new letter[8];
  cc = new potato[8];
  for(int i=0;i<8;i++) ss[i] = new letter();
  for(int i=0;i<8;i++) cc[i] = new potato();
}
void draw(){
  background(255,255,0);
  for(int i=0 ;i<8;i++){
    ss[i].envelope();
    ss[i].lamp();
  }
  for(int i=0;i<8;i++){
    cc[i].chip();
    cc[i].well();
  }
  ss[2].lamp();
  cc[4].well();
}
void mousePressed(){
  ss[4].x = mouseX;
  ss[4].y = mouseY;
}
void keyPressed(){
  if(key == 'a') cc[4].x -= 5;
  else if(key == 'd') cc[4].x += 5;
  else if(key == 's') cc[4].y -= 5;
  else if(key == 'w') cc[4].y += 5;
}
class letter {
  letter(){
    x = random(width);
    y = random(height);
    d = random(100,60);
    vx =  random(2,4);
    vy = random(2,4);
    a1 = new potato();
    a2 = new potato();
  }
  letter(float a, float b, float c){
    x = a; y = b; d= c; 
    vx = random(2,4);
    vy = random(2,4);
    a1 = new potato();
    a2 = new potato();
  }
  float x, y, d, vx , vy;
  potato a1,a2;
  void lamp(){
    y += vy; 
    x += vx;
    if(y>height || y<0) vy = -vy;
    if(x>width || x<0) vx =-vx;
  }
  void envelope(){
    a1.x = x-d;
    a1.y = y;
    a2.x = x+d;
    a2.y = y;
    a1.chip();
    a2.chip();
    fill(173,216,230);
    strokeWeight(5);
    rect(x,y,d,0.6*d);
    line(x,y,x+d,y+0.6*d);
    line(x+d,y,x,y+0.6*d);
    fill(249,204,202);
    circle(x+0.5*d,y+0.3*d,0.2*d);
  }
}
class potato {
  potato() {
    x = random(width);
    y = random(height);
    d = random(100, 50);
    vx = random(4,6);
    vy = random(4,6);
  }
  potato(float a, float b, float c) {
    x = a;
    y = b;
    d = c;
    vx = random(3,6);
    vy = random(3,6);
  }
  float x, y, d,vx, vy;
  void well(){
    x += vx;
    y += vy;
    if( x> width-0 || x<0){
      vx =-vx;
    }
    if( y > height-0 || y<0){
      vy =-vy;
    }
  }
  void chip() {
    stroke(0);
    fill(750, 105, 30);
    ellipse(x+0.2*d, y+0.3*d, 0.3*d, 0.2*d); // right leg
    ellipse(x+0.8*d, y+0.3*d, 0.3*d, 0.2*d); //left leg
    ellipse(x+0.1*d, y, 0.4*d, 0.2*d);  //left hand
    ellipse(x+0.9*d, y, 0.4*d, 0.2*d); //right hand
    ellipse(x+0.5*d, y, 0.9*d, 0.7*d); // body
    fill(0);
    line(x+0.2*d, y-0.11*d, x+0.4*d, y-0.21*d); //left eyebrow
    line(x+0.6*d, y-0.23*d, x+0.8*d, y-0.11*d); //right eyebrow
    line(x+0.3*d, y-0.1*d, x+0.4*d, y-0.05*d); //left eyes
    line(x+0.3*d, y, x+0.4*d, y-0.05*d);
    line(x+0.55*d, y-0.05*d, x+0.7*d, y-0.1*d); // right eyess
    line(x+0.55*d, y-0.05*d, x+0.7*d, y);
    fill(255, 0, 0);
    arc(x+0.5*d, y+0.1*d, 0.5*d, 0.4*d, 0, PI); // mouth
    line (x+0.25*d, y+0.1*d, x+0.75*d, y+0.1*d); //part of mouth
    fill(255);
    rect(x+0.5*d, y+0.1*d, 0.1*d, 0.1*d); //teeth  //200,210,10,10
  }
}
