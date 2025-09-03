import 'models/Livros.dart';

// Classe responsável por manipular a lista de livros
class ConsoleLivros {
  // 🔹 Cria uma instância única (singleton)
  static final ConsoleLivros _instance = ConsoleLivros._internal();
  factory ConsoleLivros() => _instance;

  // 🔹 Construtor privado (só usado internamente)
  ConsoleLivros._internal();

  // Lista inicial de livros
  final List<Livros> livros = [
    Livros(1, "Dom Casmurro", "Machado de Assis", 256, DateTime(1899)),
    Livros(2, "O Senhor dos Anéis", "J. R. R. Tolkien", 1178, DateTime(1954)),
    Livros(3, "1984", "George Orwell", 328, DateTime(1949)),
    Livros(4, "Dom Casmurro", "Machado de Assis", 256, DateTime(1899)),
    Livros(5, "O Guarani", "José de Alencar", 352, DateTime(1857)),
    Livros(6, "Memórias Póstumas de Brás Cubas","Machado de Assis", 368,  DateTime(1881),),
    Livros(7, "Capitães da Areia", "Jorge Amado", 256, DateTime(1937)),
    Livros(8, "O Cortiço", "Aluísio Azevedo", 400, DateTime(1890)),
    Livros(9, "A Revolução dos Bichos", "George Orwell", 152, DateTime(1945)),
  ];

  // Criar livro
  criarLivro(Livros livro) {
    livros.add(livro);
    print("📚 Livro '${livro.titulo}' adicionado com sucesso!");
  }

  // Listar livros
  List<Livros> listarLivros() {
    return livros;
  }

  // Atualizar livro
  void atualizarLivro(int id, {String? titulo, String? autor, int? paginas}) {
    for (var livro in livros) {
      if (livro.id == id) {
        if (titulo != null) livro.titulo = titulo;
        if (autor != null) livro.autor = autor;
        if (paginas != null) livro.paginas = paginas;
        print("✅ Livro atualizado: $livro");
        return;
      }
    }
    print("⚠️ Livro com id $id não encontrado.");
  }

  // Deletar livro
  void deletarLivro(int id) {
    livros.removeWhere((livro) => livro.id == id);
    print("🗑 Livro com id $id removido.");
  }
}
