int i=0;
float x,y;
PImage img1,img2,img1n,img2n;
boolean mousePressedOnce = false;
void setup(){
  size(640,480,P2D);
  imageMode(CENTER);
  
  //load effect images
  img1=loadImage("img1.png");
  img2=loadImage("img2.png");
  
  //load normal images
  img1n=loadImage("img1.png");
  img2n=loadImage("img2.png");
  
  //apply effects to effected images
  img1.filter(POSTERIZE,2);
  img2.filter(POSTERIZE,6);
  img2.mask(img1);
  img1.mask(img2);
}
  
void draw(){
  background(0);
  image(img2n,320,240);
  if(mousePressedOnce==true){
    image(img1,x,y);
    image(img2,320,240);
  }  
}

//when mouse is pressed, update x and y to mouseX and Y only once
//then create the create the cracked effect and keep it there
void mousePressed(){
  for(i++;i==1;i++){
      x=mouseX;
      y=mouseY;
    }
  mousePressedOnce=true;
}
