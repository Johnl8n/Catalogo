import 'package:flutter/material.dart';
import 'package:listaprodutos/models/Produto.dart';
import 'package:listaprodutos/views/produtos.dart';

class HomePage extends StatelessWidget {

  // final List<ProdutoModel> listaProduto = [
  //   ProdutoModel(nome: "Cadeira Gamer", quantidade: 4, preco: 670.0, descricao: "Cadeira boa para kikar em cima delaaa, ainnn"),
  //   ProdutoModel(nome: "Pc Gamer", quantidade: 4, preco: 3500.0, descricao: "Roda de tudo, o bixo é bom"),
  //   ProdutoModel(nome: "Teclado Gamer", quantidade: 4, preco: 210.0, descricao: "Teclado ótimo para jogos de fps"),
  //   ProdutoModel(nome: "Mouse Gamer", quantidade: 4, preco: 150.0, descricao: "Mouse ótimo para jogos de fps"),
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color.fromRGBO(242, 242, 242, 10),

      appBar: AppBar(
        title:  Text("Catálogo de produtos", style: TextStyle(color: Color.fromRGBO(242, 242, 242, 10)),),
        backgroundColor: Color.fromRGBO(242,56,143, 10),
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Integrantes do grupo', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Sávio Rodrigues'),
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
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Itens da Loja', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(242, 56, 143, 10), fontSize: 20),),
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
            // Column(
            //   children: List.generate(listaProduto.length, (index){
            //     ProdutoModel produtoModel = listaProduto[index]; 
            //     return ListTile(
            //       title: Text(produtoModel.nome),
            //       subtitle: Text(' Estoque: ${produtoModel.quantidade} - preço: R\$ ${produtoModel.preco}'),
            //       trailing: IconButton(
            //         icon: Icon(Icons.delete), 
            //         onPressed: () { 
            //             showDialog(context: context, builder: (BuildContext context ){
            //               return AlertDialog(
            //                 title: Text('Deletar'),
            //                 content: Text("Você deseja Deletar o Item: ${produtoModel.nome}?"),
            //                 actions: [
            //                   TextButton(onPressed: (){
            //                     Navigator.of(context).pop();
            //                   }, 
            //                   child: Text("Cancelar")),
            //                   TextButton(onPressed: (){}, child: Text("Deletar"))
            //                 ],
            //               );
            //             },
            //             );
            //          },
            //          ),
            //     );

            //   }
            //   ),
            // ),