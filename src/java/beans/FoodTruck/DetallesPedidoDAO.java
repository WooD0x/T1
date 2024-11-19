package beans.FoodTruck;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import beans.FoodTruck.Conexion; 
import beans.FoodTruck.Categoria; 
import java.math.BigDecimal;


public class DetallesPedidoDAO {

    // Método para agregar un nuevo detalle de pedido a la base de datos
    public boolean agregarDetallePedido(DetallesPedido detalle) {
        String sql = "INSERT INTO DetallesPedido (pedido_id, producto_id, cantidad, subtotal) VALUES (?, ?, ?, ?)"; // Consulta para insertar un detalle de pedido

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Establecer los valores en la consulta
            stmt.setInt(1, detalle.getPedidoId());     // Establecer pedido_id
            stmt.setInt(2, detalle.getProductoId());   // Establecer producto_id
            stmt.setInt(3, detalle.getCantidad());     // Establecer cantidad
            stmt.setDouble(4, detalle.getSubtotal());  // Establecer subtotal

            int filasInsertadas = stmt.executeUpdate(); // Ejecutar la consulta

            return filasInsertadas > 0; // Retorna true si se insertó correctamente, de lo contrario, false

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();  // Mostrar errores en caso de fallo
            return false;         // En caso de error, retornamos false
        }
    }
    public LinkedList<DetallesPedido> obtenerDetallesPorPedidoId(int pedidoId) {
        LinkedList<DetallesPedido> listaDetalles = new LinkedList<>();
        String sql = "SELECT * FROM DetallesPedido WHERE pedido_id = ?"; // Consulta para obtener los detalles del pedido

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, pedidoId); // Establecemos el ID del pedido en la consulta
            try (ResultSet rs = stmt.executeQuery()) {
                // Iteramos sobre los resultados obtenidos de la consulta
                while (rs.next()) {
                    int detalleId = rs.getInt("detalle_id");
                    int productoId = rs.getInt("producto_id");
                    int cantidad = rs.getInt("cantidad");
                    double subtotal = rs.getDouble("subtotal");

                    // Crear objeto DetallesPedido con los datos obtenidos
                    DetallesPedido detalle = new DetallesPedido(detalleId, pedidoId, productoId, cantidad, subtotal);
                    listaDetalles.add(detalle); // Agregar el detalle a la lista
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaDetalles; // Retornar la lista de detalles
    }

public boolean eliminarDetallePedido(int detalleId) {
        String sql = "DELETE FROM DetallesPedido WHERE detalle_id = ?";
        boolean success = false;

        try (Connection conn = Conexion.conecta();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, detalleId); // Establecer el ID del detalle a eliminar

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                success = true;  // Si se eliminó al menos un registro, es exitoso
            }
            
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();  // Mostrar errores si la eliminación falla
        }

        return success; // Retorna true si la eliminación fue exitosa, false en caso contrario
    }
    
}