Arrow[] arrow; //<>//
float[] X, Y;
int diameter;
float eY;
float vx,y;
float charaX, charaY;
int gameover;
int k;
Chara puyo;
Score director;

void setup()
{
  diameter = 15;
  eY = 0+diameter;
  vx = 0; //<>//
  y = 950;
  k = 0;
  charaY = 950;
  size(1000, 1000);
  textSize(50);
  textAlign(CENTER, CENTER);
  arrow = new Arrow[10];
  X = new float[arrow.length];
  Y = new float[arrow.length];
  for(int i = 0; i < arrow.length; i++)
  {
    X[i] = random(0+diameter, width-diameter);
    Y[i] = random(-50, 0);
    arrow[i] = new Arrow(X[i], Y[i], diameter);
  }
  puyo = new Chara(vx, y);
  director = new Score();
}

void draw()
{
  background(255);
  noFill();
  stroke(0);
  for(int i = 0; i < arrow.length; i++)
  {
    arrow[i].move();
    arrow[i].generate();
  }
  fill(206, 155, 14);
  noStroke();
  rect(0, 950, width, 50);
  puyo.charaDraw(k);
  director.HP();
  gameover = director.director();
  if(gameover == 1)
  {
    director.gameover();
  }
  if(keyPressed == false)
  {
    k = 0;
  }
  textAlign(CENTER, CENTER);
  textSize(30);
  fill(0);
  text("a:Move Left", 90, 25);
  text("d:Move Right", 100, 75);
} //<>//

void keyPressed()
{
        switch(key)
      {
      case 'A':
      case 'a':
        k = 1;
        break;
      case 'D':
      case 'd':
        k = 2;
        break;
      }
}
