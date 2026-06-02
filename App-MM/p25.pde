// Pergunta 25

void p25() {

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
  text("Deixar seu perfil nas redes",width/2,260);
  text("sociais como privado",width/2,300);
  text("aumenta sua segurança?",width/2,340);

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
    // Robô
    bX = -1050; bY = 450;
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

    fill(255); stroke(0); strokeWeight(4);
    rect(15,280,300,100,20);
    fill(0); textSize(24);
    text("Perfil privado =",160,320);
    text("menos exposição!",160,360);
  }
}
