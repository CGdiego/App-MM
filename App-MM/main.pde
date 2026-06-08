// Feito por Diego
// Sistema de sorteio de 10 perguntas (de um pool de 30) adicionado por Claude
// Polimento de UI/UX e barra de progresso adicionados por Claude

import ddf.minim.*;

// --- SISTEMA DE SORTEIO ---
int[] sequencia = new int[10];
int passo = 0;
int perguntaAtual = 1;
int dicaAtual = 0;

int tela = 0;
int contagemDica = 0;
boolean musicaTrocada = false;
PImage jotaro, putin, certificado;
boolean putinVivo = true;
float xd, yd;
float xt = 200, yt = 100;
String emailDigitado = "";

Minim minim;
AudioPlayer player;

// ---- GABARITO: resposta correta por pergunta (1=SIM, 2=NÃO) ----
int[] gabarito = {
  2, 2, 2, 1, 2, 1, 2, 1, 2, 1,  // p01-p10
  2, 2, 1, 2, 2, 2, 2, 1, 1, 2,  // p11-p20
  1, 2, 1, 2, 1, 1, 2, 1, 2, 2   // p21-p30
};

void setup(){
  size(1366, 768);
  minim = new Minim(this);
  player = minim.loadFile("smash_brawl.mp3");
  player.loop();
  jotaro = loadImage("jotaro.png");
  putin  = loadImage("putin.png");
  certificado = loadImage("certificado_maneiro.jpeg");
  imageMode(CENTER);
  xd = width/2;
  yd = height/2;
  sortearPerguntas();
}

void sortearPerguntas() {
  int[] pool = new int[30];
  for (int i = 0; i < 30; i++) pool[i] = i + 1;
  for (int i = 29; i > 0; i--) {
    int j = (int) random(i + 1);
    int tmp = pool[i]; pool[i] = pool[j]; pool[j] = tmp;
  }
  for (int i = 0; i < 10; i++) sequencia[i] = pool[i];
}

void chamarPerguntaAtual() {
  int id = sequencia[passo];
  if      (id ==  1) p01();
  else if (id ==  2) p02();
  else if (id ==  3) p03();
  else if (id ==  4) p04();
  else if (id ==  5) p05();
  else if (id ==  6) p06();
  else if (id ==  7) p07();
  else if (id ==  8) p08();
  else if (id ==  9) p09();
  else if (id == 10) p10();
  else if (id == 11) p11();
  else if (id == 12) p12();
  else if (id == 13) p13();
  else if (id == 14) p14();
  else if (id == 15) p15();
  else if (id == 16) p16();
  else if (id == 17) p17();
  else if (id == 18) p18();
  else if (id == 19) p19();
  else if (id == 20) p20();
  else if (id == 21) p21();
  else if (id == 22) p22();
  else if (id == 23) p23();
  else if (id == 24) p24();
  else if (id == 25) p25();
  else if (id == 26) p26();
  else if (id == 27) p27();
  else if (id == 28) p28();
  else if (id == 29) p29();
  else if (id == 30) p30();
}

// ─────────────────────────────────────────────────────────────────────────────
// FUNÇÃO CENTRAL DE LAYOUT DAS PERGUNTAS
// Chame no início de cada pXX(). Recebe as linhas do enunciado (até 4 linhas).
// ─────────────────────────────────────────────────────────────────────────────
void desenharTelaPergunta(String[] linhas) {

  // --- FUNDO com gradiente simulado (faixas) ---
  noStroke();
  for (int i = 0; i < height; i++) {
    float t = map(i, 0, height, 0, 1);
    color c = lerpColor(color(0, 90, 210), color(0, 30, 100), t);
    stroke(c);
    line(0, i, width, i);
  }
  noStroke();

  // --- CARD CENTRAL com sombra ---
  // Sombra
  fill(0, 0, 0, 60);
  noStroke();
  rect(338, 108, 700, 560, 22);
  // Card branco
  fill(255);
  stroke(200);
  strokeWeight(2);
  rect(330, 100, 700, 560, 20);

  // --- CABEÇALHO COLORIDO no card ---
  fill(0, 90, 210);
  noStroke();
  rect(330, 100, 700, 80, 20, 20, 0, 0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(26);
  text("PERGUNTA " + perguntaAtual + " de 10", width/2, 140);

  // --- BARRA DE PROGRESSO ---
  int barX = 360;
  int barY = 190;
  int barW = 640;
  int barH = 18;
  int progresso = passo; // quantas já foram respondidas (0 a 9)

  // Trilho
  fill(220);
  noStroke();
  rect(barX, barY, barW, barH, 9);

  // Preenchimento
  float barFill = map(progresso, 0, 10, 0, barW);
  if (barFill > 0) {
    fill(0, 200, 80);
    rect(barX, barY, barFill, barH, 9);
  }

  // Bolinhas de etapa
  for (int i = 0; i <= 10; i++) {
    float bx = barX + map(i, 0, 10, 0, barW);
    float by = barY + barH/2;
    if (i < passo) {
      fill(0, 160, 60); // já respondida
    } else if (i == passo) {
      fill(255, 200, 0); // atual
    } else {
      fill(200); // futura
    }
    noStroke();
    ellipse(bx, by, 14, 14);
  }

  // Texto do progresso
  fill(80);
  textSize(13);
  textAlign(RIGHT, CENTER);
  text(passo + "/10 respondidas", barX + barW, barY + barH + 14);
  textAlign(CENTER, CENTER);

  // --- ENUNCIADO ---
  fill(30);
  textSize(27);
  int baseY = 270;
  int espacamento = 38;
  for (int i = 0; i < linhas.length; i++) {
    text(linhas[i], width/2, baseY + i * espacamento);
  }

  // --- BOTÃO SIM ---
  // Sombra
  fill(0, 0, 0, 40);
  noStroke();
  rect(453, 503, 180, 80, 20);
  fill(corSim);
  stroke(0, 120, 0);
  strokeWeight(2);
  rect(450, 500, 180, 80, 20);
  fill(255);
  noStroke();
  textSize(30);
  text("SIM", 540, 540);

  // --- BOTÃO NÃO ---
  fill(0, 0, 0, 40);
  noStroke();
  rect(733, 503, 180, 80, 20);
  fill(corNao);
  stroke(120, 0, 0);
  strokeWeight(2);
  rect(730, 500, 180, 80, 20);
  fill(255);
  noStroke();
  textSize(30);
  text("NÃO", 820, 540);

  // --- BOTÃO DICA ---
  fill(0, 0, 0, 40);
  noStroke();
  rect(1103, 503, 180, 80, 20);
  fill(corDica);
  stroke(140, 100, 0);
  strokeWeight(2);
  rect(1100, 500, 180, 80, 20);
  fill(255);
  noStroke();
  textSize(30);
  text("DICA", 1190, 540);

  // Label embaixo do botão dica
  fill(200);
  textSize(13);
  text("Dicas usadas: " + contagemDica, 1190, 595);

  noStroke();
}

// ─────────────────────────────────────────────────────────────────────────────

void draw(){
  if      (tela == 0)  { telaInicial(); mouseOverCreditos(); }
  else if (tela == 1)  { chamarPerguntaAtual(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
  else if (tela == 11) {
    telaFinal();
    mouseOverJogarNovamente();
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
  else if (tela == 15) { telaCreditos(); }
  mouseOverJogar();
}

void resetarJogo() {
  emailDigitado = "";
  putinVivo = true;
  xt = 200; yt = 100;
  xd = width/2; yd = height/2;
  xp = 0; yp = 0; bX = 200; bY = 300;
}

void resetarQuiz() {
  passo = 0;
  perguntaAtual = 1;
  dicaAtual = 0;
  contagemDica = 0;
  if (musicaTrocada) {
    player.close();
    player = minim.loadFile("smash_brawl.mp3");
    player.loop();
    musicaTrocada = false;
  }
  sortearPerguntas();
}

boolean clicouSim() {
  return mouseX > 450 && mouseX < 630 && mouseY > 500 && mouseY < 580;
}
boolean clicouNao() {
  return mouseX > 730 && mouseX < 910 && mouseY > 500 && mouseY < 580;
}
boolean clicouDica() {
  return mouseX > 1100 && mouseX < 1280 && mouseY > 500 && mouseY < 580;
}

void avancarPergunta() {
  dicaAtual = 0;
  passo++;
  if (passo >= 10) {
    passo = 9;
    tela = 11;
  } else {
    perguntaAtual++;
  }
}

void voltarInicio() {
  tela = 0;
  xp = 0; yp = 0; bX = 200; bY = 300;
}

void mousePressed(){
  if (tela == 0) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 480 && mouseY < 535) {
      resetarQuiz();
      tela = 1;
    }
    if (mouseX > 530 && mouseX < 750 && mouseY > 550 && mouseY < 595) {
      tela = 15;
    }
  }
  else if (tela == 1) {
    int id = sequencia[passo];
    int resp = gabarito[id - 1];
    if (clicouSim()) {
      if (resp == 1) avancarPergunta(); else voltarInicio();
    }
    if (clicouNao()) {
      if (resp == 2) avancarPergunta(); else voltarInicio();
    }
    if (clicouDica()) {
      if (dicaAtual == 0) { contagemDica++; dicaAtual = 1; }
    }
  }
  else if (tela == 11) {
    if (mouseX > 530 && mouseX < 750 && mouseY > 445 && mouseY < 500) { resetarJogo(); tela = 12; }
    if (mouseX > 530 && mouseX < 750 && mouseY > 515 && mouseY < 565) { resetarJogo(); resetarQuiz(); tela = 1; }
  }
  else if (tela == 13) {
    if (mouseX > 543 && mouseX < 823 && mouseY > 450 && mouseY < 505) {
      resetarJogo(); resetarQuiz(); tela = 0;
    }
    if (mouseX > 513 && mouseX < 853 && mouseY > 530 && mouseY < 585) {
      tela = 14;
    }
  }
  else if (tela == 14) {
    if (mouseX > 543 && mouseX < 823 && mouseY > 690 && mouseY < 745) {
      resetarJogo(); resetarQuiz(); tela = 0;
    }
  }
  else if (tela == 15) {
    if (mouseX > 580 && mouseX < 780 && mouseY > 695 && mouseY < 740) {
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

void mouseOverCreditos(){
  if (mouseX > 530 && mouseX < 750 && mouseY > 550 && mouseY < 595)
    corCreditos = azulCreditosEscuro;
  else
    corCreditos = azulCreditos;
}

void mouseOverJogarNovamente(){
  if (mouseX > 530 && mouseX < 750 && mouseY > 515 && mouseY < 565)
    corJogarNovamente = verdeJNEscuro;
  else
    corJogarNovamente = verdeJN;
}
