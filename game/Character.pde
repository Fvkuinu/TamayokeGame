class Chara
{
  float x, y, X, Y, t;
  PImage imgR, imgL, imgRO, imgLO;
  int pngFlag;
  int count;
  int cheat;

  Chara(float cx, float cy)
  {
    x = cx;
    y = cy;
    Y = 803;
    count = 0;
    imgR = loadImage("rabbitR.png");
    imgL = loadImage("rabbitL.png");
    imgRO = loadImage("rabbitRO.png");
    imgLO = loadImage("rabbitLO.png");
  }

  void charaDraw(int k)
  {
    //if (keyPressed)
    //{
    //  switch(key)
    //  {
    //  case 'a':
    //    vx = -10;
    //    pngFlag = 0;
    //    break;
    //  case 'd':
    //    vx = 10;
    //    pngFlag = 1;
    //    break;
        
    //  }
    //} else
    //{
    //  vx = 0;
    //}
    if(k == 0)
    {
      vx = 0;
    }
    else if(k == 1)
    {
      vx = -10;
      pngFlag = 0;
    }
    else if(k == 2)
    {
      vx = 10;
      pngFlag = 1;
    }
    
    if (charaX > width-80)
    {
      charaX = -40;
    }
    if (charaX < -40)
    {
      charaX = width-80;
    }
    charaX += vx;
    if(t <= 0)
    {
      if (pngFlag == 0)
      {
        image(imgL, charaX, Y);
      }
      if (pngFlag == 1)
      {
        image(imgR, charaX, Y);
      }
    }
    else
    {
      if (pngFlag == 0)
      {
        image(imgLO, charaX, Y);
      }
      if (pngFlag == 1)
      {
        image(imgRO, charaX, Y);
      }
      t--;
    }
  }

  void hit()
  {
    count++;
    t = 100;
  }
  
  float getLocateX()
  {
    return charaX;
  }
  
  float getLocateY()
  {
    return Y;
  }
  
  int count()
  {
    return count;
  }
}
