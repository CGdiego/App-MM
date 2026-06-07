// Feito por Diego

import ddf.minim.*;

int tela = 0;
int dica01 = 0;
int dica02 = 0;
int dica03 = 0;
int dica04 = 0;
int dica05 = 0;
int dica06 = 0;
int dica07 = 0;
int dica08 = 0;
int dica09 = 0;
int dica10 = 0;
int contagemDica = 0;
boolean musicaTrocada = false;
PImage dani, theo, certificado;
boolean theoVivo = true;
float xd, yd;
float xt = 200, yt = 100;

Minim minim;
AudioPlayer player;

void setup(){
  size (1366,768);
  minim = new Minim(this);
  player = minim.loadFile("smash_brawl.mp3");
  player.loop();
  dani = loadImage("dani.png");
  theo = loadImage("theo.png");
  certificado = loadImage("certificado_maneiro.jpeg");
  imageMode(CENTER);
  xd = width/2;
  yd = height/2;
}

void draw(){
  if (tela == 0) { mouseOverJogar(); telaInicial(); }
  else if (tela == 1) { p01(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 2) { p02(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 3) { p03(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 4) { p04(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 5) { p05(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 6) { p06(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 7) { p07(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 8) { p08(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 9) { p09(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 10) { p10(); mouseOverSim(); mouseOverNao(); mouseOverDica();}
  else if (tela == 11) {
    mouseOverJogar();
    telaFinal();
    if (musicaTrocada == false) {
      player.close();
      player = minim.loadFile("giorno_theme.mp3");
      player.loop();
      musicaTrocada = true;
    }
  }
  else { jogo(); }
  mouseOverJogar();
}

void mousePressed(){
  if (tela == 0) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) tela = 1;
  }
  else if (tela == 1) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 2;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica01 = 1; contagemDica += 1; }}
  else if (tela == 2) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 3;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica02 = 1; contagemDica += 1; }}
  else if (tela == 3) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 4;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica03 = 1; contagemDica += 1; }}
  else if (tela == 4) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 5;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica04 = 1; contagemDica += 1; }}
  else if (tela == 5) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 6;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica05 = 1; contagemDica += 1; }}
  else if (tela == 6) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 7;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica06 = 1; contagemDica += 1; }}
  else if (tela == 7) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 8;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica07 = 1; contagemDica += 1; }}
  else if (tela == 8) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 9;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica08 = 1; contagemDica += 1; }}
  else if (tela == 9) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 10;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica09 = 1; contagemDica += 1; }}
  else if (tela == 10) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 11; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { dica10 = 1; contagemDica += 1; }}
  else if (tela == 11) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) tela = 12;
  }
}

// Botão pressionado

void mouseOverSim(){
  if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580)
    corSim = verdeSimEscuro;
  else
    corSim = verdeSim;
}

void mouseOverNao(){
  if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580)
    corNao = vermelhoNaoEscuro;
  else
    corNao = vermelhoNao;
}

void mouseOverDica(){
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580)
    corDica = laranjaDicaEscuro;
  else
    corDica = laranjaDica;
}

void mouseOverJogar(){
  if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535)
    corBotao = verdeEscuro;
  else
    corBotao = verde;
}
