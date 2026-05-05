
void setup() {
  size(800, 600);
  background(209, 34, 34);
  int offset = 0;
  rectMode(CENTER);

  for (int y = 0; y <= height+55; y += 55) {
    for (int x = 0; x <= width; x += 110) {
      sqrs(x+offset,y);
    }
    if (offset==0) offset=55;
    else offset = 0;
  }
}

void draw() {
}

void sqrs(float x, float y) {
  push();
  translate(x,y);
  noFill();
  stroke(255, 230, 3);
  square(0,0,10);
  square(0,0,70);
  square(0,0,110);
  pop();
}
