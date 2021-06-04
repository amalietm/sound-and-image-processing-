PImage pic;
 
void setup() {
  size(600,800);
  background(0);
}
 
void draw() {
  pic = loadImage("IMG_7407.jpg");
  pic.resize(600,800);
  image(pic, 0, 0);
  int magnify_size = 10;
 
  loadPixels();
  for (int i = 1; i < magnify_size; i++) {
    for (int j = 1; j < magnify_size; j++) {
      color b = get(mouseX + j, mouseY + i);
      noStroke();
      fill(b);
      square(mouseX + j * magnify_size, mouseY + i * magnify_size, magnify_size);
   
      }  
  }
}
