// Feito por Diego
// UI polida por Claude

void p03() {
  String[] linhas = {
    "Se alguém pedir o número do",
    "cartão de crédito do seu pai,",
    "você passa?"
  };
  desenharTelaPergunta(linhas);

  if (dicaAtual == 1) {
    xp = -200; yp = 900;
    pushMatrix();
    translate(230, 65); scale(0.35); translate(-214, 0);
    fill(0, 255, 0); stroke(0); strokeWeight(5);
    rect(xp+174, yp+250, 130, 300); rect(xp+128, yp+80, 220, 220);
    rect(xp+128, yp+500, 70, 100); rect(xp+276, yp+500, 70, 100);
    fill(0); stroke(0);
    rect(xp+155, yp+128, 60, 60); rect(xp+260, yp+128, 60, 60);
    rect(xp+218, yp+190, 38, 70); rect(xp+180, yp+210, 38, 80); rect(xp+256, yp+210, 38, 80);
    popMatrix();

    fill(255); stroke(0); strokeWeight(4);
    rect(15, 280, 300, 100, 20);
    fill(0); textSize(24); textAlign(CENTER);
    text("Quem tem o número", 160, 320);
    text("pode usar seu dinheiro!", 160, 360);
  }
}
