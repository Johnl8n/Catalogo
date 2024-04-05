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
        backgroundColor: const Color.fromRGBO(242,56,143, 10),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text(produto.nome, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                height: 300,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                  color: Color.fromRGBO(242, 242, 242, 10),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(produto.imagem, width: 200,)
                  ],
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text('R\$ ${produto.preco}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
                      Row(
                        children: [
                          Text('em '),
                          Text('10x R\$ ${(produto.preco / 10).toStringAsFixed(2)} sem juros', style: TextStyle(color: Colors.green),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text('Frete grátis', style: TextStyle(color: Colors.green),),
                      Text('${produto.cidade}, ${produto.estado}', style: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),),
                   ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}