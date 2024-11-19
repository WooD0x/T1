package beans.FoodTruck;

import java.sql.*;
import beans.FoodTruck.Producto;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import beans.FoodTruck.Conexion; 


public class PedidoDAO {

    // Método para insertar un pedido en la base de datos
    public boolean crearPedido(Pedido pedido) {
        String sql = "INSERT INTO Pedidos (cliente_id, fecha, total, estado) VALUES (?, ?, ?, ?)";

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Establecer los valores en la consulta
            stmt.setInt(1, pedido.getClienteId());   // Establecer cliente_id
            stmt.setTimestamp(2, pedido.getFecha()); // Establecer fecha
            stmt.setDouble(3, pedido.getTotal());    // Establecer total
            stmt.setString(4, pedido.getEstado());   // Establecer estado

            // Ejecutar la consulta de inserción
            int filasInsertadas = stmt.executeUpdate();

            return filasInsertadas > 0;  // Retorna true si se insertó correctamente
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;  // En caso de error
        }
    }
    
     public Pedido obtenerPedidoPorId(int pedidoId) {
        Pedido pedido = null;
        String sql = "SELECT * FROM Pedidos WHERE pedido_id = ?";

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, pedidoId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Obtener los datos del pedido y crear un objeto Pedido
                int clienteId = rs.getInt("cliente_id");
                Timestamp fecha = rs.getTimestamp("fecha");
                double total = rs.getDouble("total");
                String estado = rs.getString("estado");

                pedido = new Pedido(pedidoId, clienteId, fecha, total, estado);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return pedido;
    }
     
     public boolean actualizarPedido(Pedido pedido) {
    String sql = "UPDATE Pedidos SET cliente_id = ?, estado = ?, total = ? WHERE pedido_id = ?";
    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql)) {

        // Establecer los valores en la consulta
        stmt.setInt(1, pedido.getClienteId());
        stmt.setString(2, pedido.getEstado());
        stmt.setDouble(3, pedido.getTotal());
        stmt.setInt(4, pedido.getPedidoId());

        int filasActualizadas = stmt.executeUpdate();

        return filasActualizadas > 0;  // Retorna true si la actualización fue exitosa
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        return false;  // En caso de error
    }
}

     public boolean eliminarPedido(int pedidoId) {
    String sql = "DELETE FROM Pedidos WHERE pedido_id = ?";
    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql)) {

        // Establecer el valor del ID de pedido
        stmt.setInt(1, pedidoId);

        int filasEliminadas = stmt.executeUpdate();

        return filasEliminadas > 0;  // Retorna true si la eliminación fue exitosa
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
        return false;  // En caso de error
    }
}

     
}
    
