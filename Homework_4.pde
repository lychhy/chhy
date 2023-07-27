float a1, b1, c1;
float a2, b2, c2;
void setup(){
  size(800,900);
  a1=100; b1=300; c1=40;
  a2=500; b2=200; c2=50;
}
void draw(){
  background(255);
  thirngly(a1,b1,c1);
  lychhy(a2,b2,c2);
  a1= a1+2.5;  //from left to right
  if(a1 > width) a1=0;
  b2 = b2+5;  //from up to down
  if(b2 > height) b2=0;
}
void lychhy(float x,float y,float d){
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
void thirngly(float x, float y, float d) {
 fill(15,15,15); 
 rect(x,y+d*3,d-d*0.65,d*4);//leg 
 rect(x+d*1.1,y+d*3,d-d*0.65,d*4); 
 rect(x-d*0.6,y+d*0.7,d-d*0.64,d*5);//hand 
 rect(x+d*1.55,y+d*0.78,d-d*0.65,d*4.95); 
 rect(x-d*0.25,y+d*0.76,d*2.15,d*2.5);//body
 rect (x,y-d,d*1.8,d*1.8);//head
 quad (x-d*0.5,y-d*0.8,x-d*0.5,y+d*0.7,x,y+d*0.8,x,y-d);//right 
 fill(299,3,255);
 rect(x+d*0.25,y-d*0.15,d-d*0.6,d*0.2);//eye 
 rect(x+d*1.10,y-d*0.15,d-d*0.6,d*0.2); 
 rect(x+d*0.4,y-d*0.15,d*0.1,d*0.2);
 rect(x+d*1.25,y-d*0.15,d*0.1,d*0.2);
}
 

  
