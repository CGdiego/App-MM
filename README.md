# 🛜 NUWS — Não Use Wi-fi de Shopping

> *Um jogo educativo sobre segurança digital feito em Processing, pra criança aprender que nem todo Wi-Fi aberto é de confiança, e nem toda senha precisa sair da boca.*

---

## 🎮 O que é isso?

O **NUWS** é um joguinho de perguntas e respostas sobre segurança digital, desenvolvido como projeto da disciplina de **Experiência Criativa: Explorando Computação e Inteligência Artificial** na **Pontifícia Universidade Católica do Paraná (PUCPR)**. A ideia é simples: crianças entre 7 e 10 anos respondem perguntas sobre situações do dia a dia na internet — compartilhar senha, clicar em links esquisitos, usar Wi-Fi de shopping — e aprendem, na prática, o que é seguro e o que não é.

Não tem nada de moralismo chato aqui. Tem personagens pixelados malucos, uma trilha sonora do Smash Bros., um urso que aparece pra dar dica quando você tá perdido, e um jogo bônus onde as coisas ficam pessoais.

---

## 🕹️ Como funciona o jogo

1. Você cai na **tela inicial** com uma galeria de personagens e uma música animada tocando
2. Clica em **JOGAR**
3. O jogo sorteia **10 perguntas** de um pool de 30 sobre segurança digital — tipo *"Você deve compartilhar sua senha com estranhos na internet?"*
4. Uma barra de progresso mostra quantas perguntas já foram respondidas
5. Você escolhe **SIM** ou **NÃO**
6. Se travar, clica em **DICA** — um personagem aparece no canto com um conselho (e a contagem de dicas usadas é registrada)
7. Acertou tudo? Vitória — e a Giorno's Theme toca, mostrando quantas dicas você usou. Errou? Recomeça do zero, com um novo sorteio de perguntas

Sem segundas chances. Atenção do início ao fim.

---

## 🎁 Jogo Bônus + Certificado

Quem responde as 10 perguntas sorteadas sem errar desbloqueia o **jogo bônus**: um mini-game onde você controla o **Jotaro** com as setas do teclado e precisa alcançar o **Pucci**, que atravessa a tela continuamente.

Ao alcançar o alvo, o jogador é levado para a **tela de certificado**, onde aparece um campo para digitar o e-mail. Aqui tem uma pegadinha: o certo é **NÃO** preencher o e-mail e clicar em "Não Colocar E-mail" — afinal, o jogo inteiro foi sobre não compartilhar dados pessoais com qualquer site. Quem realmente aprendeu a lição não cai na "armadilha" de digitar o e-mail. De qualquer forma, o jogador segue para visualizar/baixar o **Certificado de Aluno Consciente Digital**, com efeitos sonoros de acerto e erro ao longo do jogo.

---

## 👾 Os personagens

A tela inicial tem seis personagens desenhados à mão com primitivas do Processing — sem imagem externa. Cada pergunta tem um personagem diferente aparecendo como guia de dicas:

| Personagem | Origem |
|---|---|
| 🟩 Creeper | Minecraft |
| 🔵 Criatura Azul | Original do projeto |
| 🍄 Mario | Super Mario Bros. |
| ⛏️ Steve | Minecraft |
| 🤖 Robô | Reddit |
| 🐻 Freddy | Five Nights at Freddy's |

No jogo bônus, dois personagens entram com sprites externos (imagens, não primitivas):

| Personagem | Papel |
|---|---|
| 🟣 Jotaro (JoJo's Bizarre Adventure) | Jogador, controlado pelas setas |
| ⚪ Pucci (JoJo's Bizarre Adventure) | Alvo a ser alcançado |

---

## 📋 As perguntas

O jogo possui um **pool de 30 perguntas** (`p01` a `p30`), das quais **10 são sorteadas aleatoriamente** a cada partida — definindo a ordem e o conjunto de perguntas daquela rodada. Um gabarito interno (`gabarito[]`) define a resposta correta (SIM ou NÃO) de cada uma. Abaixo, um exemplo do formato:

| # | Pergunta | Resposta certa |
|---|---|---|
| 1 | Você deve compartilhar sua senha com estranhos na internet? | ❌ NÃO |

*(as demais 29 perguntas seguem o mesmo padrão, cobrindo temas como senhas fortes, phishing, golpes de prêmios, verificação em duas etapas, Wi-Fi público, antivírus, tempo de tela, entre outros)*

---

## 🛠️ Tecnologias

- **[Processing 4](https://processing.org/)** (Java) — ambiente de desenvolvimento
- **[Minim](https://code.compartmental.net/minim/)** — biblioteca de áudio do Processing
- **Java** — linguagem base

---

## 📁 Estrutura do projeto

```
App-MM/
├── App-MM/
│   ├── data/
│   │   ├── acerto.wav            # Efeito sonoro de acerto
│   │   ├── erro.wav              # Efeito sonoro de erro
│   │   ├── giorno_theme.mp3      # Trilha da tela de vitória
│   │   └── smash_brawl.mp3       # Trilha da tela inicial e perguntas
│   ├── certificado_maneiro.jpeg  # Imagem do certificado final
│   ├── jogo.pde                  # Jogo bônus (Jotaro vs Pucci)
│   ├── jotaro.png                # Sprite do jogador (jogo bônus)
│   ├── main.pde                  # Setup, draw, mousePressed, sorteio de perguntas, layout das perguntas
│   ├── p01.pde ... p30.pde       # Pool de 30 perguntas (10 sorteadas por partida)
│   ├── putin.png                 # Sprite do alvo / Pucci (jogo bônus)
│   ├── sketch.properties
│   ├── telaCertificado.pde       # Tela de coleta de e-mail e exibição do certificado
│   ├── telaFinal.pde             # Tela de vitória com contagem de dicas usadas
│   └── telaInicial.pde           # Tela inicial, personagens decorativos e tela de créditos
├── Documentos e Especificações/
│   ├── DocProjetoSMM.docx
│   └── Especificação do OED.md
├── Extra/
│   └── NoAI/                     # Versão original do projeto, sem o polimento feito por IA
│       ├── data/
│       ├── ... (versão com Dani/Theo, 10 perguntas, sem certificado)
│       └── README.md
├── libraries/                    # Bibliotecas do Processing (minim, sound, video)
├── .gitignore
├── LICENSE
└── README.md
```


---

## ▶️ Como rodar

1. Instale o **[Processing 4](https://processing.org/download)**
2. Abra o Processing e instale a biblioteca **Minim**:
   - `Sketch` → `Import Library` → `Manage Libraries` → pesquise "Minim" → instale
3. Clone o repositório:
   ```bash
   git clone https://github.com/CGdiego/App-MM.git
   ```
4. Abra o arquivo `main.pde` dentro da pasta `App-MM/App-MM/` no Processing
5. Clique em ▶️ e jogue

---

## 👨‍💻 Equipe

Projeto feito a seis mãos (e mais alguns dedos) por alunos da PUCPR:

| Integrante | Contribuições principais |
|---|---|
| **Daniel Godri Neto** | Perguntas e interface |
| **Diego Soares** | Arquitetura principal, tela inicial, áudio, perguntas, certificado |
| **Gustavo Gomes** | Perguntas, jogo bônus |
| **João Victor Meiners Barboza** | Perguntas |
| **Lucas Maximiano** | Tela inicial, perguntas |
| **Mateus Weiss** | Perguntas |

---

## ✅ O que foi feito

- [x] Tela inicial animada com música e personagens
- [x] Pool de 30 perguntas, 10 sorteadas por partida, com botões SIM/NÃO/DICA
- [x] Sistema de dicas com personagens diferentes por pergunta
- [x] Barra de progresso e contagem de dicas usadas
- [x] Tela de vitória com Giorno's Theme e resumo de desempenho
- [x] Jogo bônus (Jotaro vs Pucci) com efeitos sonoros de acerto/erro
- [x] Tela de certificado com captura de e-mail e download do certificado

---

## 📚 Contexto acadêmico

Desenvolvido para a disciplina de **Experiência Criativa: Explorando Computação e Inteligência Artificial** — **PUCPR, 2026/1**.

---

<p align="center">
  Feito com muita paciência e uma dose de Giorno's Theme — PUCPR 2026
</p>
