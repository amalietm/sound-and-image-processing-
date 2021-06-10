class Ball {
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector wind;
  float gust;
  float seed;
  float offset;
  float noiz;
  color c;
  float mass;
  int radius = 2;

  Ball(float x, float y, float m) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
    wind = new PVector(1, 0);
    gust = random(0,3);
    mass = m;
    c = color(random(255),random(255),random(255));
    seed = random(1000);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    position.add(wind);
    checkEdges();
    acceleration.mult(0);
    
    float noiz = noise(seed + (position.y*0.02));
    float offset = map(noiz,0,1,-1,1); // scale noise from 0-1 to -1 to 1
    position.add(offset, 1);
    
    if (mousePressed) {
      position.x = position.x + gust; 
    }
  }

  void display() {
    image(img,position.x, position.y, mass*radius*2, mass*radius*2);
  }

  void checkEdges() {
    if(position.y + radius > height) {
      position.y = height - radius*mass;
      velocity = new PVector(0, 50);
    }
   }
  }
