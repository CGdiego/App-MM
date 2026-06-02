// Feito por Diego
// Sistema de sorteio de 10 perguntas (de um pool de 30) adicionado por Claude

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

AudioSample somAcerto;
AudioSample somErro;

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
  
  somAcerto = minim.loadSample("acerto.wav", 512); // Nome do seu arquivo de acerto
  somErro = minim.loadSample("erro.wav", 512);
  
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

void draw(){
  if      (tela == 0)  { telaInicial(); }
  else if (tela == 1)  { chamarPerguntaAtual(); mouseOverSim(); mouseOverNao(); mouseOverDica(); }
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
  musicaTrocada = false;
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
  // Tela inicial (0)
  if (tela == 0) {
    // Botão JOGAR
    if (mouseX > 530 && mouseX < 750 && mouseY > 450 && mouseY < 500) {
      somAcerto.trigger();
      resetarQuiz();
      tela = 1;
    }
    // Botão CRÉDITOS
    if (mouseX > 555 && mouseX < 730 && mouseY > 515 && mouseY < 555) {
      somAcerto.trigger();
      tela = 15;
    }
  }
  // Tela de perguntas (1)
  else if (tela == 1) {
    int id = sequencia[passo];
    int resp = gabarito[id - 1];

    if (clicouSim()) {
      if (resp == 1) { 
        somAcerto.trigger(); 
        avancarPergunta();
      }
        else voltarInicio();
    }
    if (clicouNao()) {
      if (resp == 2) {
        somAcerto.trigger(); // <--- Toca som de acerto se NÃO for correto
        avancarPergunta();
      } else {
        somErro.trigger();   // <--- Toca som de erro se errar
        voltarInicio();
      }
    }      
if (clicouDica()) {
  if (dicaAtual == 0) { 
        somAcerto.trigger(); // <--- Opcional: toca um som sutil ao abrir a dica
        contagemDica++; 
        dicaAtual = 1; 
      }
    }
  }
  // Tela final (11)
  else if (tela == 11) {
    // Botão JOGAR JOGO FINAL
    if (mouseX > 490 && mouseX < 790 && mouseY > 380 && mouseY < 430) {
      resetarJogo();
      tela = 12;
    }
    // Botão JOGAR NOVAMENTE
    if (mouseX > 490 && mouseX < 790 && mouseY > 445 && mouseY < 490) {
      resetarJogo();
      resetarQuiz();
      // Troca música de volta
      player.close();
      player = minim.loadFile("smash_brawl.mp3");
      player.loop();
      musicaTrocada = false;
      tela = 1;
    }
  }
  // Tela certificado (13)
  else if (tela == 13) {
    if (mouseX > 543 && mouseX < 823 && mouseY > 450 && mouseY < 505) {
      resetarJogo(); resetarQuiz(); tela = 0;
    }
    if (mouseX > 513 && mouseX < 853 && mouseY > 530 && mouseY < 585) {
      tela = 14;
    }
  }
  // Tela ver certificado (14)
  else if (tela == 14) {
    if (mouseX > 543 && mouseX < 823 && mouseY > 690 && mouseY < 745) {
      resetarJogo(); resetarQuiz(); tela = 0;
    }
  }
  // Tela créditos (15)
  else if (tela == 15) {
    // Botão VOLTAR
    if (mouseX > 543 && mouseX < 823 && mouseY > 645 && mouseY < 690) {
      somErro.trigger();
      tela = 0;
    }
  }
}

void keyPressed(){
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
  if (mouseX > 530 && mouseX < 750 && mouseY > 450 && mouseY < 500)
    corBotao = verdeEscuro;
  else
    corBotao = verde;
}

void desenharBarraProgresso() {

  float larguraBarra = 500;
  float alturaBarra = 25;

  float x = width/2 - larguraBarra/2;
  float y = 50;

  // Fundo
  fill(220);
  noStroke();
  rect(x, y, larguraBarra, alturaBarra, 15);

  // Progresso
  fill(0, 200, 80);

  float progresso = map(
    perguntaAtual,
    1,
    10,
    0,
    larguraBarra
  );

  rect(x, y, progresso, alturaBarra, 15);

  // Texto
  fill(255);
  textAlign(CENTER);
  textSize(18);

  text(
    "Pergunta " + perguntaAtual + " de 10",
    width/2,
    y - 10
  );
}
