// Feito por Diego
// Polimento de UI por Claude

color corJogarNovamente;
color verdeJN       = color(0, 180, 80);
color verdeJNEscuro = color(0, 100, 40);

void telaFinal() {
  // Fundo gradiente verde escuro
  noStroke();
  for (int i = 0; i < height; i++) {
    float t = map(i, 0, height, 0, 1);
    color c = lerpColor(color(0, 100, 40), color(0, 30, 15), t);
    stroke(c);
    line(0, i, width, i);
  }

  // Personagens decorativos (mesmas funções de telaInicial)
  desenharCreeper(130, 130, 0.35);
  desenharCriaturaAzul(130, 420, 0.40);
  desenharMario(130, 650, 0.45);
  desenharSteve(1240, 200, 0.45);
  desenharRobo(1240, 470, 0.70);
  desenharFreddy(1240, 680, 0.35);

  // Sombra do card
  fill(0, 0, 0, 70);
  noStroke();
  rect(398, 68, 500, 640, 18);
  // Card
  fill(255);
  stroke(180);
  strokeWeight(2);
  rect(390, 60, 500, 640, 15);

  // Cabeçalho dourado
  fill(200, 160, 0);
  noStroke();
  rect(390, 60, 500, 90, 15, 15, 0, 0);

  textAlign(CENTER, CENTER);
  fill(255, 240, 150);
  textSize(17);
  text("QUIZ CONCLUÍDO!", 640, 88);

  fill(0, 0, 0, 50);
  textSize(52);
  text("PARABÉNS!", 643, 130);
  fill(200, 140, 0);
  text("PARABÉNS!", 640, 127);

  stroke(220);
  strokeWeight(1);
  line(420, 165, 860, 165);
  noStroke();

  fill(40);
  textSize(19);
  text("Você respondeu todas as 10 perguntas!", 640, 200);

  fill(90);
  textSize(16);
  text("Dicas utilizadas:", 640, 240);

  color badgeCol = contagemDica == 0 ? color(0, 180, 60) : (contagemDica <= 3 ? color(200, 140, 0) : color(180, 40, 40));
  fill(badgeCol);
  noStroke();
  rect(580, 255, 120, 40, 10);
  fill(255);
  textSize(22);
  text("" + contagemDica, 640, 275);

  fill(60);
  textSize(15);
  if (contagemDica == 0) {
    fill(0, 140, 50);
    text("Perfeito! Nenhuma dica usada! 🌟", 640, 320);
  } else if (contagemDica <= 3) {
    fill(160, 110, 0);
    text("Bom trabalho! Poucas dicas usadas. 👍", 640, 320);
  } else {
    fill(160, 40, 40);
    text("Você conseguiu, mas estude mais! 📚", 640, 320);
  }

  stroke(220);
  strokeWeight(1);
  line(420, 345, 860, 345);
  noStroke();

  fill(50);
  textSize(16);
  text("Agora é hora do jogo final:", 640, 375);
  fill(30);
  textSize(14);
  text("Use as setas do teclado para mover o Jotaro", 640, 400);
  text("e alcançar o alvo!", 640, 420);

  // Botão JOGAR JOGO FINAL
  fill(0, 0, 0, 40);
  noStroke();
  rect(533, 448, 220, 55, 12);
  fill(corBotao);
  stroke(0, 100, 30);
  strokeWeight(2);
  rect(530, 445, 220, 55, 12);
  fill(255);
  noStroke();
  textSize(18);
  text("🎮  JOGAR JOGO FINAL", 640, 472);

  // Botão JOGAR NOVAMENTE
  fill(0, 0, 0, 40);
  noStroke();
  rect(533, 518, 220, 50, 12);
  fill(corJogarNovamente);
  stroke(0, 100, 30);
  strokeWeight(2);
  rect(530, 515, 220, 50, 12);
  fill(255);
  noStroke();
  textSize(17);
  text("↺  JOGAR NOVAMENTE", 640, 540);

  noStroke();
}
