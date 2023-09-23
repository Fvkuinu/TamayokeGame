class Score
{
  int score;
  float hp;
  int flag, s;
  Score()
  {
    hp = 100;
    flag = 0;
  }
  

  
  void HP()
  {
    hp = 100;
    score = puyo.count();
    hp -= score*10;
    translate(width-50, 50);
    rotate(radians(270));
    fill(0, 255, 0);
    arc(0, 0, 90, 90, 0, 2*PI*hp/100);
    fill(255);
    ellipse(0, 0, 45, 45);
    resetMatrix();
  }
  
  int director()
  {
    if(flag == 0)
    {
      s++;
    }
    if(hp<=0)
    {
      flag = 1;
    }
    return flag;
  }
  
  void gameover()
  {
    background(0);
    fill(255, 0, 0);
    textSize(100);
    text("GAME OVER", width/2, height/2-50);
    fill(255);
    textSize(50);
    text("SCORE: "+s, width/2, height/2+100);
  }
}
