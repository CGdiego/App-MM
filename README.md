# 🛜 NUWS — Não Use Wi-fi de Shopping

> *Um jogo educativo sobre segurança digital feito em Processing, pra criança aprender que nem todo Wi-Fi aberto é de confiança, e nem toda senha precisa sair da boca.*

---

## 🎮 O que é isso?

O **NUWS** é um joguinho de perguntas e respostas sobre segurança digital, desenvolvido como projeto da disciplina de **Experiência Criativa: Explorando Computação e Inteligência Artificial** na **Pontifícia Universidade Católica do Paraná (PUCPR)**. A ideia é simples: crianças entre 7 e 10 anos respondem perguntas sobre situações do dia a dia na internet — compartilhar senha, clicar em links esquisitos, usar Wi-Fi de shopping — e aprendem, na prática, o que é seguro e o que não é.

Não tem nada de moralismo chato aqui. Tem personagens pixelados malucos, uma trilha sonora do Smash Bros. e um urso que aparece pra dar dica quando você tá perdido.

---

## 🕹️ Como funciona o jogo

1. Você cai na **tela inicial** com uma galeria de personagens e uma música animada tocando
2. Clica em **JOGAR**
3. Aparece uma pergunta sobre segurança digital — tipo *"Você deve compartilhar sua senha com estranhos na internet?"*
4. Você escolhe **SIM** ou **NÃO**
5. Se travar, clica em **DICA** — o Freddy aparece no canto com um conselho
6. Acertou tudo? Vitória. Errou? Recomeça do zero

Sem segundas chances. Atenção do início ao fim.

---

## 👾 Os personagens

Eles ficam na tela inicial só pra animar o ambiente, e um deles aparece como "guia de dicas" nas perguntas. Todos desenhados na mão com primitivas do Processing, sem imagem externa nenhuma:

| Personagem | Origem |
|---|---|
| 🟩 Creeper | Minecraft |
| 🔵 Criatura Azul | Original do projeto |
| 🍄 Mario | Super Mario Bros. |
| ⛏️ Steve | Minecraft |
| 🤖 Robô | Reddit |
| 🐻 Freddy | Five Nights at Freddy's |

---

## 🛠️ Tecnologias

- **[Processing 4](https://processing.org/)** (Java) — ambiente de desenvolvimento
- **[Minim](https://code.compartmental.net/minim/)** — biblioteca de áudio do Processing
- **Java** — linguagem base

Sem frameworks externos, sem assets baixados. Tudo que você vê na tela foi desenhado com `rect()`, `ellipse()`, `arc()` e muita paciência.

---

## 📁 Estrutura do projeto

```
NUWS/
├── main.pde              # Setup, draw, mousePressed — o esqueleto do jogo
├── telaInicial.pde       # Tela inicial com os personagens e o botão JOGAR
├── p01.pde               # Pergunta 1 (e assim vai: p02, p03...)
├── data/
│   └── smash_brawl.mp3   # Trilha sonora da tela inicial
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
4. Abra o arquivo `main.pde` no Processing
5. Clique em ▶️ e jogue

---

## 👨‍💻 Equipe

Projeto feito a seis mãos (e mais alguns dedos) por alunos da FACOM/UFU:

- **Daniel Godri Neto**
- **Diego Soares**
- **Gustavo Gomes**
- **João Victor Meiners Barboza**
- **Lucas Maximiano**
- **Mateus Weiss**

---

## 🚧 Status do projeto

O jogo ainda está em desenvolvimento ativo. O que já funciona:

- [x] Tela inicial animada com música e personagens
- [x] Botão JOGAR com hover
- [x] Primeira pergunta com botões SIM/NÃO/DICA
- [x] Sistema de dicas com personagem e balão de texto
- [ ] Perguntas 2 a 10
- [ ] Tela de acerto / erro com feedback explicativo
- [ ] Tela de vitória
- [ ] Jogo bônus

---

## 📚 Contexto acadêmico

Esse projeto foi desenvolvido para a disciplina de **Experiência Criativa: Explorando Computação e Inteligência Artificial** do curso de **Ciência da Computação** da **Pontifícia Universidade Católica do Paraná (PUCPR)**, com o objetivo de criar uma aplicação multimídia com fins educativos.
