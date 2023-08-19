float [] a,b,c,vx,vy;   // step 2
void setup(){
  size(500,500);
  a = new float[3];
  b = new float[3];
  c = new float[3];
  vx = new float[3];
  vy = new float[3];
  for(int i=0; i<3; i++){
    a[i] = random(width);
    b[i] = random(height);
    c[i] = random(5,10);
    vx[i]= random(3,5);
    vy[i] = random(3,5);
  }
}
void draw(){
  background(255,255,255);
  for(int i=0; i<3; i++){
    a[i] += vx[i];
    b[i] += vy[i];
    if(a[i]<0 || a[i]>width) vx[i] = -vx[i];
    if(b[i]<0 || b[i]>height) vy[i] = -vy[i];
    envelope(a[i],b[i],c[i]);
  }
}
void mouseReleased(){
  a[2] = mouseX;
  b[2] = mouseY;
}
void envelope(float a, float b, float c){
  fill(173,216,230);
  strokeWeight(5);
  rect(a,b,10*c,6*c);
  line(a,b,a+10*c,b+6*c);
  line(a+10*c,b,a,b+6*c);
  fill(249,204,202);
  circle(a+5*c,b+3*c,2*c);
}
