int tela = 0;
int dica01 = 0;

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
  if (tela == 0) { mouseOverJogar(); telaInicial(); }
  else if (tela == 1) { p01(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  mouseOverJogar();
}

void mousePressed(){
  if (tela == 0) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) tela = 1;
  }
  else if (tela == 1) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 2;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) dica01 = 1;
  }
}
