**1. Finalidade Pedagógica**

Problema: Crianças entre 7 e 10 anos estão cada vez mais expostas a golpes digitais, especialmente via SMS e e-mail, e muitas vezes não conseguem perceber quando estão sendo manipuladas por técnicas de engenharia social como o phishing.

Objetivo: Ajudar o aluno a reconhecer os principais sinais de uma mensagem falsa, como links com erros de escrita, pedidos urgentes de dados pessoais e remetentes desconhecidos.

O que o estudante fará: Durante o jogo, o aluno vai receber mensagens simuladas e decidir se deve confiar nelas ou descartá-las e denunciá-las. A ideia é que ele aprenda na prática, errando e recebendo explicações na hora.

Uso: O jogo serve como atividade de prática e fixação de conceitos de cidadania digital, podendo ser usado tanto em aula quanto de forma autônoma.

---

**2. Público-alvo**

Faixa etária e nível: Crianças de 7 a 10 anos, que estão justamente na fase em que ganham o primeiro celular e começam a usar aplicativos de mensagem.

Conhecimentos prévios: É preciso saber ler e ter uma noção básica de como funciona a interface de um smartphone. Nada muito técnico.

Contexto de uso: O jogo pode ser jogado sozinho ou como atividade de laboratório de informática na escola, com ou sem a presença do professor.

---

**3. Conteúdo**

Tema: Cibersegurança, com foco em phishing.

Recorte: O jogo aborda golpes que crianças realmente encontram no dia a dia, como falsos sorteios, mensagens sobre problemas em conta de jogo, promoções boas demais para ser verdade e pedidos de ajuda de "familiares" em situação de urgência.

Conceitos centrais: URL suspeita, remetente desconhecido e solicitações de dados pessoais. Os demais elementos aparecem como contexto para facilitar o entendimento.

---

**4. Estrutura Didática**

Sequência: O jogo funciona de forma exploratória. As mensagens aparecem em ordem aleatória para que o aluno não consiga decorar a sequência.

Feedback: Imediato. Quando o aluno erra, o jogo explica o motivo daquela mensagem ser um golpe, apontando exatamente o detalhe que deveria ter chamado atenção, como um link escrito de forma estranha ou um pedido de senha fora de contexto.

Tempo: Cada sessão deve durar entre 10 e 15 minutos, o que cabe bem numa aula ou num intervalo maior.

---

**5. Interação e Experiência (UX)**

Tipo de interação: O aluno clica ou toca em botões para tomar sua decisão em cada mensagem recebida.

Interface: A tela simula um celular na vertical, parecida com a interface de um aplicativo de SMS ou WhatsApp, para que o contexto seja familiar.

Gamificação: Existe um sistema de pontuação visível e uma barra de progresso para que o aluno acompanhe seu desempenho. Ao chegar a 20 pontos, ele recebe uma medalha virtual, como a de "Detetive Digital".

---

**6. Avaliação**

Verificação: A avaliação é quantitativa, baseada no número de acertos.

Critério de sucesso: Atingir 20 acertos.

Feedback final: Ao terminar, o jogo mostra um resumo com os tipos de golpe em que o aluno mais errou. Assim ele sai sabendo exatamente onde precisa prestar mais atenção na vida real, o que torna o aprendizado mais útil do que só ver a pontuação final.

---

**7. Tecnologia**

O jogo será desenvolvido em Processing (Java). Para organizar as mensagens, será usada uma ArrayList de objetos da classe Mensagem, contendo o texto, o tipo de golpe e a indicação se é fraude ou não. O estado do jogo será controlado por uma variável int tela, alternando entre menu (0), jogo (1) e feedback/game over (2). Os balões de mensagem serão desenhados com rect() de cantos arredondados para imitar visualmente a interface de conversas de SMS.

---

**Pergunta-síntese:**
"Crianças de 7 a 10 anos aprendem a identificar phishing por meio de uma simulação de mensagens de texto, jogando por cerca de 10 minutos com interação de tomada de decisão, evidenciando o aprendizado ao atingir 20 acertos no placar final."