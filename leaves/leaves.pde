PImage img;

Ball[] balls;
int ballCount = 1000;
PVector gravity;

void setup() {
  size(800, 400);
  img = loadImage("favpng_leaf-illustration-illustrator-product-design.png");
  balls = new Ball[ballCount];
    for (int i = 0; i < balls.length; i++) {
      balls[i] = new Ball(random(-1000, width), random(-1000,-30), random(7,15));
  }
  gravity = new PVector(0, 0.01);
  
  
}

void draw() {
  background(255);
  
  for (Ball b : balls) {
    PVector g = gravity.copy().mult(b.mass);
    b.applyForce(g);
    
    b.update();
    b.display();
  }
}

void keyPressed() {
  if (key == 'r') {
    setup();
  }
}
