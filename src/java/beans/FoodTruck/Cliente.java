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

public class Cliente {
    private int clienteId;
    private String dni;
    private String nombre;
    private String telefono;
    private String direccion;
    private String usuario;
    private String pass;

    // Constructor con parámetros
    public Cliente(int clienteId, String dni, String nombre, String telefono, String direccion, String usuario, String pass) {
        this.clienteId = clienteId;
        this.dni = dni;
        this.nombre = nombre;
        this.telefono = telefono;
        this.direccion = direccion;
        this.usuario = usuario;
        this.pass = pass;
    }

    // Constructor sin parámetros (para obtener datos de la base de datos)
    public Cliente() {
        // Constructor vacío, útil para crear una instancia vacía y luego llenarla desde la base de datos
    }

    // Getters y Setters
    public int getClienteId() {
        return clienteId;
    }

    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public LinkedList<Cliente> listarClientes() {
        LinkedList<Cliente> listaClientes = new LinkedList<>();
        String sql = "SELECT * FROM Clientes"; // Aquí debes ajustar según el nombre de tu tabla

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                int id = rs.getInt("cliente_id");
                String nombre = rs.getString("nombre");
                String dni = rs.getString("dni");
                String telefono = rs.getString("telefono");
                String direccion = rs.getString("direccion");
                String usuario = rs.getString("usuario");
                String pass = rs.getString("pass");

                Cliente clienteObj = new Cliente(id, nombre, dni, telefono, direccion, usuario, pass);
                listaClientes.add(clienteObj);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaClientes;
    }
    
public void crearCliente() throws ClassNotFoundException {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta(); // Conexión a la base de datos
        String query = "INSERT INTO Clientes (dni, nombre, telefono, direccion, usuario, pass) VALUES (?, ?, ?, ?, ?, ?)";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecemos los valores de los parámetros
        sentencia.setString(1, this.dni); // DNI
        sentencia.setString(2, this.nombre); // Nombre completo
        sentencia.setString(3, this.telefono); // Teléfono
        sentencia.setString(4, this.direccion); // Dirección
        sentencia.setString(5, this.usuario); // Nombre de usuario
        sentencia.setString(6, this.pass); // Contraseña
        
        // Ejecutamos la sentencia
        sentencia.executeUpdate();
        
        // Cerramos los recursos
        sentencia.close();
        cnx.close();
        
    } catch (SQLException e) {
        System.out.println(e.getMessage()); // Manejo de errores
    }
}

public Cliente obtenerClientePorId(int clienteId) throws SQLException, ClassNotFoundException {
    Cliente cliente = null;
    String sql = "SELECT * FROM Clientes WHERE cliente_id = ?";  // Ajustar según tu estructura de tabla

    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        
        stmt.setInt(1, clienteId);  // Establecemos el ID del cliente
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Si existe el cliente, creamos un objeto con los datos
                cliente = new Cliente(
                    rs.getInt("cliente_id"),
                    rs.getString("nombre"),
                    rs.getString("dni"),
                    rs.getString("telefono"),
                    rs.getString("direccion"),
                    rs.getString("usuario"),
                    rs.getString("pass")
                );
            }
        }
    }
    return cliente;
}
public Cliente verCliente(String usr) throws ClassNotFoundException {
    Cliente cliente = null;
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String query = "SELECT * FROM Clientes WHERE usuario = ?";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        sentencia.setString(1, usr);
        ResultSet rs = sentencia.executeQuery();

        if (rs.next()) {
            cliente = new Cliente();
            cliente.setClienteId(rs.getInt("cliente_id"));
            cliente.setNombre(rs.getString("nombre"));
            cliente.setDni(rs.getString("dni"));
            cliente.setTelefono(rs.getString("telefono"));
            cliente.setDireccion(rs.getString("direccion"));
            cliente.setUsuario(rs.getString("usuario"));
            cliente.setPass(rs.getString("pass"));
        }

        rs.close();
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return cliente;
}

public boolean eliminarClientePorId(int clienteId) throws ClassNotFoundException {
    boolean eliminado = false;
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String query = "DELETE FROM Clientes WHERE cliente_id = ?";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        sentencia.setInt(1, clienteId);  // Usamos el parámetro recibido para la eliminación

        int filasAfectadas = sentencia.executeUpdate();
        if (filasAfectadas > 0) {
            eliminado = true;  // El cliente fue eliminado exitosamente
        }

        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println("Error al eliminar el cliente: " + e.getMessage());
    }
    return eliminado;
}

public void editarCliente(int cliente_id, String nombre, String dni, String telefono, String direccion, String usuario, String pass) throws ClassNotFoundException {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        
        // La consulta SQL para actualizar los datos del cliente
        String query = "UPDATE Clientes SET nombre=?, dni=?, telefono=?, direccion=?, usuario=?, pass=? WHERE cliente_id=?";
        
        // Preparar la sentencia SQL
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecer los valores de los parámetros en la consulta
        sentencia.setString(1, nombre);
        sentencia.setString(2, dni);
        sentencia.setString(3, telefono);
        sentencia.setString(4, direccion);
        sentencia.setString(5, usuario);
        sentencia.setString(6, pass);
        sentencia.setInt(7, cliente_id);  // Usamos el id del cliente para identificar al cliente a actualizar
        
        // Ejecutar la actualización
        sentencia.executeUpdate();
        
        // Cerrar la conexión y la sentencia
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        // Capturar y mostrar cualquier error que ocurra durante la ejecución
        System.out.println("Error al actualizar el cliente: " + e.getMessage());
    }
}


}