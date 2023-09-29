guys gg;
well hh;
envelope ll;
void setup(){
  size(700,700);
  ll = new envelope();
  hh = new well();
  gg = new guys();
}
void draw(){
  background(190);
  ll.letter();
  hh.drawball();
  gg.heart();
}
void mousePressed(){
  gg.x = mouseX;
  gg.y = mouseY;
}
void keyPressed(){
  if (key == 'd') hh.x += 15;
  else if(key == 'a') hh.x -= 15;
  else if(key == 's') hh.y += 15;
  else if(key == 'w') hh.y -= 15;
  else if(key == 'q') hh.d += 15;
  else if(key == 'r') hh.d -= 15;
  if(key == CODED){
    if(keyCode == LEFT) hh.x -= 15;
    else if(keyCode == RIGHT) hh.x += 15;
    else if(keyCode == DOWN) hh.y += 15;
    else if(keyCode == UP) hh.y -= 15;
    
  }
}
class envelope{
  envelope(){
    x = random(width);
    y = random(height);
    d = random(100,20);
  }
  envelope(float a, float b, float c){
    x = a; y = b; d = c;
  }
  float x,y,d;
  void letter(){
    stroke(0);
    fill(173,216,230);
    strokeWeight(5);
    rect(x,y,d,0.6*d);
    line(x,y,x+d,y+0.6*d);
    line(x+d,y,x,y+0.6*d);
    fill(249,204,202);
    circle(x+0.5*d,y+0.3*d,0.2*d);
  }
}
class well extends envelope{
  well(){ super();}
  well(float a, float b, float c){
    super(a,b,c);
  }
  void drawball(){
    letter();
    circle(x+0.2*d,y+0.3*d,0.1*d);
    circle(x+0.8*d,y+0.3*d,0.1*d);
  }
}
class guys extends envelope{
  guys(){ super();}
  guys(float a, float b, float c){
    super(a,b,c);
  }
  void heart(){
    letter();
    fill(255,255,0);
    float xx,yy,dd;
    xx = x+0.5*d;
    yy = y+0.65*d;
    dd = 0.04*d;
    beginShape();
    noStroke();
    vertex(xx,yy-4.5*dd);//(50,15);
    bezierVertex(xx,yy-6.5*dd,xx+4*dd,yy-5.5*dd,xx,yy-2*dd);//(50,-5,90,5,50,40);
    vertex(xx,yy-4.5*dd);
    bezierVertex(xx,yy-6.5*dd,xx-4*dd,yy-5.5*dd,xx,yy-2*dd);//(50,-5,10,5,50,40);
    endShape();
  }
}
    
    

   
