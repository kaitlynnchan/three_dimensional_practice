class Thing {
  //instance variables, or 'feilds'
  float x, y, z, d, h, s, b, xoff, yoff;
  
  //Constructor: function that has the same name as the class(case sensitive) and no 'void' that initializes the instance variables
  Thing(){
    x = random(0, width);
    y = random(0, height);
    d = random(50, 100);
    h = random(0, 255);
    s = random(0, 255);
    b = random(0, 255);
    z = random(0, 100);
    xoff = random(0, 100);
    yoff = random(0, 100);
  }
  
  //Behaviour Functions: regular functions that act on the instance variables
  void show(){
    // draw this particular thing
    stroke(h, 255, 255); //h, 255, 255
    strokeWeight(2);
    //fill(h, 255, 255);
    noFill();
    pushMatrix();
    translate(x, y, z);
    //sphere(d);
    box(d);
    popMatrix(); //go back to the way it was
  }
  void act(){
    // move this particular thing across the screen
    x = noise(xoff) * width;
    y = noise(yoff) * width;
    xoff += 0.01;
    yoff += 0.01;
  }
}