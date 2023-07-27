float a1,b1,c1;
float a2,b2,c2;
void setup (){
  size(1000,1000);
   a1 = 400;
   b1 = 300;
   c1 = 100;
   a2 = 600;
   b2 = 400;
   c2 = 200;
}
void draw (){
  background(255);
  coffee (a1,b1,c1);
  coffee (a2,b2,c2);
  
  a1= a1+ 3;
   if (a1 > width) a1=0;
  b2= b2+ 3;

  if (b2 > height) b2 = 0;

}
