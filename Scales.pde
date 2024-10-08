PImage img;

void setup() {
  size(1000, 500); 
  img = loadImage("fishTransparent.png");
}

boolean dragged = false;
int r = (int)random(200,255);
int g = (int)random(200,255);
int b = (int)random(200,255);

void draw() {
   
  for(int a = 1400; a >= -100; a -= 50) {
    for(int i = 0; i <= 480; i += 60)
      scale(a - i, 450 - i);
  }
  
  dragged = false;
  
  image(img,-300,-200);
  
  
  
  loop();
}
void scale(int x, int y) {    
  
  if(!dragged) {
    r = (int)random(200,255);
    g = (int)random(200,255);
    b = (int)random(200,255);
  }
    
  fill(r,g,b);
  bezier(x,y,x+90,y-10,x+90,y-10,x+100,y+100);
  bezier(x,y,x-10,y+90,x-10,y+90,x+100,y+100);
}


