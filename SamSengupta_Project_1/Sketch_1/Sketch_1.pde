void setup () {
  size(800, 600);
  background(0);
  frameRate(10); //to slow down the color rate
}
int r = 51;
int radius = 10;
void draw () {
  strokeWeight(0);
  stroke(255, 5);
  // for the concentric circles
  for (int i=1; i<=10; i++) {
    radius = 30*i;
    // for the fading color (increasing intensity or redness from the center)
    if (r > 0) {
      fill(r, 0, 0, 2);
      r = r + 50;
      ellipse(400, 300, radius-2, radius+50);
    }
  }
  // for the legs, arms, eyes
  strokeWeight(2);
  stroke(255, 255);
  line(550, 300, 620, 300);
  line(250, 300, 180, 300);
  line(300, 430, 230, 500);
  line(500, 430, 570, 500);
  fill(255);
  ellipse(500, 100, 80, 80);
  ellipse(300, 100, 80, 80);
}
