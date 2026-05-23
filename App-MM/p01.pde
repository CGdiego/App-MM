// Feito por Gustavo Gomes e Diego


void p01() {

  
// FUNDO AZUL
  background(0,120,255);


// TELA BRANCA NO MEIO


  fill(255);
  stroke(0);
  strokeWeight(4);

  rect(330,100,700,550,20);


// TEXOS


  fill(0);

  textAlign(CENTER);

  textSize(40);

  text("PERGUNTA 1.", width/2, 180);

  textSize(28);

  text("Você deve compartilhar sua senha",width/2,260);

  text("com estranhos na internet?",width/2,300);


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
}

// BOTÃO PRESSIONADO

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
