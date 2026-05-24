// Feito por Lucas e Diego

float xp = 0, yp = 0;
float bX = 200, bY = 300;

color corBotao;
color verde             = color(0, 200, 80);
color verdeEscuro       = color(0, 120, 40);

color corSim;
color verdeSim          = color(0, 200, 0);
color verdeSimEscuro    = color(0, 120, 0);

color corNao;
color vermelhoNao       = color(220, 0, 0);
color vermelhoNaoEscuro = color(140, 0, 0);

color corDica;
color laranjaDica       = color(220, 165, 0);
color laranjaDicaEscuro = color(140, 165, 0);

void telaInicial() {
  background(180);

  fill(255);
  stroke(0,255,0);
  strokeWeight(5);
  rect(390, 60, 500, 600, 15);

  textAlign(CENTER, CENTER);
  
  fill(80);
  textSize(22);
  text("BEM-VINDO AO", 640, 140);
  
  fill(220, 0, 0);
  textSize(36);
  text("NUWS", 640, 220);
  
  fill(0);
  textSize(20);
  text("Aqui você aprenderá sobre", 640, 280);
  text("como não cair em golpes online", 640, 300);
  
  text("Se você terminar, vai poder jogar", 640, 360);
  text("um jogo final super legal", 640, 380);
   
  fill(corBotao);
  stroke(0, 150, 50);
  strokeWeight(2);
  rect(530, 480, 220, 55, 10);
  
  fill(255);
  textSize(20);
  text("JOGAR", 640, 507);
  
  stroke(0);
  strokeWeight(1);

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

  // 5. Robô do Reddit
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
