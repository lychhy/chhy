float x0,y0,d0,vx0,vy0;  //step 1
float x1,y1,d1,vx1,vy1;
float x2,y2,d2,vx2,vy2;
void setup(){
  size(500,500);
  x0= random(width);
  y0= random(height);
  d0= random(5,10);
  vx0= random(3,5);
  vy0= random(3,5);
  x1= random(width);
  y1= random(height);
  d1= random(5,10);
  vx1= random(3,5);
  vy2= random(3,5);
  x2= random(width);
  y2= random(height);
  d2= random(5,10);
  vx2= random(3,5);
  vy2= random(3,5);
}
void draw(){
  background(255,255,255);
  x0 += vx0;
  y0 += vy0;
  if(x0<0 || x0>width) vx0 = -vx0;
  if(y0<0 || y0>height) vy0 = -vy0;
  x1 += vx1;
  y1 += vy1;
  if(y1<0 || y1>height) vy1 = -vy1;
  if(x1<0 || x1>width) vx1 = -vx1;
  x2 += vx2;
  y2 += vy2;
  if(x2<0 || x2>width) vx2 = -vx2;
  if(y2<0 || y2>height) vy2 = -vy2;
  envelope(x0,y0,d0);
  envelope(x1,y1,d1);
  envelope(x2,y2,d2);
}
void mouseReleased(){
  x1 = mouseX;
  y1 = mouseY;
}
void envelope(float x, float y, float d){
  fill(173,216,230);
  strokeWeight(4);
  rect(x,y,10*d,6*d);
  line(x,y,x+10*d,y+6*d);
  line(x+10*d,y,x,y+6*d);
  fill(249,204,202);
  circle(x+5*d,y+3*d,2*d);
}

  
  
