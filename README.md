# 📚 Projeto CRUD de Livros

## 📝 Descrição
Um sistema de gerenciamento de livros (CRUD) originalmente desenvolvido para rodar **no console** com Dart.  
⚡ **Agora foi atualizado para rodar em um aplicativo Flutter**, trazendo interface gráfica para cadastro, listagem e manipulação dos livros.

---

## 🚀 Alterações Principais
- 🔄 **Antes:** Todo o fluxo era baseado no **console**, com menus de texto.  
- 🎨 **Agora:** O CRUD foi migrado para um **app Flutter**, mantendo as mesmas funções, mas com **telas interativas**:
  - Tela de **cadastro** de livros (`MyCreateScreen`).
  - Tela de **listagem** dos livros (`MyDataScreen`), agora **com exclusão de itens** usando ícone de lixeira e `setState()` para atualizar a lista dinamicamente.
- 🗂 A lógica do console (`ConsoleLivros`) foi mantida como **repositório central** para manipulação dos dados.
- 🏷️ **Atividades separadas por branch**: cada atividade 1, 2 e 3 foi desenvolvida em **branches diferentes** para melhor organização.

---

## 📂 Estrutura do Projeto
- `lib/models/Livros.dart`: classe `Livros`, que representa um livro.
- `lib/console.dart`: classe `ConsoleLivros`, que implementa o CRUD (Create, Read, Update, Delete).
- `lib/main.dart`: arquivo principal que inicia o aplicativo Flutter.
- `lib/MyCreatedScreen.dart`: tela para cadastro de novos livros.
- `lib/MyDataScreen.dart`: tela para listagem e exclusão dos livros cadastrados.

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
3. ✏️ Atualizar dados de um livro existente pelo id.
4. ❌ Deletar itens da lista dinamicamente com feedback visual (SnackBar) ao usuário.

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

## 📸 Exemplo de funcionamento

![gif_datela](./midia/atualizar.gif)
![gif_datela](./midia/atividade_3%20(1).gif)

> O GIF demonstra a listagem de livros, cadastro e exclusão com atualização imediata da lista.
