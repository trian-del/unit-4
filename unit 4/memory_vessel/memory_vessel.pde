ArrayList<petals> p=new ArrayList<petals>();
float b,r,g,x,y;
PImage img1;
boolean mousePressedOnce=false;
int i=0;
void setup(){
  size(500,500,P2D);
  
  //petals=====================
  for(int i=0;i<20;i++){
    float x=random(width);
    float y=random(-height,height);
    float s=random(0.01,0.1);
    float a=random(1,3);
    float b=random(1.5);
    p.add(new petals(x,y,0,0,s,a,b));
  }
  //===================
  
  //loading images===============
  img1 = loadImage("img1.png");
  imageMode(CENTER);
}

void draw(){
  //background
  noStroke();
  fill(58,107,250);
  rect(0,0,600,600);
  fill(75,125,250);
  rect(0,0,600,450);
  fill(90,135,250);
  rect(0,0,600,300);
  fill(105,150,250);
  rect(0,0,600,150);
  //==============================
  
  
  
  for(petals petal:p){
    petal.move();
    petal.display();
  }

  flower();
  if (mousePressedOnce){
    image(img1,200,200);
  }
}


void flower(){
  fill(179,204,170);
  rect(240,280,20,300);
  fill(221,224,77);
  fpetal(250,220,0);
  fpetal(280,-308,90);
  fpetal(-250,-340,180);
  fpetal(-280,190,270);
  circle(250,280,50);
}

void fpetal(float x, float y, float r){
  push();
  rotate(radians(r));
  translate(x,y);
  fill(252,148,240);
  triangle(-48,0,48,0,0,80);
  ellipse(0,-10,100,80);
  pop();
}


class petals{
  float x,y,s,s2,rnd,rndRise,rndX;
  boolean fall,xfall = false;
  
  petals(float x, float y, float s, float s2,float rnd, float rndRise, float rndX){
    this.x = x;
    this.y = y;
    this.s = s;
    this.s2 = s2;
    this.rnd = rnd;
    this.rndRise = rndRise;
    this.rndX = rndX;
  }

  void move(){
    
    //====y axis movement=====
    y += s;
    
    if(s <= 1 && fall == false){
      s += rnd;
    }
    
    if(s >= 0.8){
      fall = true;
    }
    
    if(fall == true){
      s -= rnd/rndRise;
    }
    
    if(s <= -0.6){
      fall = false;
    }
    
    if(y >= 610){
      y = 0;
    }
    //=========================
    
    
    //=====x axis movement=====
    x += s2;
    
    if(s > 0 && xfall == false){
      s2 += 0.01;
    }
    
    if(s2 >= rndX){
      xfall = true;
    }
    
    if(xfall == true){
      s2-=0.01;
    }
  
    if(s2 <= -rndX){
      xfall = false;
    }
    //=========================
    
  }

  void display(){
    fill(252,148,240,190);
    square(x,y,10);
  }
}

void mousePressed(){
  mousePressedOnce=true;
}
  
