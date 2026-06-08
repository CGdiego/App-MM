// Feito por Lucas e Diego
// Polimento de UI por Claude

float xp = 0, yp = 0;
float bX = 200, bY = 300;

color corBotao;
color verde             = color(0, 200, 80);
color verdeEscuro       = color(0, 120, 40);

color corSim;
color verdeSim          = color(0, 190, 60);
color verdeSimEscuro    = color(0, 110, 30);

color corNao;
color vermelhoNao       = color(210, 30, 30);
color vermelhoNaoEscuro = color(130, 0, 0);

color corDica;
color laranjaDica       = color(220, 140, 0);
color laranjaDicaEscuro = color(140, 80, 0);

color corCreditos;
color azulCreditos       = color(60, 140, 220);
color azulCreditosEscuro = color(20, 80, 160);

// ─── PERSONAGENS DECORATIVOS (coordenadas fixas, sem xp/yp) ─────────────────

void desenharCreeper(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  // corpo centralizado em (0,0): largura 220, altura ~520
  fill(0, 255, 0); stroke(0); strokeWeight(5);
  rect(-110,   0, 220, 220); // cabeça
  rect( -65, 220, 130, 300); // corpo
  rect(-110, 460,  70, 100); // perna esq
  rect(  40, 460,  70, 100); // perna dir
  fill(0); stroke(0);
  rect(-85,  48,  60, 60);   // olho esq
  rect( 25,  48,  60, 60);   // olho dir
  rect(-22, 110,  38, 70);   // nariz centro
  rect(-60, 130,  38, 80);   // nariz esq
  rect( 20, 130,  38, 80);   // nariz dir
  popMatrix();
}

void desenharCriaturaAzul(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  stroke(0); strokeWeight(10);
  fill(0, 0, 255); circle( 100, -100, 100); circle(-100, -100, 100);
  fill(0, 0, 200); circle( 100, -100,  50); circle(-100, -100,  50);
  fill(0, 0, 255); circle(0, 0, 250);
  fill(255); circle( 50, -25, 75); circle(-50, -25, 75);
  fill(0);   circle( 50, -25, 25); circle(-50, -25, 25);
  fill(255, 0, 0); rect(-50, 35, 100, 50);
  strokeWeight(0); fill(255); rect(-45, 40, 90, 10);
  popMatrix();
}

void desenharMario(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  fill(227, 0, 4); rect(-90,-270,180,40); rect(-110,-230,220,30); rect(-60,-280,120,20);
  fill(90, 44, 0); rect(-100,-200,60,60); rect(60,-200,60,60);
  fill(232,177, 89); rect(-50,-200,110,110);
  fill(5, 5, 5); rect(-20,-170,20,30); rect(20,-170,20,30);
  fill(232,177, 89); rect(-5,-150,20,20);
  fill(90, 44, 0); rect(-30,-110,100,20); rect(-40,-100,120,15);
  fill(227, 0, 4); rect(-70,-90,150,90);
  fill(0, 70,255); rect(-90,-50,80,110); rect(20,-50,80,110); rect(-70,-50,150,60);
  fill(255,215, 0); rect(-40,-40,20,20); rect(30,-40,20,20);
  fill(227, 0, 4); rect(-120,-80,40,80); rect(80,-80,40,80);
  fill(232,177, 89); rect(-130,-10,50,40); rect(80,-10,50,40);
  fill(0, 70,255); rect(-50,50,40,60); rect(10,50,40,60);
  fill(180,114, 5); rect(-60,100,70,30); rect(0,100,70,30);
  popMatrix();
}

void desenharSteve(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  fill(101, 67, 33); stroke(0); rect(-55,-210,110,60);
  fill(255,224,189); rect(-65,-170,15,30); rect(50,-170,15,30);
  square(-50,-200,100);
  fill(101, 67, 33); rect(-50,-200,100,20);
  fill(0); rect(-30,-170,10,10); rect(20,-170,10,10);
  fill(0, 0,255); rect(-75,-100,150,200);
  fill(255,224,189); rect(-135,-100,60,200); rect(75,-100,60,200);
  fill(0,255,  0); rect(-75,100,60,120); rect(15,100,60,120);
  popMatrix();
}

void desenharRobo(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  stroke(0); strokeWeight(2);
  line(0,-130,0,-160);
  fill(255,0,0); ellipse(0,-165,10,10);
  fill(150); stroke(0);
  rect(-10,-95,20,10);
  rect(-40,-140,80,50,5);
  fill(255,0,0); ellipse(-20,-120,15,15); ellipse(20,-120,15,15);
  fill(150); rect(-50,-85,100,100,10);
  fill(0,200,255); rect(-30,-65,60,30);
  fill(150); rect(-70,-70,20,50); rect(50,-70,20,50);
  fill(255,255,0); ellipse(-15,-50,10,10);
  fill(0,255,  0); ellipse( 15,-50,10,10);
  popMatrix();
}

void desenharFreddy(float px, float py, float sc) {
  pushMatrix();
  translate(px, py);
  scale(sc);
  fill(139, 69, 19);
  ellipse(0,0,220,260);
  ellipse(-110,-30,70,180); ellipse(110,-30,70,180);
  ellipse(-50,120,70,160);  ellipse( 50,120,70,160);
  fill(210,180,140); ellipse(0,10,130,170);
  fill(139, 69, 19); ellipse(0,-250,250,250);
  ellipse(-110,-300,90,90); ellipse(110,-300,90,90);
  fill(230); ellipse(-110,-300,50,50); ellipse(110,-300,50,50);
  fill(230); ellipse(0,-190,140,100);
  fill(255); ellipse(-50,-270,45,45); ellipse(50,-270,45,45);
  fill(0);   ellipse(-50,-270,20,20); ellipse(50,-270,20,20);
  ellipse(0,-200,20,15);
  noFill(); stroke(0); strokeWeight(3);
  arc(0,-170,60,40,0,PI);
  noStroke(); fill(20);
  rect(-80,-370,160,20,10);
  rect(-50,-430,100,70,10);
  fill(200,0,0); rect(-50,-385,100,15);
  popMatrix();
}

// ─────────────────────────────────────────────────────────────────────────────

void telaInicial() {
  // Fundo gradiente azul escuro
  noStroke();
  for (int i = 0; i < height; i++) {
    float t = map(i, 0, height, 0, 1);
    color c = lerpColor(color(0, 90, 210), color(0, 20, 80), t);
    stroke(c);
    line(0, i, width, i);
  }

  // Personagens decorativos — posições fixas, sem xp/yp
  desenharCreeper(130, 130, 0.35);      // subido vs versão anterior
  desenharCriaturaAzul(130, 420, 0.40);
  desenharMario(130, 650, 0.45);
  desenharSteve(1240, 200, 0.45);
  desenharRobo(1240, 470, 0.70);
  desenharFreddy(1240, 680, 0.35);

  // Sombra do card
  fill(0, 0, 0, 70);
  noStroke();
  rect(398, 68, 500, 610, 18);
  // Card branco
  fill(255);
  stroke(180);
  strokeWeight(2);
  rect(390, 60, 500, 610, 15);

  // Cabeçalho colorido
  fill(0, 90, 210);
  noStroke();
  rect(390, 60, 500, 90, 15, 15, 0, 0);

  textAlign(CENTER, CENTER);
  fill(180, 220, 255);
  textSize(17);
  text("BEM-VINDO AO", 640, 88);

  // Título NUWS com fonte estilosa
  PFont fonteTitle = createFont("Georgia", 60, true);
  textFont(fonteTitle);
  fill(255, 200, 0, 80);
  textSize(60);
  text("NUWS", 643, 130);
  fill(255);
  textSize(60);
  text("NUWS", 640, 127);
  stroke(255, 200, 0, 180);
  strokeWeight(3);
  line(565, 155, 715, 155);
  noStroke();

  textFont(createFont("SansSerif", 19, true));

  // Divisor
  stroke(220);
  strokeWeight(1);
  line(420, 170, 860, 170);
  noStroke();

  fill(40);
  textSize(19);
  text("Aprenda a se proteger na internet!", 640, 205);
  textSize(16);
  fill(90);
  text("Responda 10 perguntas sobre segurança digital.", 640, 240);
  text("Erre uma e volte do zero. Boa sorte!", 640, 265);

  stroke(220);
  strokeWeight(1);
  line(420, 295, 860, 295);
  noStroke();

  fill(0, 140, 60);
  textSize(15);
  text("✔  Acerte todas as 10 perguntas", 640, 330);
  fill(180, 100, 0);
  text("💡  Use dicas se precisar", 640, 358);
  fill(180, 0, 0);
  text("✖  Erre uma e recomece", 640, 386);
  fill(0, 80, 180);
  text("🎮  Complete o quiz e jogue o jogo final!", 640, 414);

  // Botão JOGAR
  fill(0, 0, 0, 40);
  noStroke();
  rect(533, 483, 220, 55, 12);
  fill(corBotao);
  stroke(0, 100, 30);
  strokeWeight(2);
  rect(530, 480, 220, 55, 12);
  fill(255);
  noStroke();
  textSize(22);
  text("▶  JOGAR", 640, 507);

  // Botão CRÉDITOS
  fill(0, 0, 0, 40);
  noStroke();
  rect(533, 553, 220, 45, 12);
  fill(corCreditos);
  stroke(20, 80, 160);
  strokeWeight(2);
  rect(530, 550, 220, 45, 12);
  fill(255);
  noStroke();
  textSize(17);
  text("★  CRÉDITOS", 640, 572);

  noStroke();
}

void telaCreditos() {
  noStroke();
  for (int i = 0; i < height; i++) {
    float t = map(i, 0, height, 0, 1);
    color c = lerpColor(color(0, 60, 160), color(0, 10, 50), t);
    stroke(c);
    line(0, i, width, i);
  }

  fill(0, 0, 0, 80);
  noStroke();
  rect(368, 68, 640, 640, 22);
  fill(255);
  stroke(180);
  strokeWeight(2);
  rect(360, 60, 640, 640, 18);

  fill(180, 130, 0);
  noStroke();
  rect(360, 60, 640, 90, 18, 18, 0, 0);

  fill(255, 220, 50);
  textAlign(CENTER, CENTER);
  textSize(28);
  text("★", 400, 103);
  text("★", 960, 103);

  PFont fonteCred = createFont("Georgia", 42, true);
  textFont(fonteCred);
  fill(255, 230, 100);
  textSize(42);
  text("CRÉDITOS", 680, 103);

  stroke(255, 200, 0, 150);
  strokeWeight(2);
  line(430, 150, 930, 150);
  noStroke();

  textFont(createFont("SansSerif", 18, true));

  fill(100);
  textSize(15);
  textAlign(CENTER, CENTER);
  text("Desenvolvido por:", 680, 185);

  String[] nomes = {
    "Daniel Godri Neto",
    "Diego Soares",
    "Gustavo Gomes Luciano",
    "João Victor Meiners Barboza",
    "Lucas Maximiano Rodrigues",
    "Mateus Weiss Medeiros"
  };

  int baseY = 240;
  int espacamento = 68;

  for (int i = 0; i < nomes.length; i++) {
    int cy = baseY + i * espacamento;
    if (i > 0) {
      stroke(230);
      strokeWeight(1);
      line(410, cy - 20, 950, cy - 20);
      noStroke();
    }
    fill(0, 90, 210);
    noStroke();
    ellipse(415, cy + 10, 30, 30);
    fill(255);
    textSize(14);
    text(str(i + 1), 415, 10 + cy);
    fill(30);
    textSize(18);
    textAlign(LEFT, CENTER);
    text(nomes[i], 440, cy + 10);
    textAlign(CENTER, CENTER);
  }

  stroke(230);
  strokeWeight(1);
  line(410, 660, 950, 660);
  noStroke();
  fill(150);
  textSize(13);
  text("NUWS  •  Segurança Digital", 680, 680);

  boolean hovVoltar = mouseX > 580 && mouseX < 780 && mouseY > 695 && mouseY < 740;
  fill(0, 0, 0, 40);
  noStroke();
  rect(583, 698, 200, 45, 12);
  fill(hovVoltar ? color(0, 70, 160) : color(0, 90, 210));
  stroke(0, 60, 140);
  strokeWeight(2);
  rect(580, 695, 200, 45, 12);
  fill(255);
  noStroke();
  textSize(18);
  text("← VOLTAR", 680, 717);

  noStroke();
}
