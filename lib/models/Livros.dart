// Classe que representa um livro
class Livros {
  int id;           // Identificador único do livro
  String titulo;    // Título do livro
  String autor;     // Nome do autor
  int paginas;      // Número de páginas do livro
  DateTime lancamento; // Data de lançamento do livro

  // Construtor que inicializa todos os atributos do livro
  Livros(this.id, this.titulo, this.autor, this.paginas, this.lancamento);

  // Sobrescreve o método toString para exibir o livro de forma legível
  @override
  String toString() {
    return "Livro{id: $id, título: $titulo, autor: $autor, páginas: $paginas, lançamento: ${lancamento.year}}";
  }
}
