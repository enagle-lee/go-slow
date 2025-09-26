Turtle t;

void setup() {
  size(600, 400); // the canvas size
  background(50); // a dark gray background

  // Your high-level code goes here
  Turtle t = new Turtle(this);
  int y;
  int x;
  
  // Make o for slow
  public void oSlow(){
    t.right(90);
    t.forward(y / 2);  
    t.right(90);
    t.forward(x / 2);
    t.right(90);
    t.forward(y/2);
    t.right(90);
    t.forward(x/2);
    t.penUp();
  }
  
  
  // make w
  t.go(80, 0);
  t.penDown();
  t.right(70);
  t.forward(90);





  // End your high-level code here

  // This shows where the Turtle ends up
  t.render();
}

// Your methods can be defined down here
