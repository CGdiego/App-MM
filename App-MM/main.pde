int tela = 0;

import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup(){
  size (1366,768);
  minim = new Minim(this);
  player = minim.loadFile("smash_brawl.mp3");
  player.loop();
}

void draw(){
  if (tela == 0) { mouseOver(); telaInicial(); }
  else if (tela == 1) { p01(); }
  mouseOver();
}
