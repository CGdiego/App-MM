// Feito por João Victor

void p07() {

  background(0,120,255);
  desenharBarraProgresso();

  fill(255);
  stroke(0);
  strokeWeight(4);
  rect(330,100,700,550,20);

  fill(0);
  textAlign(CENTER);

  textSize(40);
  text("PERGUNTA " + perguntaAtual + ".", width/2, 180);

  textSize(28);
  text("Você deve compartilhar",width/2,260);
  text("seu endereço com",width/2,300);
  text("estranhos?",width/2,340);

  fill(corSim);
  rect(450,500,180,80,20);

  fill(255);
  textSize(32);
  text("SIM",540,552);

  fill(corNao);
  rect(730,500,180,80,20);

  fill(255);
  text("NÃO",820,552);

  fill(corDica);
  rect(1100,500,180,80,20);

  fill(255);
  text("DICA",1190,552);

  if (dicaAtual == 1) {

    xp = -200;
    yp = 200;

    // CRIATURA AZUL
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

    fill(255);
    stroke(0);
    strokeWeight(4);
    rect(15,280,300,100,20);

    fill(0);
    textSize(24);
    text("Informações pessoais",160,320);
    text("são privadas!",160,360);
  }
}
