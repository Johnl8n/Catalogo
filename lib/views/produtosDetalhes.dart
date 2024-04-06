import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listaprodutos/models/Produto.dart';
class ProdutosDetalhes extends StatefulWidget {

  final ProdutoModel produto;


  ProdutosDetalhes({required this.produto});

  @override
  State<ProdutosDetalhes> createState() => _ProdutosDetalhesState();
}

class _ProdutosDetalhesState extends State<ProdutosDetalhes> {

  int _count = 0;

  void _incrementar() {
    setState(() {
      _count ++;
    });
  }
  void _decrementar() {
    setState(() {
      _count --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/logo.png', width: 100,),
        backgroundColor: const Color.fromRGBO(242,56,143, 10),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(widget.produto.nome, style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 20),),
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
                        Image.asset(widget.produto.imagem, width: 200,)
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
                          Text('R\$ ${widget.produto.preco}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),),
                          Row(
                            children: [
                              Text('em '),
                              Text('10x R\$ ${(widget.produto.preco / 10).toStringAsFixed(2)} sem juros', style: TextStyle(color: Colors.green),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Text('Frete grátis', style: TextStyle(color: Colors.green),),
                          Text('${widget.produto.cidade}, ${widget.produto.estado}', style: TextStyle(color: const Color.fromARGB(255, 95, 94, 94)),),
                          SizedBox(height: 5,),
                          Text('Descrição: ', style: TextStyle(fontWeight: FontWeight.w700),),
                          Text('${widget.produto.descricao}'),

                       ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(242,56,143, 10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Container(
                        child: Row(
                          children: [
                          Container(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){
                                _decrementar();
                              }, 
                              child: Icon(CupertinoIcons.minus, size: 18, color: Colors.white ))
                            ],
                          ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('$_count')
                            ],
                          ),
                          ),
                          Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){
                                _incrementar();
                              }, 
                              child: Icon(CupertinoIcons.plus, size: 18, color: Colors.white,))
                            ],
                          ),
                          ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ElevatedButton(
                            onPressed: (){
                              showDialog(context: context, builder: (BuildContext context){
                                return AlertDialog(
                                  title: Text('Adicionar ao carrinho'),
                                  content: Text('Adicionar $_count, ${widget.produto.nome}, ao carrinho'),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.of(context).pop();
                                    }, 
                                    child: Text('Cancelar', style: TextStyle(color: Colors.red),),),
                                    TextButton(onPressed: (){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Produto adicionado ao carrinho'), duration: Duration(seconds: 2),)
                                      );
                                      Navigator.of(context).pop();
                                    }, 
                                    child: Text('Adicionar'),),
                                  ],
                                );
                              },
                            );
                            }, 
                            child: Text('Adicionar ao carrinho', style: TextStyle(color: Colors.white),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(166,10,39,10))),),),
                      ),
                     ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}