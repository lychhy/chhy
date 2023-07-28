float a1, b1, vx1, vy1;
float a2, b2, vx2, vy2;
int oo1, oo2;
int frames = 0;  // 0.1 sec / frame
void setup() {
  size(500, 600);
  a1 = a2 = 0; b1 = b2 = 50; oo1 = 1; oo2 = 2;
  vx1 = 5; vy1 = vx2 = vy2 = 0.0; 
  frameRate(10);
}
void draw() {
  background(0, 255, 255);
  maze();
  frames++;
  if(frames == 40) {vx1 = 0; vy1 = 5;}
  else if (frames == 70){vx1 = 5; vy1 = 0;}
  else if (frames == 110){vx1 = 0; vy1 = 0;
                          vx2 = 5; vy2 = 0;}
  else if (frames == 150){vx2 = 0; vy2 = 5;}
  else if (frames == 185){vx2 = 5; vy2 = 0;}
  else if (frames == 220){vx2 = 0; vy2 = 0;}
  else if (frames > 300) exit();
  a1 += vx1; b1 += vy1;  a2 += vx2; b2 += vy2;  
  ly(a1,b1,oo1);
  coffee(a2,b2,oo2);
}
void maze(){
  noStroke();
  fill(255);
  rect(30,20,260,150);  //first rectangle
  rect(150,150,140,150);  //second rectangle
  rect(280,200,130,100);
}
void ly(float x, float y, int op){
  float d = 20;
  if(op == 0) fill(255); // white
  else if(op == 1) fill(255,255,0); // yellow
  else if(op == 2) fill(255,0,255); // violet
  else fill(0,255,255,0); // cyan
  noStroke();
  fill(255,255,255);
  circle(x,y+4*d,1.8*d);//left
  fill(0);
  circle(x,y+4*d,1.5*d);
  fill(7,17,103);
  triangle(x,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);  
  triangle(x+d*0.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  fill(11,18,43);
  triangle(x+d,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2); 
  triangle(x+d*1.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  fill(16,64,22); triangle(x+d*2,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  triangle(x+d*2.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  fill(33,85,78); triangle(x+d*3,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  triangle(x+d*2.5,y+d*4,x+d*4,y+d*4,x+d*4,y+d*2);
  fill(5,22,28);
  triangle(x+d*2,y+d*4,x+d*0.5,y+d*2,x+d,y+d*2);
  triangle(x+d*2,y+d*4,x+d*0.5,y+d*2.5,x+d*0.5,y+d*2);
  triangle(x+d*2,y+d*4,x+d*1.5,y+d*2.3,x+d*2,y+d*2.3);
  triangle(x+d*2,y+d*4,x+d,y+d*2.3,x+d*1.5,y+d*2.3);  
  triangle(x+d*2,y+d*4,x+d*2,y+d*2.1,x+d*2.5,y+d*2.1);
  triangle(x+d*2,y+d*4,x+d*2.5,y+d*2.1,x+d*2.7,y+d*2.5);
  fill(255,255,255); circle(x+d*4,y+d*4,d*1.8);//right
  fill(0);
  circle(x+d*4,y+d*4,d*1.5);
  fill(255,255,255);
  circle(x+d*4,y+d*4,d*0.3);//kam left
  circle(x+d*2,y+d*4,d*0.7);//jvak
  circle(x,y+d*4,d*0.3);//kam righ
  fill(5,22,28);  
  rect(x+d*3.5,y+d*2,d,d*0.5);
}
void coffee(float x,float y,int op){
  float d= 20;
  if(op == 0) fill(255); // white
  else if(op == 1) fill(255,255,0); // yellow
  else if(op == 2) fill(255,0,255); // violet
  else fill(0,255,255,0); // cyan
  fill(0);
  ellipse(x-1.5*d,y+d*2.9,d/2,d); //left leg  
  ellipse(x-0.5*d,y+d*2.9,d/2,d); //right leg 
  circle(x-0.2*d,y-0.7*d,d-10); //right ear 
  circle(x-1.7*d,y-0.7*d,d-10); //left ear
  fill(255);
  ellipse(x-d,y+1.5*d,1.9*d,3*d);  //body  
  fill(0);
  bezier(x-1.7*d,y+0.3*d,x-2.7*d,y+3*d,x-d,y+3*d,x-1.4*d,y+0.5*d); //left hand
  bezier(x-0.5*d,y+2*d,x-0.5*d,y+2.6*d,x+d,y+2.6*d,x-0.6*d,y-0.2*d); //right hand
  fill(255);
  circle(x-d,y,1.5*d);  //face
  fill(96);
  circle(x-1.3*d,y-0.2*d,0.4*d); //left eye
  circle(x-0.6*d,y-0.2*d,0.4*d); //right eye
  fill(0);
  ellipse(x-d,y+0.2*d,0.3*d,0.2*d); //nose
  stroke(0);
  circle(x-1.2*d,y-5,0.1*d); //button left eye
  circle(x-0.7*d,y-5,0.1*d); //button right eye
  noFill();
  arc(x-d,y+0.35*d,0.3*d,0.3*d,0,PI); //mouse
}
