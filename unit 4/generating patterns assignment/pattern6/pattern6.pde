void setup() {
  size(800, 600);
  background(255);
  int offset = 0;
  
  for (int x = 0; x <= width; x += 50) {
    for (int y = 0; y <= height; y += 100) {
      crc(x, y+offset);
    }
    if (offset==0) offset=50;
    else offset = 0;
  }
}

void draw() {
}


void crc(float x, float y) {
  for (int i = 100; i>=0; i-=20) {
    stroke(0);
    strokeWeight(5);
    circle(x, y, i);
  }
}
