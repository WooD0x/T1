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



public class DetallesPedido {
    
    private int detalleId;        // ID del detalle del pedido
    private int pedidoId;         // ID del pedido al que pertenece
    private int productoId;       // ID del producto en el pedido
    private int cantidad;         // Cantidad del producto en el pedido
    private double subtotal;      // Subtotal por el producto en el pedido
    
    // Constructor con parámetros
    public DetallesPedido(int detalleId, int pedidoId, int productoId, int cantidad, double subtotal) {
        this.detalleId = detalleId;
        this.pedidoId = pedidoId;
        this.productoId = productoId;
        this.cantidad = cantidad;
        this.subtotal = subtotal;
    }
    
    // Constructor sin parámetros (para obtener datos de la base de datos)
    public DetallesPedido() {
    }

    // Getters y Setters
    public int getDetalleId() {
        return detalleId;
    }

    public void setDetalleId(int detalleId) {
        this.detalleId = detalleId;
    }

    public int getPedidoId() {
        return pedidoId;
    }

    public void setPedidoId(int pedidoId) {
        this.pedidoId = pedidoId;
    }

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
    
    
    // Método para listar todos los detalles de los pedidos
    public LinkedList<DetallesPedido> listarDetallesPedidos() {
        LinkedList<DetallesPedido> listaDetalles = new LinkedList<>();
        String sql = "SELECT * FROM DetallesPedido"; // Consulta para obtener todos los detalles de los pedidos

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {

            // Iteramos sobre los resultados obtenidos de la consulta
            while (rs.next()) {
                int detalleId = rs.getInt("detalle_id");
                int pedidoId = rs.getInt("pedido_id");
                int productoId = rs.getInt("producto_id");
                int cantidad = rs.getInt("cantidad");
                double subtotal = rs.getDouble("subtotal");

                // Crear objeto DetallesPedido con los datos obtenidos
                DetallesPedido detalleObj = new DetallesPedido(detalleId, pedidoId, productoId, cantidad, subtotal);
                listaDetalles.add(detalleObj); // Agregar el detalle del pedido a la lista
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaDetalles; // Retornar la lista de detalles de pedidos
    }
}



