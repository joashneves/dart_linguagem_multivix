import 'package:flutter/material.dart';
import 'models/Livros.dart';
import 'console.dart';

// Tela que mostra a lista de livros
class MyDataScrean extends StatefulWidget {
  const MyDataScrean({super.key});

  @override
  State<MyDataScrean> createState() => _MyDataScreanState();
}

class _MyDataScreanState extends State<MyDataScrean> {
  final console = ConsoleLivros(); // Instância do CRUD

  @override
  Widget build(BuildContext context) {
    final List<Livros> dados = console.listarLivros();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Livros"),
      ),
      body: ListView.builder(
        itemCount: dados.length,
        itemBuilder: (context, index) {
          final livro = dados[index];
          return ListTile(
            title: Text(livro.titulo),
            subtitle: Text(
              "Autor: ${livro.autor}\nPáginas: ${livro.paginas} (${livro.lancamento.year})",
            ),
            // Botões de ação: editar e deletar
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Botão de edição
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    _mostrarDialogEdicao(livro);
                  },
                ),
                // Botão de deletar
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      console.deletarLivro(livro.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("📚 '${livro.titulo}' deletado!"),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Dialog para editar um livro
  void _mostrarDialogEdicao(Livros livro) {
    final tituloController = TextEditingController(text: livro.titulo);
    final autorController = TextEditingController(text: livro.autor);
    final paginasController = TextEditingController(text: livro.paginas.toString());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Editar Livro"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: tituloController,
              decoration: const InputDecoration(labelText: "Título"),
            ),
            TextField(
              controller: autorController,
              decoration: const InputDecoration(labelText: "Autor"),
            ),
            TextField(
              controller: paginasController,
              decoration: const InputDecoration(labelText: "Páginas"),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancelar"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                console.atualizarLivro(
                  livro.id,
                  titulo: tituloController.text,
                  autor: autorController.text,
                  paginas: int.tryParse(paginasController.text),
                );
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("✏️ '${livro.titulo}' atualizado!"),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            child: const Text("Salvar"),
          ),
        ],
      ),
    );
  }
}
