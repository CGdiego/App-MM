// Pergunta 22

void p22() {

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
  text("Você deve dizer seu",width/2,260);
  text("nome completo para",width/2,300);
  text("desconhecidos online?",width/2,340);

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
    // Mario
    xp = -250; yp = -150;
    pushMatrix();
    translate(240, 460);
    scale(0.45);
    translate(-250, 0);
    fill(227, 0, 4);
    rect(xp+160, yp+80, 180, 40); rect(xp+140, yp+120, 220, 30); rect(xp+190, yp+70, 120, 20);
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

    fill(255); stroke(0); strokeWeight(4);
    rect(15,280,300,100,20);
    fill(0); textSize(24);
    text("Seu nome completo",160,320);
    text("é informação privada!",160,360);
  }
}
