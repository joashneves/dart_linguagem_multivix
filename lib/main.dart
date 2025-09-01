// Importa a biblioteca dart:io para permitir leitura e escrita no console
import 'dart:io';

// Importa a classe Livros (modelo de dados)
import 'models/Livros.dart';

// Importa a classe ConsoleLivros (que contém o CRUD)
import 'console.dart';

void main() {
  // Cria um objeto da classe ConsoleLivros, responsável por gerenciar os livros
  var console = ConsoleLivros();

  // Variável booleana que controla se o programa continua rodando
  bool rodando = true;

  // Enquanto "rodando" for verdadeiro, o menu continuará aparecendo
  while (rodando) {
    // Exibe o menu principal
    print("\n=== MENU ===");
    print("1 - Listar livros");
    print("2 - Criar livro");
    print("3 - Atualizar livro");
    print("4 - Deletar livro");
    print("5 - Sair");

    // Pede para o usuário escolher uma opção
    stdout.write("Escolha uma opção: ");
    String? opcao = stdin.readLineSync(); // Lê a entrada do usuário

    // Estrutura de decisão baseada na opção escolhida
    switch (opcao) {
      case "1":
        // Chama o método que lista todos os livros
        console.listarLivros();
        break;

      case "2":
        // Coleta os dados para criar um novo livro
        stdout.write("Digite o id: ");
        int id = int.parse(stdin.readLineSync()!);

        stdout.write("Digite o título: ");
        String titulo = stdin.readLineSync()!;

        stdout.write("Digite o autor: ");
        String autor = stdin.readLineSync()!;

        stdout.write("Digite o número de páginas: ");
        int paginas = int.parse(stdin.readLineSync()!);

        stdout.write("Digite o ano de lançamento: ");
        int ano = int.parse(stdin.readLineSync()!);

        // Cria e adiciona o livro na lista
        console.criarLivro(Livros(id, titulo, autor, paginas, DateTime(ano)));
        break;

      case "3":
        // Atualizar dados de um livro existente
        stdout.write("Digite o id do livro a atualizar: ");
        int id = int.parse(stdin.readLineSync()!);

        // Novo título
        stdout.write("Novo título (ou Enter para manter): ");
        String? novoTitulo = stdin.readLineSync();
        if (novoTitulo != null && novoTitulo.isEmpty) novoTitulo = null;

        // Novo autor
        stdout.write("Novo autor (ou Enter para manter): ");
        String? novoAutor = stdin.readLineSync();
        if (novoAutor != null && novoAutor.isEmpty) novoAutor = null;

        // Novas páginas
        stdout.write("Novo número de páginas (ou Enter para manter): ");
        String? paginasStr = stdin.readLineSync();
        int? novasPaginas = paginasStr != null && paginasStr.isNotEmpty
            ? int.parse(paginasStr)
            : null;

        // Chama a atualização no console
        console.atualizarLivro(
          id,
          titulo: novoTitulo,
          autor: novoAutor,
          paginas: novasPaginas,
        );
        break;

      case "4":
        // Deletar livro pelo id
        stdout.write("Digite o id do livro a deletar: ");
        int id = int.parse(stdin.readLineSync()!);
        console.deletarLivro(id);
        break;

      case "5":
        // Sai do programa
        print("👋 Encerrando o programa...");
        rodando = false;
        break;

      default:
        // Caso o usuário digite algo inválido
        print("⚠️ Opção inválida, tente novamente.");
    }
  }
}
