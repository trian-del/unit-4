int a;
void setup() {
  size(800, 600);
  background(255);
  for (int y = 50; y <= height; y += 100) {
    for (int x = 50; x <= width; x += 300) {
      givup(x, y);
    }
  }
}

void draw() {
}

void crc0(float x, float y) {
  noStroke();
  fill(100, 130, 140, 255);
  circle(x, y, 100);
  noFill();
  stroke(255);
  circle(x, y, 33);
  circle(x, y, 66);
}

void crc1(float x, float y) {
  noStroke();
  fill(100, 130, 140, 140);
  circle(x, y, 100);
  noFill();
  stroke(255);
  circle(x, y, 33);
  circle(x, y, 66);
}
void crc2(float x, float y) {
  noStroke();
  fill(100, 130, 140, 80);
  circle(x, y, 100);
  noFill();
  stroke(255);
  circle(x, y, 33);
  circle(x, y, 66);
}

void givup(float x, float y) {
  crc0(x, y);
  crc1(x+100, y);
  crc2(x+200, y);
}
