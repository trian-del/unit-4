size(800, 600);
background(255);
int offset = 0;
noFill();
 
for (int y = 0; y <= height; y += 50) {
  for (int x = 0; x <= width; x += 100) {
    circle(x + offset, y, 120);
  }
  if (offset==0) offset=50;
  else offset = 0;
}
    
    
