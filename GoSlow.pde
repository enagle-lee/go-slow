Turtle t;

void setup() {
  size(600, 400); // the canvas size
  background(50); // a dark gray background

  // Your high-level code goes here
  t = new Turtle(this);
  // Scale
  int w = 100;
  int v = (w / 2);
  float angleRadians = (float) Math.atan(2);
  float angle = (float) Math.toDegrees(angleRadians);
  float hypotenuse = (float) Math.sqrt(Math.pow(v, 2) + Math.pow(w, 2));
  
  
  oSlow(v, w);
  wSlow(w, angle, hypotenuse);
  oGo(v, w, angle);
  gGo(v, w);
  sSlow(v, w);
  lSlow(v, w);
  
  // This shows where the Turtle ends up
  t.render();

  
}  
  // End your high-level code here



// Your methods can be defined down here

  // Make o for slow: starting at top right corner and moving clockwise
void oSlow(int v,int w) {
  t.right(90);
  t.forward(w / 2);  
  t.right(90);
  t.forward(v / 2);
  t.right(90);
  t.forward(w / 2);
  t.right(90);
  t.forward(v / 2);
}
  
  
  // make w
void wSlow(int w, float angle, float hypotenuse) {
  t.jump(3 * w / 4, 0);
  t.right(angle);
  t.forward(hypotenuse);
  t.left(angle * 2);
  t.forward(hypotenuse / 2);
  t.right(angle * 2);
  t.forward(hypotenuse / 2);
  t.left(angle * 2);
  t.forward(hypotenuse);
}

  // make o in Go: starting at top right corner and moving counter-clockwise
void oGo(int v, int w, float angle) {
  t.jump(- 5 * w / 2, - 3 * w / 2);
  t.left(180 - angle); // reorientate to face west
  t.forward(v);
  t.left(90);
  t.forward(w);
  t.left(90);
  t.forward(v);
  t.left(90);
  t.forward(w);
}

  // make G in Go: starting at top right corner and moving councter-clockwise
 void gGo(int v, int w) {
   t.jump(-w, 0);
   t.left(90); // reorientate to face west
   t.forward(w);
   t.left(90);
   t.forward(w);
   t.left(90);
   t.forward(w);
   t.left(90);
   t.forward(v);
   t.left(90);
   t.forward(v);
 }
 
   // make S in Slow: starting at top right corner
   void sSlow(int v, int w) {
     t.jump(0, w);
     t.forward(v);
     t.left(90);
     t.forward(v);
     t.left(90);
     t.forward(v);
     t.right(90);
     t.forward(v);
     t.right(90);
     t.forward(v);
   }
   
   // make l in Slow: starting at bottom right corner
   void lSlow(int v, int w) {
     t.jump(3 * w / 2, 0);
     t.forward(v);
     t.right(90);
     t.forward(w);
   }
   
   
