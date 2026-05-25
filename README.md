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
3. Aparece uma pergunta sobre segurança digital — tipo *"Você deve compartilhar sua senha com estranhos na internet?"*
4. Você escolhe **SIM** ou **NÃO**
5. Se travar, clica em **DICA** — um personagem aparece no canto com um conselho
6. Acertou tudo? Vitória — e a Giorno's Theme toca. Errou? Recomeça do zero

Sem segundas chances. Atenção do início ao fim.

---

## 🎁 Jogo Bônus

Quem responde as 10 perguntas sem errar desbloqueia o jogo bônus: um mini-game onde você controla o **Dani** (estilo Mii, camisa listrada, óculos laranja) com as setas do teclado e precisa alcançar o **Theo** (estilo Mii, boné e roupa roxa) que corre pela tela tentando escapar.

---

## 👾 Os personagens

A tela inicial tem seis personagens desenhados à mão com primitivas do Processing — sem imagem externa. Cada pergunta tem um personagem diferente aparecendo como guia de dicas:

| Personagem | Origem | Aparece como dica em |
|---|---|---|
| 🟩 Creeper | Minecraft | P3, P4 |
| 🔵 Criatura Azul | Original do projeto | P7 |
| 🍄 Mario | Super Mario Bros. | P2 |
| ⛏️ Steve | Minecraft | P6, P9 |
| 🤖 Robô | Reddit | P5, P10 |
| 🐻 Freddy | Five Nights at Freddy's | P1, P8 |

---

## 📋 As 10 perguntas

| # | Pergunta | Resposta certa |
|---|---|---|
| 1 | Você deve compartilhar sua senha com estranhos? | ❌ NÃO |
| 2 | Você deve clicar em links enviados por desconhecidos? | ❌ NÃO |
| 3 | Se alguém pedir o número do cartão do seu pai, você passa? | ❌ NÃO |
| 4 | Você deve avisar um adulto se receber mensagem estranha? | ✅ SIM |
| 5 | Você deve aceitar amizade de qualquer pessoa online? | ❌ NÃO |
| 6 | Você deve usar senhas fortes na internet? | ✅ SIM |
| 7 | Você deve compartilhar seu endereço com estranhos? | ❌ NÃO |
| 8 | Você deve sair de contas públicas depois de usar? | ✅ SIM |
| 9 | Você deve clicar em links estranhos de desconhecidos? | ❌ NÃO |
| 10 | É importante usar senhas difíceis para proteger suas contas? | ✅ SIM |

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
│   ├── main.pde              # Setup, draw, mousePressed — o esqueleto do jogo
│   ├── telaInicial.pde       # Tela inicial com os personagens e o botão JOGAR
│   ├── telaFinal.pde         # Tela de vitória com contagem de dicas usadas
│   ├── p01.pde               # Pergunta 1
│   ├── p02.pde               # Pergunta 2
│   ├── ...                   # p03 até p10
│   ├── jogo.pde              # Jogo bônus (Dani vs Theo)
│   └── data/
│       ├── smash_brawl.mp3   # Trilha da tela inicial e perguntas
│       ├── giorno_theme.mp3  # Trilha da tela de vitória
│       ├── dani.png          # Sprite do jogador (estilo Mii)
│       └── theo.png          # Sprite do inimigo (estilo Mii)
├── Documentos e Especificações/
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
| **Diego Soares** | Arquitetura principal, tela inicial, áudio, perguntas |
| **Gustavo Gomes** | Perguntas, jogo bônus |
| **João Victor Meiners Barboza** | Perguntas |
| **Lucas Maximiano** | Tela inicial, perguntas |
| **Mateus Weiss** | Perguntas |

---

## ✅ O que foi feito

- [x] Tela inicial animada com música e personagens
- [x] 10 perguntas com botões SIM/NÃO/DICA
- [x] Sistema de dicas com personagens diferentes por pergunta
- [x] Contagem de dicas usadas
- [x] Tela de vitória com Giorno's Theme
- [x] Jogo bônus (Dani vs Theo)

---

## 📚 Contexto acadêmico

Desenvolvido para a disciplina de **Experiência Criativa: Explorando Computação e Inteligência Artificial** — **PUCPR, 2026/1**.

---

<p align="center">
  Feito com muita paciência e uma dose de Giorno's Theme — PUCPR 2026
</p>
