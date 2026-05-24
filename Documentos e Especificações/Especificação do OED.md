**1. Finalidade Pedagógica**

Problema: Crianças entre 7 e 10 anos estão cada vez mais expostas a golpes digitais, especialmente via SMS e e-mail, e muitas vezes não conseguem perceber quando estão sendo manipuladas por técnicas de engenharia social como o phishing.

Objetivo: Ajudar o aluno a reconhecer os principais sinais de uma mensagem falsa, como links com erros de escrita, pedidos urgentes de dados pessoais e remetentes desconhecidos.

O que o estudante fará: Durante o jogo, o aluno vai receber mensagens simuladas e decidir se deve confiar nelas ou descartá-las e denunciá-las. A ideia é que ele aprenda na prática, contando com dicas de apoio em cada rodada para não se sentir perdido.

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

Sequência: O jogo é composto por 10 perguntas apresentadas de forma exploratória. Se o aluno errar qualquer uma delas, volta ao início e recomeça do zero, o que reforça a atenção em cada decisão tomada.

Feedback: Em cada tela de pergunta há uma dica visível para auxiliar o aluno na análise da mensagem. Ao errar, o jogo explica o motivo daquela mensagem ser um golpe, apontando o detalhe que deveria ter chamado atenção.

Recompensa: Ao responder as 10 perguntas corretamente, o aluno é levado a uma tela de vitória e desbloqueia um jogo bônus como recompensa por completar o desafio sem erros.

Tempo: Cada sessão deve durar entre 10 e 15 minutos, o que cabe bem numa aula ou num intervalo maior.

---

**5. Interação e Experiência (UX)**

Tipo de interação: O aluno clica ou toca em botões para tomar sua decisão em cada mensagem recebida.

Interface: O jogo começa com uma tela inicial animada, com música e personagens que introduzem o contexto de forma lúdica e convidativa. Em seguida, a tela simula um celular na vertical, parecida com a interface de um aplicativo de SMS ou WhatsApp, para que o ambiente seja familiar.

Gamificação: A estrutura de "acerte tudo ou recomece" cria tensão positiva e engajamento. A tela de vitória e o jogo bônus funcionam como motivação para que o aluno queira completar o desafio com atenção do início ao fim.

---

**6. Avaliação**

Verificação: A avaliação é quantitativa, baseada na sequência completa de acertos.

Critério de sucesso: Responder corretamente as 10 perguntas sem errar nenhuma.

Feedback final: A tela de vitória marca a conclusão do desafio e o acesso ao jogo bônus indica que o aluno demonstrou domínio suficiente para identificar os golpes apresentados.

---

**7. Tecnologia**

O jogo será desenvolvido em Processing (Java). Para organizar as mensagens, será usada uma ArrayList de objetos da classe Mensagem, contendo o texto, o tipo de golpe, a dica de apoio e a indicação se é fraude ou não. O estado do jogo será controlado por uma variável int tela, alternando entre tela inicial (0), jogo (1), feedback de erro e reinício (2), vitória (3) e jogo bônus (4). A música da tela inicial será reproduzida via Minim ou recurso equivalente disponível no Processing. Os balões de mensagem serão desenhados com rect() de cantos arredondados para imitar visualmente a interface de conversas de SMS.

---

**Pergunta-síntese:**
"Crianças de 7 a 10 anos aprendem a identificar phishing por meio de uma simulação de mensagens de texto com 10 perguntas sequenciais, contando com dicas em cada rodada e precisando acertar tudo sem errar para desbloquear a tela de vitória e um jogo bônus, evidenciando o aprendizado pela conclusão completa do desafio."