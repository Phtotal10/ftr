package ifg.urutai.model;

public class ItemPedido {
private int idItem_pedido;
private int quantidade;
private Pedido pedido;
private Produto produto;
public int getIdItem_pedido() {
	return idItem_pedido;
}
public void setIdItem_pedido(int idItem_pedido) {
	this.idItem_pedido = idItem_pedido;
}
public int getQuantidade() {
	return quantidade;
}
public void setQuantidade(int quantidade) {
	this.quantidade = quantidade;
}
public Pedido getPedido() {
	return pedido;
}
public void setPedido(Pedido pedido) {
	this.pedido = pedido;
}
public Produto getProduto() {
	return produto;
}
public void setProduto(Produto produto) {
	this.produto = produto;
}


}
