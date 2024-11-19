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


public class Producto {
    
    private int productoId;
    private String nombre;
    private double precio;
    private int categoriaId;

    // Constructor con parámetros
    public Producto(int productoId, String nombre, double precio, int categoriaId) {
        this.productoId = productoId;
        this.nombre = nombre;
        this.precio = precio;
        this.categoriaId = categoriaId;
    }

    // Constructor sin parámetros (para obtener datos de la base de datos)
    public Producto() {
        // Este constructor se deja vacío para permitir la instanciación sin valores
    }

    // Getters y Setters

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCategoriaId() {
        return categoriaId;
    }

    public void setCategoriaId(int categoriaId) {
        this.categoriaId = categoriaId;
    }

    public LinkedList<Producto> listarProductos() {
        LinkedList<Producto> listaProductos = new LinkedList<>();
        String sql = "SELECT * FROM Productos"; // Consulta para obtener todos los productos

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int productoId = rs.getInt("producto_id");
                String nombre = rs.getString("nombre");
                double precio = rs.getDouble("precio");
                int categoriaId = rs.getInt("categoria_id");

                Producto productoObj = new Producto(productoId, nombre, precio, categoriaId);
                listaProductos.add(productoObj);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaProductos;
    }
    
public Producto verProducto(int productoId) throws ClassNotFoundException {
    Producto producto = null;

    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta(); // Conexión a la base de datos
        String query = "SELECT * FROM Productos WHERE producto_id = ?"; // Consulta SQL
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecemos el valor del ID del producto como parámetro
        sentencia.setInt(1, productoId);

        // Ejecutamos la consulta
        ResultSet rs = sentencia.executeQuery();

        // Si encontramos el producto, lo creamos como un objeto
        if (rs.next()) {
            producto = new Producto();
            producto.setProductoId(rs.getInt("producto_id")); // ID del producto
            producto.setNombre(rs.getString("nombre"));       // Nombre del producto
            
            // Usar BigDecimal para manejar el precio con precisión
            producto.setPrecio(rs.getDouble("precio"));
            
            producto.setCategoriaId(rs.getInt("categoria_id")); // ID de la categoría (relacionado)
        }

        // Cerramos los recursos
        rs.close();
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println(e.getMessage()); // Manejo de errores
    }

    return producto; // Retornamos el producto encontrado o null si no existe
}
}



