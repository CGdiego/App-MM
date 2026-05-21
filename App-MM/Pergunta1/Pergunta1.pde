//Feito por Gustavo Gomes


float xp = 0;
float yp = 0;

void setup() {
  size(1366,768);
}

void draw() {

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

  text("PERGUNTA 2.", width/2, 180);

  textSize(28);

  text("Você deve compartilhar sua senha",width/2,260);

  text("com estranhos na internet?",width/2,300);


// BOTÃO SIM


  fill(0,200,0);

  rect(450,500,180,80,20);

  fill(255);

  textSize(32);

  text("SIM",540,552);


// BOTÃO NÃO


  fill(220,0,0);

  rect(730,500,180,80,20);

  fill(255);

  text("NÃO",820,552);
}
