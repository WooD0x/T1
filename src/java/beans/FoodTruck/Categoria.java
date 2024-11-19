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

public class Categoria {
    private int categoria_id; // Identificador único de la categoría
    private String nombre;    // Nombre de la categoría

    // Constructor completo
    public Categoria(int categoria_id, String nombre) {
        this.categoria_id = categoria_id;
        this.nombre = nombre;
    }

    // Constructor sin parámetros (útil para obtener datos de la base de datos)
    public Categoria() {
    }

    // Getters y Setters
    public int getCategoria_id() {
        return categoria_id;
    }

    public void setCategoria_id(int categoria_id) {
        this.categoria_id = categoria_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public LinkedList<Categoria> listarCategorias() {
    LinkedList<Categoria> listaCategorias = new LinkedList<>();
    String sql = "SELECT * FROM Categorias"; // Consulta SQL para obtener todas las categorías

    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql); 
         ResultSet rs = stmt.executeQuery()) {
        
        while (rs.next()) {
            int id = rs.getInt("categoria_id");  // Obtiene el ID de la categoría
            String nombre = rs.getString("nombre");  // Obtiene el nombre de la categoría

            // Crear una instancia de Categoria y añadirla a la lista
            Categoria categoriaObj = new Categoria(id, nombre);
            listaCategorias.add(categoriaObj);
        }
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace(); // Manejo básico de errores
    }
    return listaCategorias;
}
    
    public void crearCategoria() throws ClassNotFoundException {
    try {
        // Establece conexión con la base de datos
        Conexion c = new Conexion();
        Connection cnx = c.conecta(); 
        String query = "INSERT INTO Categorias (nombre) VALUES (?)";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecemos el valor del parámetro
        sentencia.setString(1, this.nombre); // Nombre de la categoría
        
        // Ejecutamos la sentencia
        sentencia.executeUpdate();
        
        // Cerramos los recursos
        sentencia.close();
        cnx.close();
        
    } catch (SQLException e) {
        System.out.println(e.getMessage()); // Manejo básico de errores
    }
}

    public Categoria obtenerCategoriaPorId(int categoriaId) throws SQLException, ClassNotFoundException {
    Categoria categoria = null;
    String sql = "SELECT * FROM Categorias WHERE categoria_id = ?"; // Consulta SQL

    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        
        // Establecemos el ID de la categoría como parámetro
        stmt.setInt(1, categoriaId);

        // Ejecutamos la consulta y procesamos el resultado
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Si existe la categoría, creamos un objeto con los datos
                categoria = new Categoria(
                    rs.getInt("categoria_id"),
                    rs.getString("nombre")
                );
            }
        }
    }
    return categoria; // Retornamos la categoría encontrada o null si no existe
}

    public Categoria verCategoria(String nombreCategoria) throws ClassNotFoundException {
    Categoria categoria = null;

    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta(); // Conexión a la base de datos
        String query = "SELECT * FROM Categorias WHERE nombre = ?"; // Consulta SQL
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecemos el valor del nombre de la categoría como parámetro
        sentencia.setString(1, nombreCategoria);

        // Ejecutamos la consulta
        ResultSet rs = sentencia.executeQuery();

        // Si encontramos la categoría, la creamos como un objeto
        if (rs.next()) {
            categoria = new Categoria();
            categoria.setCategoria_id(rs.getInt("categoria_id")); // ID de la categoría
            categoria.setNombre(rs.getString("nombre"));          // Nombre de la categoría
        }

        // Cerramos los recursos
        rs.close();
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println(e.getMessage()); // Manejo de errores
    }

    return categoria; // Retornamos la categoría encontrada o null si no existe
}

    public boolean eliminarCategoriaPorId(int categoriaId) throws ClassNotFoundException {
    boolean eliminada = false;

    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta(); // Conexión a la base de datos
        String query = "DELETE FROM Categorias WHERE categoria_id = ?"; // Consulta SQL para eliminar
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecemos el parámetro para la eliminación de la categoría
        sentencia.setInt(1, categoriaId);

        // Ejecutamos la actualización
        int filasAfectadas = sentencia.executeUpdate();
        if (filasAfectadas > 0) {
            eliminada = true;  // Si se eliminaron filas, la categoría se eliminó con éxito
        }

        // Cerramos los recursos
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println("Error al eliminar la categoría: " + e.getMessage()); // Manejo de errores
    }

    return eliminada;  // Retorna true si la categoría fue eliminada, false si no
}

    public void editarCategoria(int categoria_id, String nombre) throws ClassNotFoundException {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();  // Conexión a la base de datos
        
        // Consulta SQL para actualizar los datos de la categoría
        String query = "UPDATE Categorias SET nombre=? WHERE categoria_id=?";
        
        // Preparar la sentencia SQL
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecer los valores de los parámetros en la consulta
        sentencia.setString(1, nombre);  // Nombre de la categoría
        sentencia.setInt(2, categoria_id);  // ID de la categoría para identificarla y actualizarla
        
        // Ejecutar la actualización
        sentencia.executeUpdate();
        
        // Cerrar la sentencia y la conexión
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        // Capturar y mostrar cualquier error que ocurra durante la ejecución
        System.out.println("Error al actualizar la categoría: " + e.getMessage());
    }
}

    
}