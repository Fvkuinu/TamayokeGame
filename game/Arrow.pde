class Arrow
{
  int diameter;
  float x, y, charaX, charaY;
  float speed;
  int count;
  int t;
  float T;
  
  
  Arrow(float cx, float cy, int d)
  {
    t = 0;
    x = cx;
    y = cy;
    diameter = d;
    speed = random(1.5, 5.0);
  }
  
  void move()
  {
    t++;
    y += speed;
  }
  
  void generate()
  {
    charaX = puyo.getLocateX();
    charaY = puyo.getLocateY();
    T = (float)t;
    fill(0, 160,244);
    noStroke();
    ellipse(x, y, diameter, diameter);
    float r = diameter/2;
    if(dist(charaX+55, charaY+70, x, y) < 33+r || (charaX<x+r && charaX+120>x-r && charaY+80<y+r && charaY+150>y-r))
    {
      x = random(0+diameter, width-diameter);
      y = random(-50, 0);
      speed = random(t/60+1.0, t/60+5.0);
      puyo.hit();
    }
    if(y > 950)
    {
      x = random(0+diameter, width-diameter);
      y = random(-50, 0);
      speed = random(T/230+1.0, T/230+5.0);
    }
  }
}
