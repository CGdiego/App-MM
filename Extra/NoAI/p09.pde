// Feito por Lucas


void p09() {


// FUNDO AZUL
  background(0,120,255);


// TELA BRANCA NO MEIO

  fill(255);
  stroke(0);
  strokeWeight(4);

  rect(330,100,700,550,20);


// TEXTOS

  fill(0);

  textAlign(CENTER);

  textSize(40);

  text("PERGUNTA 9.", width/2, 180);

  textSize(28);

  text("Você deve clicar em links",width/2,260);

  text("estranhos enviados por",width/2,300);

  text("desconhecidos?",width/2,340);


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

  if (dica09 == 1) {

    xp = -1950;
    yp = 700;

    // Steve

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

    fill(255);
    stroke(0);
    strokeWeight(4);

    rect(15,280,300,100,20);

    fill(0);
    textSize(24);

    text("Links estranhos podem",160,320);
    text("ter vírus ou golpes!",160,360);
  }
}
