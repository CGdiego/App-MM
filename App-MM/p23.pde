// Pergunta 23

void p23() {

// FUNDO AZUL
  background(0,120,255);
  desenharBarraProgresso();

// TELA BRANCA NO MEIO
  fill(255);
  stroke(0);
  strokeWeight(4);
  rect(330,100,700,550,20);

// TEXTOS
  fill(0);
  textAlign(CENTER);
  textSize(40);
  text("PERGUNTA " + perguntaAtual + ".", width/2, 180);
  textSize(28);
  text("Você pode bloquear e",width/2,260);
  text("denunciar pessoas que",width/2,300);
  text("te assediam online?",width/2,340);

// BOTÃO SIM
  fill(corSim);
  rect(450,500,180,80,20);
  fill(255);
  textSize(32);
  text("SIM",540,552);

// BOTÃO NÃO
  fill(corNao);
  rect(730,500,180,80,20);
  fill(255);
  text("NÃO",820,552);

// BOTÃO DICA
  fill(corDica);
  rect(1100,500,180,80,20);
  fill(255);
  text("DICA",1190,552);

// TELA DICA
  if (dicaAtual == 1) {
    // Creeper
    xp = -200; yp = 900;
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

    fill(255); stroke(0); strokeWeight(4);
    rect(15,280,300,100,20);
    fill(0); textSize(24);
    text("Bloquear é um",160,320);
    text("direito seu!",160,360);
  }
}
