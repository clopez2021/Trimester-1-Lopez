Ball ball1;
Ball ball2;


void setup(){
 size(500,500);
 
 ball1 = new Ball(250, 250, 30, color(60,150,100));
 ball2 = new Ball(250, 100, 30, color(60,150,100));
}

void draw(){
 background(0);
 ball1.display();
 ball1.update();
 ball2.display();
 ball2.update();
}



//In another tab

class Ball{
  float xpos;
  float ypos;
  color c1;
  float diam;
  float speed = 10;
  float direction = random(-1,1);
  
  Ball(float tempXpos, float tempYpos, float tempDiam, color tempC1){
    xpos = tempXpos;
    ypos = tempYpos;
    diam = tempDiam;
    c1 = tempC1;
  }
//Draws ball to screen
  void display(){
    fill(c1);
    ellipse(xpos, ypos, diam, diam);
  }
  
  void update(){
    if (xpos >= width || xpos < 0) {
    }
      direction = direction*(-1); 
  }
}
