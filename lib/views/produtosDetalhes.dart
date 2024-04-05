import 'package:flutter/material.dart';
import 'package:listaprodutos/models/Produto.dart';
class ProdutosDetalhes extends StatelessWidget {

  final ProdutoModel produto;

  ProdutosDetalhes({required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png', width: 100,),
        backgroundColor: Color.fromRGBO(242,56,143, 10),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 10),
                borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(20), bottomEnd: Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(produto.imagem, width: 200,)
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(produto.nome, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),)
                 ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}