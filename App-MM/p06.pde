// Feito por ---


void p06() {


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

  text("PERGUNTA 6.", width/2, 180);

  textSize(28);

  text("Alguém faz pfv",width/2,260);

  text("Alguém faz pfv",width/2,300);


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
 
  if (dica06 == 1) {
    xp = 0;
    yp = 0;
    // COLA SEU PERSONAGEM AQUI E AJUSTA O XP E O YP PRA FICAR NA POSIÇÃO CERTA
    
    fill(255);
    stroke(0);
    strokeWeight(4);
  
    rect(15,280,300,100,20);
    
    fill(0);
    textSize(28);
    text("Alguém faz pfv",160,320);
    text("Alguém faz pfv",160,360);
  }
}
