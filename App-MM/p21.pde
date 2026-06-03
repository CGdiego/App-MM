// UI polida por Claude
void p21() {
  String[] linhas = {
    "Passar muitas horas seguidas",
    "na internet pode fazer",
    "mal à saúde?"
  };
  desenharTelaPergunta(linhas);

  if (dicaAtual == 1) {
    xp = -200; yp = 200;
    pushMatrix();
    translate(240, 280); scale(0.40); translate(-250, 0);
    stroke(0); strokeWeight(10);
    fill(0, 0, 255); circle(xp+350, yp+150, 100); circle(xp+150, yp+150, 100);
    fill(0, 0, 200); circle(xp+350, yp+150, 50); circle(xp+150, yp+150, 50);
    fill(0, 0, 255); circle(xp+250, yp+250, 250);
    fill(255); circle(xp+300, yp+225, 75); circle(xp+200, yp+225, 75);
    fill(0); circle(xp+300, yp+225, 25); circle(xp+200, yp+225, 25);
    fill(255, 0, 0); rect(xp+200, yp+285, 100, 50);
    strokeWeight(0); fill(255); rect(xp+205, yp+290, 90, 10);
    popMatrix();

    fill(255); stroke(0); strokeWeight(4);
    rect(15, 280, 300, 100, 20);
    fill(0); textSize(24); textAlign(CENTER);
    text("Faça pausas e", 160, 320);
    text("descanse os olhos!", 160, 360);
  }
}
