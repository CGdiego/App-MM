float xp = 0
float yp = 0

void telaInicial() {
  background(200); // Fundo cinza para destacar a tela branca
  
  // Supomos que o tamanho da tela seja 1280x720 no setup
  float larguraTela = 1280; 
  float alturaTela = 720;
  
  // ==========================================
  // TELA BRANCA CENTRALIZADA
  // ==========================================
  float largPainel = 400;
  float altPainel = 600;
  float xPainel = (larguraTela - largPainel) / 2; // Centraliza X
  float yPainel = (alturaTela - altPainel) / 2;   // Centraliza Y
  
  fill(255);
  stroke(0);
  strokeWeight(3);
  rect(xPainel, yPainel, largPainel, altPainel, 15); // Tela branca com cantos arredondados
  
  // ==========================================
  // TEXTOS E BOTÃO (CENTRO DA TELA BRANCA)
  // ==========================================
  textAlign(CENTER, CENTER);
  
  // 1. Mensagem de Bem-vindo
  fill(80); // Cinza escuro
  textSize(22);
  text("BEM-VINDO AO", larguraTela / 2, yPainel + 80);
  
  // 2. Nome do Jogo
  fill(227, 0, 4); // Vermelho em destaque (estilo Mario)
  textSize(36);
  text("NWS", larguraTela / 2, yPainel + 160);
  
  // 3. Intro
  fill(0);
  textSize(20);
  text("Aqui voce aprendera sobre", larguraTela / 2, yPainel + 220);
  text("como nao cair em golpes online", larguraTela / 2, yPainel + 240);
  
  // 4. Botão para Começar o Jogo
  float largBotao = 220;
  float altBotao = 55;
  float xBotao = (larguraTela - largBotao) / 2;
  float yBotao = yPainel + 420; // Posicionado na parte inferior do painel
  
  // Desenho do Botão (Verde)
  fill(0, 200, 80);
  stroke(0, 150, 50);
  strokeWeight(2);
  rect(xBotao, yBotao, largBotao, altBotao, 10); // Botão arredondado
  
  // Texto do Botão
  fill(255); // Letras brancas
  textSize(20);
  text("JOGAR", larguraTela / 2, yBotao + (altBotao / 2) - 2); 
  
  // Redefine as configurações padrão de traço para não afetar os personagens
  stroke(0);
  strokeWeight(1);
  
  // Definindo as margens X das colunas para simetria
  float colunaEsquerdaX = xPainel / 2; // Centralizado no espaço à esquerda
  float colunaDireitaX = larguraTela - (xPainel / 2); // Centralizado no espaço à direita

  // ==========================================
  // COLUNA DA ESQUERDA (Alinhamento Vertical Perfeito)
  // ==========================================
  
  // 1. Creeper (Topo Esquerda)
  pushMatrix();
  translate(colunaEsquerdaX-10, 70); 
  scale(0.35);
  translate(-214, 0); 
  fill(0, 255, 0); stroke(0); strokeWeight(5);
  rect(174, 250, 130, 300);
  rect(128, 80, 220, 220);
  fill(0); stroke(0);
  rect(xp+155, 128, 60, 60);
  rect(260, 128, 60, 60);
  rect(218, 190, 38, 70);
  rect(180, 210, 38, 80);
  rect(256, 210, 38, 80);
  popMatrix();
  
  // 2. Urso Azul (Meio Esquerda)
  pushMatrix();
  translate(colunaEsquerdaX, 300); 
  scale(0.40);
  translate(-250, 0);
  stroke(0); strokeWeight(10);
  fill(0, 0, 255); circle(350, 150, 100); circle(150, 150, 100);
  fill(0, 0, 200); circle(350, 150, 50); circle(150, 150, 50);
  fill(0, 0, 255); circle(250, 250, 250);
  fill(255); circle(300, 225, 75); circle(200, 225, 75);
  fill(0); circle(300, 225, 25); circle(200, 225, 25);
  fill(255, 0, 0); rect(200, 285, 100, 50);
  strokeWeight(0); fill(255); rect(205, 290, 90, 10);
  popMatrix();
  
  // 3. Mario (Baixo Esquerda)
  pushMatrix();
  translate(colunaEsquerdaX, 490); 
  scale(0.45);
  translate(-250, 0);
  fill(227, 0, 4); rect(160, 80, 180, 40); rect(140, 120, 220, 30); rect(190, 70, 120, 20);
  fill(90, 44, 0); rect(150, 150, 60, 60); rect(310, 150, 60, 60);
  fill(232, 177, 89); rect(200, 150, 110, 110);
  fill(5, 5, 5); rect(230, 180, 20, 30); rect(270, 180, 20, 30);
  fill(232, 177, 89); rect(245, 200, 20, 20);
  fill(90, 44, 0); rect(220, 240, 100, 20); rect(210, 250, 120, 15);
  fill(227, 0, 4); rect(180, 260, 150, 90);
  fill(0, 70, 255); rect(160, 300, 80, 110); rect(270, 300, 80, 110); rect(180, 300, 150, 60);
  fill(255, 215, 0); rect(210, 310, 20, 20); rect(280, 310, 20, 20);
  fill(227, 0, 4); rect(130, 270, 40, 80); rect(330, 270, 40, 80);
  fill(232, 177, 89); rect(120, 340, 50, 40); rect(330, 340, 50, 40);
  fill(0, 70, 255); rect(200, 400, 40, 60); rect(260, 400, 40, 60);
  fill(180, 114, 5); rect(190, 450, 70, 30); rect(250, 450, 70, 30);
  popMatrix();
  
  // ==========================================
  // COLUNA DA DIREITA (Perfeitamente Alinhados e Espaçados)
  // ==========================================
  
  // 4. Steve (Topo Direita)
  pushMatrix();
  translate(colunaDireitaX, 20); 
  scale(0.45); 
  translate(-500, 0);
  fill(101, 67, 33); stroke(0); rect(445, 140, 110, 60);
  fill(255, 224, 189); rect(435, 180, 15, 30); rect(550, 180, 15, 30);
  square(450, 150, 100);
  fill(101, 67, 33); rect(450, 150, 100, 20);
  fill(0); rect(470, 180, 10, 10); rect(520, 180, 10, 10);
  fill(0, 0, 255); rect(425, 250, 150, 200);
  fill(255, 224, 189); rect(365, 250, 60, 200); rect(575, 250, 60, 200);
  fill(0, 255, 0); rect(425, 450, 60, 120); rect(515, 450, 60, 120);
  popMatrix();
  
  // 5. Robô Cinza (Meio Direita)
  pushMatrix();
  translate(colunaDireitaX, 385); 
  scale(0.70); 
  translate(-200, -300); 
  float bX = 200, bY = 300;
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
  
  // 6. Urso Marrom (Baixo Direita)
  pushMatrix();
  translate(colunaDireitaX, 600); 
  scale(0.35);
  translate(-300, -450); 
  fill(139, 69, 19);
  ellipse(300, 500, 220, 260);
  ellipse(190, 470, 70, 180); ellipse(410, 470, 70, 180);
  ellipse(250, 620, 70, 160); ellipse(350, 620, 70, 160);
  fill(210, 180, 140); ellipse(300, 510, 130, 170);
  fill(139, 69, 19); ellipse(300, 250, 250, 250);
  ellipse(190, 200, 90, 90); ellipse(410, 200, 90, 90);
  fill(230); ellipse(190, 200, 50, 50); ellipse(410, 200, 50, 50);
  fill(230); ellipse(300, 310, 140, 100);
  fill(255); ellipse(250, 230, 45, 45); ellipse(350, 230, 45, 45);
  fill(0); ellipse(250, 230, 20, 20); ellipse(350, 230, 20, 20);
  ellipse(300, 300, 20, 15);
  noFill(); stroke(0); strokeWeight(3);
  arc(300, 330, 60, 40, 0, PI);
  noStroke(); fill(20);
  rect(220, 130, 160, 20, 10);
  rect(250, 70, 100, 70, 10);
  fill(200, 0, 0); rect(250, 115, 100, 15);
  popMatrix();
}
