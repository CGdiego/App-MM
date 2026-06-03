// UI polida por Claude
void p05() {
  String[] linhas = {
    "Você deve aceitar pedidos de",
    "amizade de pessoas que",
    "não conhece?"
  };
  desenharTelaPergunta(linhas);

  if (dicaAtual == 1) {
    xp = -1950; yp = 700;
    pushMatrix();
    translate(1040, 20); scale(0.45); translate(-500, 0);
    fill(101, 67, 33); stroke(0); rect(xp+445, yp+140, 110, 60);
    fill(255, 224, 189); rect(xp+435, yp+180, 15, 30); rect(xp+550, yp+180, 15, 30);
    square(xp+450, yp+150, 100);
    fill(101, 67, 33); rect(xp+450, yp+150, 100, 20);
    fill(0); rect(xp+470, yp+180, 10, 10); rect(xp+520, yp+180, 10, 10);
    fill(0, 0, 255); rect(xp+425, yp+250, 150, 200);
    fill(255, 224, 189); rect(xp+365, yp+250, 60, 200); rect(xp+575, yp+250, 60, 200);
    fill(0, 255, 0); rect(xp+425, yp+450, 60, 120); rect(xp+515, yp+450, 60, 120);
    popMatrix();

    fill(255); stroke(0); strokeWeight(4);
    rect(15, 280, 300, 100, 20);
    fill(0); textSize(24); textAlign(CENTER);
    text("Desconhecidos podem", 160, 320);
    text("ser perigosos!", 160, 360);
  }
}
