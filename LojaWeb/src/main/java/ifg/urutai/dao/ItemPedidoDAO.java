package ifg.urutai.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import ifg.urutai.connection.ConnectionFactory;
import ifg.urutai.model.ItemPedido;
import ifg.urutai.model.Pedido;

public class ItemPedidoDAO {
	Connection connection;
	public ItemPedidoDAO() {
		this.connection = new ConnectionFactory().getConnection();
	}
	
	public void add(ItemPedido itemPedido) {
		String sql = "INSERT INTO Item_Pedido (quantidade, id_pedido, id_produto) VALUES (?,?,?)";
		
		try (PreparedStatement statement = connection.prepareStatement(sql)){
			statement.setInt(1, itemPedido.getQuantidade());
			statement.setInt(2,itemPedido.getPedido().getId());
			statement.setInt(3, itemPedido.getProduto().getId());
			
			statement.execute();
		}catch (SQLException e) {
			Logger.getLogger(ItemPedidoDAO.class.getName()).log(Level.SEVERE,null,e);
		}
	
}}