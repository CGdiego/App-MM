// Feito por Gustavo Gomes

void jogo(){
  background(0);
  
  if (theoVivo) {
    desenha_target();
    if (dist(xd, yd, xt, yt) < 50) {
      theoVivo = false;
      tela = 13; // vai para a tela do certificado
    }
  }
  
  move_player();
  desenha_player(xd, yd, #4ACE04);
}

void desenha_target() {
  fill(255, 0, 0, 100);
  noStroke();
  circle(xt, yt, 50);
  image(theo, xt, yt, 60, 100);
  
  xt += 7;
  if (xt > width) {
    xt = 0;
    yt = random(height);
  }
}

void desenha_player(float x, float y, color cor) {
  fill(cor);
  noStroke();
  ellipse(x, y, 50, 50);
  image(dani, x, y, 80, 120);
}

void move_player() {
  if (keyPressed && key == CODED) {
    if (keyCode == UP)    yd -= 4;
    if (keyCode == DOWN)  yd += 4;
    if (keyCode == RIGHT) xd += 4;
    if (keyCode == LEFT)  xd -= 4;
  }
}
