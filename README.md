# Projeto Console CRUD de Livros

## Descrição
Este projeto em Dart simula um sistema de gerenciamento de livros, executando apenas no console. 
Ele permite criar, listar, atualizar e deletar livros, funcionando como um CRUD básico.

## Estrutura do Projeto
- `lib/models/Livros.dart`: contém a classe `Livros`, que representa um livro.
- `lib/console.dart`: contém a classe `ConsoleLivros`, que implementa o CRUD (Create, Read, Update, Delete).
- `lib/main.dart`: arquivo principal que executa o programa e exibe um menu interativo no console.

## Estrutura de Dados
A classe `Livros` possui os seguintes atributos:
- `id` (int): identificador único do livro.
- `titulo` (String): título do livro.
- `autor` (String): nome do autor.
- `paginas` (int): número de páginas do livro.
- `lancamento` (DateTime): ano de lançamento do livro.

## Funcionalidades
O sistema permite:
1. Listar todos os livros cadastrados.
2. Criar um novo livro, informando id, título, autor, número de páginas e ano de lançamento.
3. Atualizar dados de um livro existente pelo id (título, autor ou páginas).
4. Deletar um livro pelo id.
5. Sair do programa.

## Como testar
1. Abra o terminal na pasta do projeto.
2. Execute o comando:
```bash
dart run lib/main.dart
```

# Exemplo de saida

```bash
=== MENU ===
1 - Listar livros
2 - Criar livro
3 - Atualizar livro
4 - Deletar livro
5 - Sair
Escolha uma opção: 1

=== Lista de Livros ===
Livro{id: 1, título: Dom Casmurro, autor: Machado de Assis, páginas: 256, lançamento: 1899}
Livro{id: 2, título: O Senhor dos Anéis, autor: J. R. R. Tolkien, páginas: 1178, lançamento: 1954}
...
