import 'package:flutter/material.dart';
import 'models/Livros.dart';
import 'console.dart';

class MyCreateScreen extends StatefulWidget {
  const MyCreateScreen({super.key});

  @override
  State<MyCreateScreen> createState() => _MyCreateScreenState();
}

class _MyCreateScreenState extends State<MyCreateScreen> {
  // Controladores para capturar o que o usuário digitar
  final idController = TextEditingController();
  final tituloController = TextEditingController();
  final autorController = TextEditingController();
  final paginasController = TextEditingController();
  final anoController = TextEditingController();

  final console = ConsoleLivros(); // instância do CRUD

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastrar Livro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Campo para o id
            TextField(
              controller: idController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "ID"),
            ),
            // Campo para título
            TextField(
              controller: tituloController,
              decoration: const InputDecoration(labelText: "Título"),
            ),
            // Campo para autor
            TextField(
              controller: autorController,
              decoration: const InputDecoration(labelText: "Autor"),
            ),
            // Campo para páginas
            TextField(
              controller: paginasController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Número de páginas"),
            ),
            // Campo para ano
            TextField(
              controller: anoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Ano de lançamento"),
            ),
            const SizedBox(height: 20),
            // Botão salvar
            ElevatedButton(
              onPressed: () {
                // Converte os dados e cria o livro
                final livro = Livros(
                  int.parse(idController.text),
                  tituloController.text,
                  autorController.text,
                  int.parse(paginasController.text),
                  DateTime(int.parse(anoController.text)),
                );

                console.criarLivro(livro); // adiciona na lista

                // Volta para a tela anterior
                Navigator.pop(context);
              },
              child: const Text("Salvar Livro"),
            ),
          ],
        ),
      ),
    );
  }
}
