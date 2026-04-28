size(600,600);

noFill();

/*

//1

for(int i=0; i<800; i+=10){
  line(i,0,i,height);
}


//2

for(int i=0; i<800; i+=10){
  line(i,0,i,height);
  line(0,i,width,i);
}



//3
for(int i=10; i<600; i+=10){
  line(10,i,i,10);
}
for(int i=590; i>0; i-=10){
  line(590,i,i,590);
}


//4

for(int i=1000; i>0; i-=50){
  fill(random(255),random(255),random(255));
  circle(300,300,i);
}
*/

//5

for(int i=600; i>0; i-=50){
  rectMode(CENTER);
  rect(300,300,i+50,i);
}

//6

for(int i=590; i>0; i-=10){
  stroke(random(255),random(255),random(255));
  line(10,i,i,590);
}

for(int i=590; i>0; i-=10){
  stroke(random(255),random(255),random(255));
  line(590,i,i,10);
}
