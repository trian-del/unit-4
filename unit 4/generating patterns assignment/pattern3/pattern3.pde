size(800, 600);
background(255);
int offset = 0;
 
for (int y = 0; y <= height; y += 100) {
  for (int x = 0; x <= width; x += 100) {
    fill(0);
    triangle(x + offset, y, x + offset + 50, y, x + offset + 50, y + 50);
    triangle(x + offset + 50, y + 50, x + offset+100, y + 50, x + offset+100, y);
    triangle(x + offset, y + 50, x + offset + 50, y + 50, x + offset, y + 100);
    triangle(x + offset + 50, y + 50, x + offset+100, y + 100, x + offset + 50, y + 100);
  }
  //if (offset==0) offset=50;
  //else offset = 0;
}
    
    
