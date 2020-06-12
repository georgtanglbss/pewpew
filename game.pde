void game() {
  background(green);

//game engine code
  int i = 0;
  while ( i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  
  //spawn code
  if (frameCount % 60 ==0)
  objects.add(new enemy());
  
}

void gameClicks() {
  //myPlayer.shoot();
}
