package beans.FoodTruck;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // Método para obtener la conexión
    public static Connection conecta() throws ClassNotFoundException, SQLException {
        // Cargar el driver de MySQL
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Datos de conexión
        String url = "jdbc:mysql://localhost:3306/restaurantebd"; // Cambia el nombre de la base de datos si es necesario
        String user = "root";  // Tu usuario de la base de datos
        String password = "michicau123";  // Tu contraseña de la base de datos

        // Crear y retornar la conexión
        return DriverManager.getConnection(url, user, password);
    }

    // Método para probar la conexión
    public static int pruebaConexion() {
        try (Connection conn = conecta()) {
            if (conn != null) {
                return 1; // Conexión exitosa
            } else {
                return 0; // Error en la conexión
            }
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error en la prueba de conexión: " + e.getMessage());
            return 0; // Error
        }
    }
}
