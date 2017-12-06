package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Produto;

public class MySQLProdutoDao implements ProdutoDao {

	public MySQLProdutoDao() {

	}

	@Override
	public long incluir(Produto produto) throws SQLException {
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		String sql = "INSERT INTO Produto (nome) VALUES (?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setLong(1, produto.getCodigoBarras());
		pstmt.setString(2, produto.getNome());
		pstmt.setLong(3, produto.getCategoria().getCodigo());
		pstmt.setDouble(4, produto.getPreco());
		pstmt.setBoolean(5, produto.isDisponivel());
		pstmt.setString(6, produto.getImagem());
		pstmt.setLong(7, produto.getQuantidade());
		

		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		id = tableKeys.getInt(1);

		produto.setId(id);

		pstmt.close();

		conn.close();

		return id;

	}

	@Override
	public Produto consultarPorCodigoBarras(long codigoBarras) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Produto produtoConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar as produtos por c�digo de barras que existem na tabela

		String sql = "SELECT * FROM Produto  WHERE codigoBarras=" + codigoBarras + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		produtoConsultado = new Produto();
		
		// Como associar categoria com esse produto?

		if (rs != null) {
			produtoConsultado.setId(rs.getLong("id"));
			produtoConsultado.setCodigoBarras(rs.getLong("codigoBarras"));
			produtoConsultado.setNome(rs.getString("nome"));
			produtoConsultado.setPreco(rs.getDouble("preco"));
			produtoConsultado.setDisponivel(rs.getBoolean("disponivel"));
			produtoConsultado.setImagem(rs.getString("imagem"));
			produtoConsultado.setQuantidade(rs.getLong("quantidade"));

		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return produtoConsultado;
	}

	@Override
	public List<Produto> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Produto> listaProdutos = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as produtos que existem na tabela

		String sql = "SELECT * FROM Produto;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaProdutos = new ArrayList<>();
			while (rs.next()) {
				Produto pr = new Produto();
				pr.setId(rs.getLong("id"));
				pr.setNome(rs.getString("nome"));
				
				Categoria categoria = new Categoria();
				
				pr.setPreco(rs.getDouble("preco"));
				pr.setDisponivel(rs.getBoolean("disponivel"));
				pr.setQuantidade(rs.getLong("quantidade"));

				listaProdutos.add(pr);
			}
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaProdutos;
	}

	@Override
	public boolean atualizar(Produto produto) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long id) throws SQLException {
		return false;
	}

}
