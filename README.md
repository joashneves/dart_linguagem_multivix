# 📚 Projeto CRUD de Livros

## 📝 Descrição
Um sistema de gerenciamento de livros (CRUD) originalmente desenvolvido para rodar **no console** com Dart.  
⚡ **Agora foi atualizado para rodar em um aplicativo Flutter**, trazendo interface gráfica para cadastro e listagem dos livros.

---

## 🚀 Alterações Principais
- 🔄 **Antes:** Todo o fluxo era baseado no **console**, com menus de texto.  
- 🎨 **Agora:** O CRUD foi migrado para um **app Flutter**, mantendo as mesmas funções, mas com **telas interativas**:
  - Tela de **cadastro** de livros (`MyCreateScreen`).
  - Tela de **listagem** dos livros (`MyDataScreen`).  
- 🗂 A lógica do console (`ConsoleLivros`) foi mantida como **repositório central** para manipulação dos dados.

---

## 📂 Estrutura do Projeto
- `lib/models/Livros.dart`: classe `Livros`, que representa um livro.
- `lib/console.dart`: classe `ConsoleLivros`, que implementa o CRUD (Create, Read, Update, Delete).
- `lib/main.dart`: arquivo principal que inicia o aplicativo Flutter.
- `lib/MyCreatedScreen.dart`: tela para cadastro de novos livros.
- `lib/MyDataScreen.dart`: tela para listagem dos livros cadastrados.

---

## 🏗 Estrutura de Dados
A classe `Livros` possui os seguintes atributos:
- `id` (int): identificador único do livro.
- `titulo` (String): título do livro.
- `autor` (String): nome do autor.
- `paginas` (int): número de páginas.
- `lancamento` (DateTime): ano de lançamento.

---

## ✅ Funcionalidades
O sistema permite:
1. 📖 Listar todos os livros cadastrados.
2. ➕ Criar um novo livro (id, título, autor, páginas, ano de lançamento).

---
## ▶️ Como executar
1. Instale as dependências do Flutter:
   ```bash
   flutter pub get
   ```
2. Execute o aplicativo:
   ```bash
   flutter run
   ```
---

## 📸 Exemplo 

![gif_datela](./midia/atividade_2.gif)