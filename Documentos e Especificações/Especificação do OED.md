**1. Finalidade Pedagógica**

Problema: Crianças entre 7 e 10 anos estão cada vez mais expostas a riscos digitais — compartilhamento de senhas e dados pessoais, golpes de phishing, Wi-Fi público inseguro, contato com estranhos online — e muitas vezes não conseguem perceber quando uma situação é perigosa.

Objetivo: Ajudar o aluno a reconhecer boas e más práticas de segurança digital no dia a dia: proteção de senhas, cuidado com mensagens e links suspeitos, proteção de dados pessoais e comportamento seguro online.

O que o estudante fará: Durante o jogo, o aluno responde a uma sequência de 10 perguntas de SIM/NÃO sobre situações do cotidiano digital, sorteadas de um pool maior de 30. Pode pedir uma dica em cada rodada, e um personagem aparece com um conselho. Ao final, se acertar tudo, joga um mini-game de recompensa e recebe um certificado — com uma pegadinha final que testa se ele realmente aprendeu sobre proteção de dados.

Uso: O jogo serve como atividade de prática e fixação de conceitos de cidadania digital, podendo ser usado tanto em aula quanto de forma autônoma.

---

**2. Público-alvo**

Faixa etária e nível: Crianças de 7 a 10 anos, que estão justamente na fase em que ganham o primeiro celular e começam a usar aplicativos de mensagem.

Conhecimentos prévios: É preciso saber ler e ter uma noção básica de como funciona a interface de um computador (mouse e teclado). Nada muito técnico.

Contexto de uso: O jogo pode ser jogado sozinho ou como atividade de laboratório de informática na escola, com ou sem a presença do professor.

---

**3. Conteúdo**

Tema: Cibersegurança e cidadania digital, com foco em proteção de senhas e dados pessoais, phishing, Wi-Fi público e comportamento seguro online.

Recorte: O jogo aborda situações que crianças realmente encontram no dia a dia, como: compartilhar a senha do Wi-Fi ou de contas com estranhos, clicar em links de prêmios e sorteios suspeitos, aceitar pedidos de amizade de desconhecidos, digitar senhas em redes Wi-Fi públicas (como as de shoppings — o que dá nome ao jogo), e a importância de avisar um adulto em situações de risco.

Conceitos centrais: proteção de senhas, cuidado com links e remetentes desconhecidos, proteção de dados pessoais (incluindo o próprio e-mail) e comportamento seguro online. Os demais elementos — como senhas fortes, verificação em duas etapas, antivírus e tempo de tela — aparecem como contexto complementar.

---

**4. Estrutura Didática**

Sequência: O jogo possui um pool de 30 perguntas de verdadeiro/falso (SIM/NÃO). A cada partida, 10 são sorteadas aleatoriamente e apresentadas em sequência, com uma barra de progresso indicando o avanço. Se o aluno errar qualquer uma delas, volta para a tela inicial e, na tentativa seguinte, um novo conjunto de 10 perguntas é sorteado — o que reforça a atenção em cada decisão tomada, sem repetir sempre a mesma sequência.

Feedback: Em cada pergunta há um botão de DICA que exibe um personagem com um conselho de apoio, ajudando o aluno a refletir sobre a situação antes de responder. A contagem de dicas usadas é registrada e exibida ao final.

Recompensa: Ao responder as 10 perguntas sorteadas corretamente, o aluno é levado a uma tela de vitória com um resumo de desempenho (baseado no número de dicas usadas) e desbloqueia um jogo bônus como recompensa por completar o desafio sem erros.

Pegadinha final (avaliação prática): Após o jogo bônus, o aluno chega a uma tela onde pode digitar um e-mail para "receber" o certificado. A ação correta é NÃO preencher esse campo e escolher "Não Colocar E-mail" — repetindo, na prática, o que foi ensinado sobre não compartilhar dados pessoais. Em ambos os casos, o aluno acessa a tela com o Certificado de Aluno Consciente Digital.

Tempo: Cada sessão (quiz + jogo bônus + certificado) deve durar entre 10 e 15 minutos, o que cabe bem numa aula ou num intervalo maior.

---

**5. Interação e Experiência (UX)**

Tipo de interação: O aluno usa o mouse para clicar nos botões SIM, NÃO e DICA em cada pergunta, e as setas do teclado para controlar o personagem no jogo bônus.

Interface: O jogo começa com uma tela inicial animada, com música (Super Smash Bros. Brawl) e seis personagens pixelados que introduzem o contexto de forma lúdica e convidativa. As perguntas são exibidas em um painel central com cabeçalho, barra de progresso e botões de resposta bem destacados. O jogo bônus é uma tela simples no estilo "alcance o alvo", controlada pelas setas.

Gamificação: A estrutura de "acerte tudo ou recomece (com novas perguntas)" cria tensão positiva e engajamento. A tela de vitória, o jogo bônus e o certificado funcionam como motivação para que o aluno queira completar o desafio com atenção do início ao fim — e a pegadinha do e-mail funciona como um teste final e inesperado do que foi aprendido.

---

**6. Avaliação**

Verificação: A avaliação é quantitativa, baseada na sequência completa de acertos nas 10 perguntas sorteadas, e qualitativa, baseada na decisão tomada na tela de certificado (preencher ou não o e-mail).

Critério de sucesso: Responder corretamente as 10 perguntas sorteadas sem errar nenhuma, e optar por "Não Colocar E-mail" na tela de certificado.

Feedback final: A tela de vitória marca a conclusão do quiz e libera o acesso ao jogo bônus. A tela final, com o Certificado de Aluno Consciente Digital, marca a conclusão completa do desafio — e a escolha feita na tela de e-mail serve como indicador adicional (não bloqueante) de que o aluno internalizou o cuidado com dados pessoais.

---

**7. Tecnologia**

O jogo é desenvolvido em Processing (Java), com janela de 1366×768 pixels. Cada uma das 30 perguntas é implementada como uma função pXX(), chamada por chamarPerguntaAtual() conforme o sorteio realizado por sortearPerguntas() (embaralhamento Fisher-Yates de um pool de 30 índices, dos quais os 10 primeiros formam a sequência da partida). Um array gabarito[] define a resposta correta (SIM ou NÃO) de cada uma das 30 perguntas.

O estado do jogo é controlado por uma variável int tela, alternando entre: tela inicial (0), perguntas (1), tela de vitória (11), jogo bônus (12), tela de certificado/e-mail (13), tela de ver certificado (14) e tela de créditos (15).

A música é reproduzida via Minim, com a faixa smash_brawl.mp3 na tela inicial e nas perguntas, trocando para giorno_theme.mp3 na tela de vitória. O jogo bônus usa os sprites jotaro.png (jogador) e putin.png (alvo), além dos efeitos sonoros acerto.wav e erro.wav. O certificado final é a imagem certificado_maneiro.jpeg, exibida em tela cheia.

---

**Pergunta-síntese:**
"Crianças de 7 a 10 anos aprendem boas práticas de segurança digital por meio de um quiz com 10 perguntas de SIM/NÃO sorteadas de um pool de 30, contando com dicas em cada rodada e precisando acertar tudo — sem repetir sempre a mesma sequência — para desbloquear a tela de vitória e um jogo bônus, sendo recompensadas com um certificado cuja etapa final de coleta de e-mail funciona como um teste prático de que a lição sobre proteção de dados pessoais foi realmente aprendida."
