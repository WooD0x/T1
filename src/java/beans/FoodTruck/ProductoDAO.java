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

public class ProductoDAO {

    // Método para insertar un producto en la base de datos
    public boolean crearProducto(Producto producto) {
        String sql = "INSERT INTO Productos (nombre, precio, categoria_id) VALUES (?, ?, ?)";
        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Establecer los valores en la consulta
            stmt.setString(1, producto.getNombre());
            stmt.setDouble(2, producto.getPrecio());
            stmt.setInt(3, producto.getCategoriaId());

            int filasInsertadas = stmt.executeUpdate();

            return filasInsertadas > 0;  // Retorna true si se insertó correctamente
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return false;  // En caso de error
        }
    }

    // Método para obtener un producto por su ID
    public Producto obtenerProductoPorId(int productoId) {
        Producto producto = null;
        String sql = "SELECT * FROM Productos WHERE producto_id = ?";
        
        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, productoId);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    String nombre = rs.getString("nombre");
                    double precio = rs.getDouble("precio");
                    int categoriaId = rs.getInt("categoria_id");

                    producto = new Producto(productoId, nombre, precio, categoriaId);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return producto;
    }
    
    public Producto verProducto(int productoId) throws ClassNotFoundException {
        Producto producto = null;

        try {
            Conexion conexion = new Conexion();
            Connection cnx = conexion.conecta(); // Conexión a la base de datos
            String query = "SELECT * FROM Productos WHERE producto_id = ?"; // Consulta SQL
            PreparedStatement ps = cnx.prepareStatement(query);
            ps.setInt(1, productoId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                producto = new Producto();
                producto.setProductoId(rs.getInt("producto_id")); // ID del producto
                producto.setNombre(rs.getString("nombre"));        // Nombre del producto
                producto.setPrecio(rs.getDouble("precio"));        // Precio del producto
                producto.setCategoriaId(rs.getInt("categoria_id"));// ID de la categoría
            }

            // Cerrar recursos
            rs.close();
            ps.close();
            cnx.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return producto; // Retorna el producto o null si no se encuentra
    }
    
    public boolean actualizarProducto(Producto producto) throws ClassNotFoundException {
    boolean actualizado = false;

    try {
        Conexion conexion = new Conexion();
        Connection cnx = conexion.conecta(); // Conexión a la base de datos
        String query = "UPDATE Productos SET nombre = ?, precio = ?, categoria_id = ? WHERE producto_id = ?";
        PreparedStatement ps = cnx.prepareStatement(query);
        ps.setString(1, producto.getNombre());
        ps.setDouble(2, producto.getPrecio());
        ps.setInt(3, producto.getCategoriaId());
        ps.setInt(4, producto.getProductoId());

        actualizado = ps.executeUpdate() > 0;

        ps.close();
        cnx.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return actualizado;
}

    public boolean eliminarProducto(int productoId) throws ClassNotFoundException {
    boolean eliminado = false;

    try {
        Conexion conexion = new Conexion();
        Connection cnx = conexion.conecta(); // Conexión a la base de datos
        String query = "DELETE FROM Productos WHERE producto_id = ?";
        PreparedStatement ps = cnx.prepareStatement(query);
        ps.setInt(1, productoId);

        eliminado = ps.executeUpdate() > 0;

        ps.close();
        cnx.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return eliminado;
}

    
}    

    
