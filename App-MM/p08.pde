// Feito por Gustavo Gomes

void p08() {

  background(0,120,255);

  fill(255);
  stroke(0);
  strokeWeight(4);
  rect(330,100,700,550,20);

  fill(0);
  textAlign(CENTER);

  textSize(40);
  text("PERGUNTA 8.", width/2, 180);

  textSize(28);
  text("Você deve sair de",width/2,260);
  text("contas públicas depois",width/2,300);
  text("de usar?",width/2,340);

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

  if (dica08 == 1) {

    xp = -2500;
    yp = -200;

    // FREDDY
    xp = -2500;
    yp = -200;
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

    fill(255);
    stroke(0);
    strokeWeight(4);
    rect(15,280,300,100,20);

    fill(0);
    textSize(24);
    text("Isso evita que",160,320);
    text("invadam sua conta!",160,360);
  }
}
