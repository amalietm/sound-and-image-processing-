
int x = 0;
int y = 0;

color[] mycolours = {color(255, 178, 102), color(255, 255, 204), color(255, 102, 178), 
                     color(102, 178, 255), color(0, 153, 153), color(0, 151, 102), 
                     color(204, 153, 255), color(229, 204, 255), color(255, 204, 204), 
                     color(0, 76, 153)};

void setup() {
  size(600, 700);
  background(255);
  noStroke();
  noLoop();
}

void draw() {
  rotate(PI/-4);
  pushMatrix();
  translate(-550, 0);
  
  for(int x = 0; x < 1000; x= x+150) {
    for(int y = 0; y < 1000; y= y+50) {
      color myColour = mycolours[(int) random(mycolours.length)];
      fill(myColour);
      //fill(color(random(255),random(255),random(255)));
      quad(x+50, y, x+200, y, x+150, y+50, x, y+50);
    }  
   }
   popMatrix();
}
