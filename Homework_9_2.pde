float [] x, y,d,vx, vy;
void setup(){
  size(900,900);
  x = new float[8];
  y = new float[8];
  d = new float[8];
  vx = new float[8];
  vy = new float[8];
  for(int i=0; i<8; i++){
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(50,80);
    vx[i]= random(4,5);
    vy[i] = random(3,5);
  }
}
void draw(){
  background(255,255,255);
  for(int i=0; i<8; i++){
    if(i !=3 && i!=7){
    x[i] += vx[i];
    y[i] += vy[i];
    if(x[i]<0 || x[i]>width) vx[i] = -vx[i];
    if(y[i]<0 || y[i]>height) vy[i] = -vy[i];
  }else if (i == 3){
    x[i] = mouseX;
    y[i] = mouseY;
  }
  if (i<5) envelope(x[i],y[i],d[i]);
  else panda(x[i], y[i], d[i]);
  }
}
void keyPressed(){
  if(key == 'a') x[7]-=5;
  else if(key == 'd') x[7]+=5;
  else if(key == 'w') y[7]-=5;
  else if(key == 's') y[7]+=5;
}
void envelope(float x, float y, float d){
  fill(173,216,230);
  strokeWeight(5);
  rect(x,y,d,0.6*d);
  line(x,y,x+d,y+0.6*d);
  line(x+d,y,x,y+0.6*d);
  fill(249,204,202);
  circle(x+0.5*d,y+0.3*d,0.2*d);
}
void panda(float x,float y,float d){
  fill(0);
  ellipse(x-1.5*d,y+d*2.9,d/2,d); //left leg
  ellipse(x-0.5*d,y+d*2.9,d/2,d); //right leg
  circle(x-0.2*d,y-0.7*d,d-10); //right ear
  circle(x-1.7*d,y-0.7*d,d-10); //left ear
  fill(255);
  ellipse(x-d,y+1.5*d,1.9*d,3*d); //body
  fill(0);
  bezier(x-1.7*d,y+0.3*d,x-2.7*d,y+3*d,x-d,y+3*d,x-1.4*d,y+0.5*d); //left hand
  bezier(x-0.5*d,y+2*d,x-0.5*d,y+2.6*d,x+d,y+2.6*d,x-0.6*d,y-0.2*d); //right hand
  fill(255);
  circle(x-d,y,1.5*d); //face
  fill(96);
  circle(x-1.3*d,y-0.2*d,0.4*d); //left eye
  circle(x-0.6*d,y-0.2*d,0.4*d); //right eye
  fill(0);
  ellipse(x-d,y+0.2*d,0.3*d,0.2*d); //nose
  stroke(0);
  circle(x-1.2*d,y-0.1*d,0.1*d); //button left eye
  circle(x-0.7*d,y-0.1*d,0.1*d); //button right eye
  noFill();
  arc(x-d,y+0.35*d,0.3*d,0.3*d,0,PI); //mouse
}
  
    
  
