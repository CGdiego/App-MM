// Feito por Diego

// tela 13 — digitar email
void telaCertificado() {
  background(30);

  fill(255);
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Você zerou o NUWS!", width/2, 140);

  textSize(20);
  fill(220);
  text("Digite seu e-mail para receber o certificado:", width/2, 210);

  // Campo de e-mail
  // rect(383, 260, 600, 50) → x: 383..983, y: 260..310
  fill(255);
  stroke(100);
  strokeWeight(2);
  rect(383, 260, 600, 50, 8);
  fill(30);
  noStroke();
  textSize(20);
  String cursor = (frameCount % 60 < 30) ? "|" : "";
  text(emailDigitado + cursor, width/2, 285);

  // Botão CONFIRMAR
  // rect(543, 350, 280, 55) → x: 543..823, y: 350..405  ← mesmas do mousePressed
  // Mas vou usar y=450 como no mousePressed
  boolean hoverConfirmar = mouseX > 543 && mouseX < 823 && mouseY > 450 && mouseY < 505;
  fill(hoverConfirmar ? color(0, 120, 40) : color(0, 180, 60));
  noStroke();
  rect(543, 450, 280, 55, 10);
  fill(255);
  textSize(20);
  text("CONFIRMAR", width/2, 477);

  // Botão NAO COLOCAR EMAIL
  // rect(513, 530, 340, 55) → x: 513..853, y: 530..585
  boolean hoverNao = mouseX > 513 && mouseX < 853 && mouseY > 530 && mouseY < 585;
  fill(hoverNao ? color(140, 0, 0) : color(200, 0, 0));
  noStroke();
  rect(513, 530, 340, 55, 10);
  fill(255);
  textSize(20);
  text("Não Colocar E-mail", width/2, 557);
}

// tela 14 — ver certificado completo
void telaVerCertificado() {
  imageMode(CORNER);
  image(certificado, 0, 0, width, height);
  imageMode(CENTER);

  // Faixa escura no fundo para os botões
  fill(0, 0, 0, 190);
  noStroke();
  rect(0, 680, width, 88);

  fill(80, 230, 80);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Parabéns! Você é um Aluno Consciente Digital!", width/2, 700);

  // Botão VOLTAR AO INICIO
  // rect(543, 690, 280, 55) → x: 543..823, y: 690..745
  boolean hoverVoltar = mouseX > 543 && mouseX < 823 && mouseY > 690 && mouseY < 745;
  fill(hoverVoltar ? color(0, 80, 160) : color(0, 120, 220));
  noStroke();
  rect(543, 720, 280, 45, 10);
  fill(255);
  textSize(18);
  text("VOLTAR AO INICIO", width/2, 742);
}
