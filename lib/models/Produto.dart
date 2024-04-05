class ProdutoModel {
  String nome;
  int quantidade;
  double preco;
  String descricao;
  String imagem;
  String cidade;
  String estado;

  ProdutoModel (
    {
      required this.nome,
      required this.quantidade,
      required this.preco,
      required this.descricao,
      required this.imagem,
      required this.cidade,
      required this.estado,
    }
  );


}