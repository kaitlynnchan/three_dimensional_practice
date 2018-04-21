Thing[] things;
int n = 20; //number of things in the array

void setup(){
  colorMode(HSB);
  size(600, 600, P3D);
  things = new Thing[n];
  
  int i = 0;
  while(i < n){
    things[i] = new Thing(); // *** constructor ***
    i++;
  }
  
  background(0);
  noStroke();
}

void draw(){
  fill(0, 50);
  rect(0, 0, width, height);
  fill(255);
  
  int i = 0;
  while(i < n){
    things[i].show(); // *** behaviour funtion ***
    things[i].act(); // *** behaviour funtion ***
    i++;
  }
}