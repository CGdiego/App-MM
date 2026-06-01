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
String emailDigitado = "";

Minim minim;
AudioPlayer player;

void setup(){
  size(1366, 768);
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
  if      (tela == 0)  { telaInicial(); }
  else if (tela == 1)  { p01(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 2)  { p02(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 3)  { p03(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 4)  { p04(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 5)  { p05(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 6)  { p06(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 7)  { p07(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 8)  { p08(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 9)  { p09(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 10) { p10(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 11) {
    telaFinal();
    if (!musicaTrocada) {
      player.close();
      player = minim.loadFile("giorno_theme.mp3");
      player.loop();
      musicaTrocada = true;
    }
  }
  else if (tela == 12) { jogo(); }
  else if (tela == 13) { telaCertificado(); }
  else if (tela == 14) { telaVerCertificado(); }
  mouseOverJogar(); // chamado UMA vez, aqui, para todas as telas
}

void resetarJogo() {
  emailDigitado = "";
  theoVivo = true;
  xt = 200; yt = 100;
  xd = width/2; yd = height/2;
  xp = 0; yp = 0; bX = 200; bY = 300;
}

void mousePressed(){
  if (tela == 0) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) tela = 1;
  }
  else if (tela == 1) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 2;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica01 == 0) contagemDica++; dica01 = 1; }}
  else if (tela == 2) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 3;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica02 == 0) contagemDica++; dica02 = 1; }}
  else if (tela == 3) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 4;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica03 == 0) contagemDica++; dica03 = 1; }}
  else if (tela == 4) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 5;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica04 == 0) contagemDica++; dica04 = 1; }}
  else if (tela == 5) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 6;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica05 == 0) contagemDica++; dica05 = 1; }}
  else if (tela == 6) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 7;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica06 == 0) contagemDica++; dica06 = 1; }}
  else if (tela == 7) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 8;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica07 == 0) contagemDica++; dica07 = 1; }}
  else if (tela == 8) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) tela = 9;
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica08 == 0) contagemDica++; dica08 = 1; }}
  else if (tela == 9) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) tela = 10;
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica09 == 0) contagemDica++; dica09 = 1; }}
  else if (tela == 10) {
    if (mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580) { tela = 11; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580) { tela = 0; xp = 0; yp = 0; bX = 200; bY = 300; }
    if (mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580) { if (dica10 == 0) contagemDica++; dica10 = 1; }}
  else if (tela == 11) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) tela = 12;
  }
  else if (tela == 13) {
    // Botão CONFIRMAR (w=280 centrado: x=543..823, y=450..505)
    if (mouseX > 543 && mouseX < 823 && mouseY > 450 && mouseY < 505) {
      resetarJogo();
      tela = 0;
    }
    // Botão NAO COLOCAR EMAIL (w=340 centrado: x=513..853, y=530..585)
    if (mouseX > 513 && mouseX < 853 && mouseY > 530 && mouseY < 585) {
      tela = 14;
    }
  }
  else if (tela == 14) {
    // Botão VOLTAR AO INICIO (w=280 centrado: x=543..823, y=690..745)
    if (mouseX > 543 && mouseX < 823 && mouseY > 690 && mouseY < 745) {
      resetarJogo();
      tela = 0;
    }
  }
}

void keyPressed() {
  if (tela == 13) {
    if (key == BACKSPACE) {
      if (emailDigitado.length() > 0)
        emailDigitado = emailDigitado.substring(0, emailDigitado.length() - 1);
    } else if (key != ENTER && key != RETURN && key != ESC && key != TAB) {
      emailDigitado += key;
    }
  }
}

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
