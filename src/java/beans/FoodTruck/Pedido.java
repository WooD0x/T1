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

import java.sql.Timestamp;

public class Pedido {
    private int pedidoId;
    private int clienteId;
    private Timestamp fecha;
    private double total;
    private String estado;

    // Constructor con parámetros
    public Pedido(int pedidoId, int clienteId, Timestamp fecha, double total, String estado) {
        this.pedidoId = pedidoId;
        this.clienteId = clienteId;
        this.fecha = fecha;
        this.total = total;
        this.estado = estado;
    }

    // Constructor sin parámetros (para obtener datos de la base de datos)
    public Pedido() {
    }

    // Getters y Setters
    public int getPedidoId() {
        return pedidoId;
    }

    public void setPedidoId(int pedidoId) {
        this.pedidoId = pedidoId;
    }

    public int getClienteId() {
        return clienteId;
    }

    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }

    public Timestamp getFecha() {
        return fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public LinkedList<Pedido> listarPedidos() {
        LinkedList<Pedido> listaPedidos = new LinkedList<>();
        String sql = "SELECT * FROM Pedidos"; // Consulta para obtener todos los pedidos

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {

            // Iteramos sobre los resultados obtenidos de la consulta
            while (rs.next()) {
                int pedidoId = rs.getInt("pedido_id");
                int clienteId = rs.getInt("cliente_id");
                Timestamp fecha = rs.getTimestamp("fecha");
                double total = rs.getDouble("total");
                String estado = rs.getString("estado");

                // Crear objeto Pedido con los datos obtenidos
                Pedido pedidoObj = new Pedido(pedidoId, clienteId, fecha, total, estado);
                listaPedidos.add(pedidoObj); // Agregar el pedido a la lista
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaPedidos; // Retornar la lista de pedidos
    }
    
}

