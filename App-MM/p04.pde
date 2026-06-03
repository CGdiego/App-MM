// UI polida por Claude
void p04() {
  String[] linhas = {
    "É importante ter uma senha",
    "forte com letras, números",
    "e símbolos?"
  };
  desenharTelaPergunta(linhas);

  if (dicaAtual == 1) {
    bX = -1050; bY = 450;
    pushMatrix();
    translate(1040, 385); scale(0.70); translate(-200, -300);
    stroke(0); strokeWeight(2);
    line(bX, bY-80, bX, bY-110);
    fill(255, 0, 0); ellipse(bX, bY-115, 10, 10);
    fill(150); stroke(0);
    rect(bX-10, bY-45, 20, 10); rect(bX-40, bY-90, 80, 50, 5);
    fill(255, 0, 0); ellipse(bX-20, bY-70, 15, 15); ellipse(bX+20, bY-70, 15, 15);
    fill(150); rect(bX-50, bY-35, 100, 100, 10);
    fill(0, 200, 255); rect(bX-30, bY-15, 60, 30);
    fill(150); rect(bX-70, bY-20, 20, 50); rect(bX+50, bY-20, 20, 50);
    fill(255, 255, 0); ellipse(bX-15, bY, 10, 10);
    fill(0, 255, 0); ellipse(bX+15, bY, 10, 10);
    popMatrix();

    fill(255); stroke(0); strokeWeight(4);
    rect(15, 280, 300, 100, 20);
    fill(0); textSize(24); textAlign(CENTER);
    text("Senha forte =", 160, 320);
    text("mais proteção!", 160, 360);
  }
}
