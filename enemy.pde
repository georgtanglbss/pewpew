class enemy extends GameObject {

  int transparency;
  
  enemy() {
    super(random(0, width), random(0, height), 20, 1, white);
    while (touchingObstacle()) {
      x = random(0,width);
      y = random(0,height);
    }
    
    transparency = 0;
  }
  
  void show() {
    fill(myColor, transparency);
    ellipse(x,y,size,size);
  }

  void act() {
    
    super.act();
    if (transparency < 255) {
    transparency = transparency + 1;
    } else {
      objects.add(new Bullet(x,y,5,1,white));
    }
  }
}
