// Feito por Diego
// Polimento de UI por Claude

void telaFinal() {
  // Fundo gradiente verde escuro
  noStroke();
  for (int i = 0; i < height; i++) {
    float t = map(i, 0, height, 0, 1);
    color c = lerpColor(color(0, 100, 40), color(0, 30, 15), t);
    stroke(c);
    line(0, i, width, i);
  }

  // Sombra do card
  fill(0, 0, 0, 70);
  noStroke();
  rect(398, 68, 500, 610, 18);
  // Card
  fill(255);
  stroke(180);
  strokeWeight(2);
  rect(390, 60, 500, 610, 15);

  // Cabeçalho dourado
  fill(200, 160, 0);
  noStroke();
  rect(390, 60, 500, 90, 15, 15, 0, 0);

  textAlign(CENTER, CENTER);
  fill(255, 240, 150);
  textSize(17);
  text("🏆  QUIZ CONCLUÍDO!", 640, 88);

  // Título
  fill(0, 0, 0, 50);
  textSize(52);
  text("PARABÉNS!", 643, 130);
  fill(200, 140, 0);
  text("PARABÉNS!", 640, 127);

  // Divisor
  stroke(220);
  strokeWeight(1);
  line(420, 165, 860, 165);
  noStroke();

  fill(40);
  textSize(19);
  text("Você respondeu todas as 10 perguntas!", 640, 200);

  // Estatística de dicas
  fill(90);
  textSize(16);
  text("Dicas utilizadas:", 640, 240);

  // Badge de dicas
  color badgeCol = contagemDica == 0 ? color(0, 180, 60) : (contagemDica <= 3 ? color(200, 140, 0) : color(180, 40, 40));
  fill(badgeCol);
  noStroke();
  rect(580, 255, 120, 40, 10);
  fill(255);
  textSize(22);
  text("" + contagemDica, 640, 275);

  // Mensagem condicional
  fill(60);
  textSize(15);
  if (contagemDica == 0) {
    fill(0, 140, 50);
    text("Perfeito! Nenhuma dica usada! 🌟", 640, 320);
  } else if (contagemDica <= 3) {
    fill(160, 110, 0);
    text("Bom trabalho! Poucas dicas usadas. 👍", 640, 320);
  } else {
    fill(160, 40, 40);
    text("Você conseguiu, mas estude mais! 📚", 640, 320);
  }

  // Divisor
  stroke(220);
  strokeWeight(1);
  line(420, 345, 860, 345);
  noStroke();

  fill(50);
  textSize(16);
  text("Agora é hora do jogo final:", 640, 380);
  fill(30);
  textSize(14);
  text("Use as setas do teclado para mover o Jotaro", 640, 408);
  text("e alcançar o alvo!", 640, 428);

  // Botão JOGAR JOGO FINAL
  fill(0, 0, 0, 40);
  noStroke();
  rect(533, 483, 220, 55, 12);
  fill(corBotao);
  stroke(0, 100, 30);
  strokeWeight(2);
  rect(530, 480, 220, 55, 12);
  fill(255);
  noStroke();
  textSize(18);
  text("🎮  JOGAR JOGO FINAL", 640, 507);

  noStroke();

  // Personagens (mantidos originais)
  // 1. Creeper
  pushMatrix();
  translate(230, 65);
  scale(0.35);
  translate(-214, 0);
  fill(0, 255, 0); stroke(0); strokeWeight(5);
  rect(xp+174, yp+250, 130, 300);
  rect(xp+128, yp+80, 220, 220);
  rect(xp+128, yp+500, 70, 100);
  rect(xp+276, yp+500, 70, 100);
  fill(0); stroke(0);
  rect(xp+155, yp+128, 60, 60);
  rect(xp+260, yp+128, 60, 60);
  rect(xp+218, yp+190, 38, 70);
  rect(xp+180, yp+210, 38, 80);
  rect(xp+256, yp+210, 38, 80);
  popMatrix();

  // 2. Criatura Azul
  pushMatrix();
  translate(240, 280);
  scale(0.40);
  translate(-250, 0);
  stroke(0); strokeWeight(10);
  fill(0, 0, 255); circle(xp+350, yp+150, 100); circle(xp+150, yp+150, 100);
  fill(0, 0, 200); circle(xp+350, yp+150, 50); circle(xp+150, yp+150, 50);
  fill(0, 0, 255); circle(xp+250, yp+250, 250);
  fill(255); circle(xp+300, yp+225, 75); circle(xp+200, yp+225, 75);
  fill(0); circle(xp+300, yp+225, 25); circle(xp+200, yp+225, 25);
  fill(255, 0, 0); rect(xp+200, yp+285, 100, 50);
  strokeWeight(0); fill(255); rect(xp+205, yp+290, 90, 10);
  popMatrix();

  // 3. Mario
  pushMatrix();
  translate(240, 460);
  scale(0.45);
  translate(-250, 0);
  fill(227, 0, 4); rect(xp+160, yp+80, 180, 40); rect(xp+140, yp+120, 220, 30); rect(xp+190, yp+70, 120, 20);
  fill(90, 44, 0); rect(xp+150, yp+150, 60, 60); rect(xp+310, yp+150, 60, 60);
  fill(232, 177, 89); rect(xp+200, yp+150, 110, 110);
  fill(5, 5, 5); rect(xp+230, yp+180, 20, 30); rect(xp+270, yp+180, 20, 30);
  fill(232, 177, 89); rect(xp+245, yp+200, 20, 20);
  fill(90, 44, 0); rect(xp+220, yp+240, 100, 20); rect(xp+210, yp+250, 120, 15);
  fill(227, 0, 4); rect(xp+180, yp+260, 150, 90);
  fill(0, 70, 255); rect(xp+160, yp+300, 80, 110); rect(xp+270, yp+300, 80, 110); rect(xp+180, yp+300, 150, 60);
  fill(255, 215, 0); rect(xp+210, yp+310, 20, 20); rect(xp+280, yp+310, 20, 20);
  fill(227, 0, 4); rect(xp+130, yp+270, 40, 80); rect(xp+330, yp+270, 40, 80);
  fill(232, 177, 89); rect(xp+120, yp+340, 50, 40); rect(xp+330, yp+340, 50, 40);
  fill(0, 70, 255); rect(xp+200, yp+400, 40, 60); rect(xp+260, yp+400, 40, 60);
  fill(180, 114, 5); rect(xp+190, yp+450, 70, 30); rect(xp+250, yp+450, 70, 30);
  popMatrix();

  // 4. Steve
  pushMatrix();
  translate(1040, 20);
  scale(0.45);
  translate(-500, 0);
  fill(101, 67, 33); stroke(0); rect(xp+445, yp+140, 110, 60);
  fill(255, 224, 189); rect(xp+435, yp+180, 15, 30); rect(xp+550, yp+180, 15, 30);
  square(xp+450, yp+150, 100);
  fill(101, 67, 33); rect(xp+450, yp+150, 100, 20);
  fill(0); rect(xp+470, yp+180, 10, 10); rect(xp+520, yp+180, 10, 10);
  fill(0, 0, 255); rect(xp+425, yp+250, 150, 200);
  fill(255, 224, 189); rect(xp+365, yp+250, 60, 200); rect(xp+575, yp+250, 60, 200);
  fill(0, 255, 0); rect(xp+425, yp+450, 60, 120); rect(xp+515, yp+450, 60, 120);
  popMatrix();

  // 5. Robô
  pushMatrix();
  translate(1040, 385);
  scale(0.70);
  translate(-200, -300);
  stroke(0); strokeWeight(2);
  line(bX, bY-80, bX, bY-110);
  fill(255, 0, 0); ellipse(bX, bY-115, 10, 10);
  fill(150); stroke(0);
  rect(bX-10, bY-45, 20, 10);
  rect(bX-40, bY-90, 80, 50, 5);
  fill(255, 0, 0); ellipse(bX-20, bY-70, 15, 15); ellipse(bX+20, bY-70, 15, 15);
  fill(150); rect(bX-50, bY-35, 100, 100, 10);
  fill(0, 200, 255); rect(bX-30, bY-15, 60, 30);
  fill(150); rect(bX-70, bY-20, 20, 50); rect(bX+50, bY-20, 20, 50);
  fill(255, 255, 0); ellipse(bX-15, bY, 10, 10);
  fill(0, 255, 0); ellipse(bX+15, bY, 10, 10);
  popMatrix();

  // 6. Freddy
  pushMatrix();
  translate(1040, 600);
  scale(0.35);
  translate(-300, -450);
  fill(139, 69, 19);
  ellipse(xp+300, yp+500, 220, 260);
  ellipse(xp+190, yp+470, 70, 180); ellipse(xp+410, yp+470, 70, 180);
  ellipse(xp+250, yp+620, 70, 160); ellipse(xp+350, yp+620, 70, 160);
  fill(210, 180, 140); ellipse(xp+300, yp+510, 130, 170);
  fill(139, 69, 19); ellipse(xp+300, yp+250, 250, 250);
  ellipse(xp+190, yp+200, 90, 90); ellipse(xp+410, yp+200, 90, 90);
  fill(230); ellipse(xp+190, yp+200, 50, 50); ellipse(xp+410, yp+200, 50, 50);
  fill(230); ellipse(xp+300, yp+310, 140, 100);
  fill(255); ellipse(xp+250, yp+230, 45, 45); ellipse(xp+350, yp+230, 45, 45);
  fill(0); ellipse(xp+250, yp+230, 20, 20); ellipse(xp+350, yp+230, 20, 20);
  ellipse(xp+300, yp+300, 20, 15);
  noFill(); stroke(0); strokeWeight(3);
  arc(xp+300, yp+330, 60, 40, 0, PI);
  noStroke(); fill(20);
  rect(xp+220, yp+130, 160, 20, 10);
  rect(xp+250, yp+70, 100, 70, 10);
  fill(200, 0, 0); rect(xp+250, yp+115, 100, 15);
  popMatrix();
}
