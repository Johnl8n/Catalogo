import 'package:flutter/material.dart';
import 'package:listaprodutos/models/Produto.dart';
import 'package:listaprodutos/views/produtos.dart';

import 'infoGrupo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color.fromRGBO(242, 242, 242, 10),

      appBar: AppBar(
        title: const Text("Catálogo de produtos", style: TextStyle(color: Color.fromRGBO(242, 242, 242, 10)),),
        backgroundColor: const Color.fromRGBO(242,56,143, 10),
      ),
      drawer: Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 56, 143, 10),
              ),
              child: Text(
                'Menu kitty Store',
                style: TextStyle(
                  color: Color.fromRGBO(242, 242, 242, 10),
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const Text('Informações do grupo', style: TextStyle(color: Colors.white)), // Define a cor do texto
                onTap: () {
                  Navigator.pop(context); // Fecha o Drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const infoGrupo()),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text('Itens da Loja Kitty', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(242, 56, 143, 10), fontSize: 20),),
                  ),
                  Produtos(),
                ],
              ),
            ),
          ],
        ),
      ) ,

    );
  }
}
