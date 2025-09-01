import 'models/Livros.dart'; // Importa a classe Livros que está no arquivo separado

// Classe responsável por manipular a lista de livros
class ConsoleLivros {
  
  // Lista inicial de livros (já com alguns exemplos cadastrados)
  List<Livros> livros = [
    Livros(1, "Dom Casmurro", "Machado de Assis", 256, DateTime(1899)),
    Livros(2, "O Senhor dos Anéis", "J. R. R. Tolkien", 1178, DateTime(1954)),
    Livros(3, "1984", "George Orwell", 328, DateTime(1949)),
    Livros(4, "Harry Potter e a Pedra Filosofal", "J. K. Rowling", 309, DateTime(1997)),
    Livros(5, "A Revolução dos Bichos", "George Orwell", 152, DateTime(1945)),
  ];
  
  // Método para adicionar um novo livro na lista
  void criarLivro(Livros livro) {
    livros.add(livro); // adiciona o livro à lista
    print("📚 Livro '${livro.titulo}' adicionado com sucesso!");
  }

  // Método para listar todos os livros cadastrados
  void listarLivros() {
    if (livros.isEmpty) { // Verifica se a lista está vazia
      print("Nenhum livro cadastrado.");
    } else {
      print("=== Lista de Livros ===");
      for (var livro in livros) { // Percorre todos os livros e imprime cada um
        print(livro);
      }
    }
  }

  // Método para atualizar os dados de um livro pelo ID
  void atualizarLivro(int id, {String? titulo, String? autor, int? paginas}) {
    for (var livro in livros) {
      if (livro.id == id) { // Se encontrou o livro com o ID desejado
        if (titulo != null) livro.titulo = titulo;   // Atualiza o título se foi informado
        if (autor != null) livro.autor = autor;      // Atualiza o autor se foi informado
        if (paginas != null) livro.paginas = paginas; // Atualiza o nº de páginas se foi informado
        print("✅ Livro atualizado: $livro");
        return; // Sai do método após atualizar
      }
    }
    // Caso não encontre o livro com o ID informado
    print("⚠️ Livro com id $id não encontrado.");
  }

  // Método para deletar um livro da lista pelo ID
  void deletarLivro(int id) {
    livros.removeWhere((livro) => livro.id == id); // Remove todos os livros que tenham esse ID
    print("🗑 Livro com id $id removido.");
  }
}
