import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup(){
  size (1366,768);
  minim = new Minim(this);
  player = minim.loadFile("smash_brawl.mp3");
  player.loop();
  telaInicial();
}

void draw(){
}
