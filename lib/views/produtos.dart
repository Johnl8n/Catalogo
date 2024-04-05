import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:listaprodutos/models/Produto.dart';
import 'package:listaprodutos/views/produtosDetalhes.dart';

class Produtos extends StatelessWidget {
   Produtos({super.key});

    final List<ProdutoModel> listaProduto = [
    ProdutoModel(nome: "Cadeira Gamer de ultima geração, retratil", quantidade: 4, preco: 670.50, descricao: "Cadeira boa para kikar em cima delaaa, ainnn", imagem: 'assets/item0.png'),
    ProdutoModel(nome: "Pc Gamer, ryzen 5 5600G, 16gb ram, RTX 3060", quantidade: 4, preco: 3500.50, descricao: "Roda de tudo, o bixo é bom", imagem: 'assets/item1.png'),
    ProdutoModel(nome: "Teclado Gamer, switch azul, ABNT, RGB", quantidade: 4, preco: 210.20, descricao: "Teclado ótimo para jogos de fps", imagem: 'assets/item2.png'),
    ProdutoModel(nome: "Mouse Gamer, Redragon RGB ajustável", quantidade: 4, preco: 150.30, descricao: "Mouse ótimo para jogos de fps", imagem: 'assets/item3.png'),
    ProdutoModel(nome: "Cadeira Gamer de ultima geração, retratil", quantidade: 4, preco: 670.55, descricao: "Cadeira boa para kikar em cima delaaa, ainnn", imagem: 'assets/item0.png'),
    ProdutoModel(nome: "Pc Gamer, ryzen 5 5600G, 16gb ram, RTX 3060", quantidade: 4, preco: 3500.50, descricao: "Roda de tudo, o bixo é bom", imagem: 'assets/item1.png'),
    ProdutoModel(nome: "Teclado Gamer, switch azul, ABNT, RGB", quantidade: 4, preco: 210.20, descricao: "Teclado ótimo para jogos de fps", imagem: 'assets/item2.png'),
    ProdutoModel(nome: "Cadeira Gamer de ultima geração, retratil", quantidade: 4, preco: 670.50, descricao: "Cadeira boa para kikar em cima delaaa, ainnn", imagem: 'assets/item0.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: ScrollPhysics(),
      childAspectRatio: 0.46,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: List.generate(listaProduto.length, (index){
            ProdutoModel produtoModel = listaProduto[index];
            return Container(
              padding: EdgeInsets.only(left: 2, right: 2, top: 2),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
                ),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProdutosDetalhes(produto: produtoModel), 
                        ), 
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 10),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              
                              alignment: Alignment.center,
                              width: 200,
                              height: 200,
                              child: Image.asset(produtoModel.imagem, width: 100,),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child:Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(produtoModel.nome),
                                      SizedBox(height: 5,),
                                      Text('R\$ ${produtoModel.preco}', style: TextStyle(color: Colors.green),),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      
                                      Text('em ', style: TextStyle(fontSize: 8),),
                                      Text('10x de R\$ ${(produtoModel.preco / 10).toStringAsFixed(2)} sem juros', style: TextStyle(color: Colors.green, fontSize: 8),),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(onPressed: (){
                                        showDialog(context: context, builder: (BuildContext context){
                                          return AlertDialog(
                                            title: Text("Deletar Item"),
                                            content: Text('Você deseja deletar, ${produtoModel.nome}?'),
                                            actions: [
                                              TextButton(onPressed: (){
                                                Navigator.of(context).pop();
                                              }, 
                                              child: Text('Cancelar')
                                              ),
                                              TextButton(onPressed: (){}, child: Text('Deletar', style: TextStyle(color: Colors.red),))
                                            ],
                                          );
                                        }
                                        );
                                      }, 
                                      child: Icon(Icons.delete, color: Colors.red,)),
                                    ],
                                  ),
                              ],
                              ) ,
                            ),
                          ],
                          ),
                        ),
                    ),
              )
            ],
            ),
        );
          },
          ),
        );
  }
}