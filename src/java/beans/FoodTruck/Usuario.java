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

public class Usuario {
    private int usuario_id;
    private String nombre;
    private String dni;
    private String telefono;
    private String direccion;
    private String usuario;
    private String pass;
    private String rol;

    // Constructor
    public Usuario(int usuario_id, String nombre, String dni, String telefono, String direccion, String usuario, String pass, String rol) {
        this.usuario_id = usuario_id;
        this.nombre = nombre;
        this.dni = dni;
        this.telefono = telefono;
        this.direccion = direccion;
        this.usuario = usuario;
        this.pass = pass;
        this.rol = rol;
    }

    // Constructor sin parámetros (para obtener datos de la base de datos)
    public Usuario() {}

    // Getters y Setters
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
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

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
    
   // Método para listar usuarios desde la base de datos
       // Método para listar usuarios
    public LinkedList<Usuario> listarUsuarios() {
        LinkedList<Usuario> listaUsuarios = new LinkedList<>();
        String sql = "SELECT * FROM Usuarios"; // Aquí debes ajustar según el nombre de tu tabla

        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(sql); 
             ResultSet rs = stmt.executeQuery()) {
            
            while (rs.next()) {
                int id = rs.getInt("usuario_id");
                String nombre = rs.getString("nombre");
                String dni = rs.getString("dni");
                String telefono = rs.getString("telefono");
                String direccion = rs.getString("direccion");
                String usuario = rs.getString("usuario");
                String pass = rs.getString("pass");
                String rol = rs.getString("rol");

                Usuario usuarioObj = new Usuario(id, nombre, dni, telefono, direccion, usuario, pass, rol);
                listaUsuarios.add(usuarioObj);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Mostrar errores en caso de fallo
        }
        return listaUsuarios;
    }


    // Método para validar el usuario en la base de datos
    public boolean valida(String usuario, String password) {
        boolean valido = false;
        String query = "SELECT * FROM Usuarios WHERE usuario = ? AND pass = ?";
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            conn = Conexion.conecta();  // Obtener conexión de la clase Conexion
            stmt = conn.prepareStatement(query);
            stmt.setString(1, usuario);
            stmt.setString(2, password);
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                valido = true;  // Usuario válido
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return valido;
    }

    // Método para agregar un usuario
    public boolean crearUsuario(String nombre, String dni, String telefono, String direccion, String usuario, String pass, String rol) {
        String query = "INSERT INTO Usuarios (nombre, dni, telefono, direccion, usuario, pass, rol) VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = Conexion.conecta(); 
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, nombre);
            stmt.setString(2, dni);
            stmt.setString(3, telefono);
            stmt.setString(4, direccion);
            stmt.setString(5, usuario);
            stmt.setString(6, pass);
            stmt.setString(7, rol);
            
            int result = stmt.executeUpdate();
            return result > 0;  // Retorna true si se insertó correctamente
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        return false;
    }

public void editarUsuario(int usuario_id, String nombre, String dni, String telefono, String direccion, String usuario, String pass, String rol) throws ClassNotFoundException {
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        
        // La consulta SQL para actualizar los datos del usuario
        String query = "UPDATE Usuarios SET nombre=?, dni=?, telefono=?, direccion=?, usuario=?, pass=?, rol=? WHERE usuario_id=?";
        
        // Preparar la sentencia SQL
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Establecer los valores de los parámetros en la consulta
        sentencia.setString(1, nombre);
        sentencia.setString(2, dni);
        sentencia.setString(3, telefono);
        sentencia.setString(4, direccion);
        sentencia.setString(5, usuario);
        sentencia.setString(6, pass);
        sentencia.setString(7, rol);
        sentencia.setInt(8, usuario_id);  // Usamos el id del usuario para identificar al usuario a actualizar
        
        // Ejecutar la actualización
        sentencia.executeUpdate();
        
        // Cerrar la conexión y la sentencia
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        // Capturar y mostrar cualquier error que ocurra durante la ejecución
        System.out.println("Error al actualizar el usuario: " + e.getMessage());
    }
}


public boolean eliminarUsuarioPorId(int usuarioId) throws ClassNotFoundException {
    boolean eliminado = false;
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String query = "DELETE FROM Usuarios WHERE usuario_id = ?";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        sentencia.setInt(1, usuarioId);  // Usamos el parámetro recibido para la eliminación

        int filasAfectadas = sentencia.executeUpdate();
        if (filasAfectadas > 0) {
            eliminado = true;  // El usuario fue eliminado exitosamente
        }

        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println("Error al eliminar el usuario: " + e.getMessage());
    }
    return eliminado;
}



    // Método para obtener un usuario por su ID
public Usuario obtenerUsuarioPorId(int usuarioId) throws SQLException, ClassNotFoundException {
    Usuario usuario = null;
    String sql = "SELECT * FROM Usuarios WHERE usuario_id = ?";  // Ajustar según tu estructura de tabla

    try (Connection conn = Conexion.conecta(); 
         PreparedStatement stmt = conn.prepareStatement(sql)) {
        
        stmt.setInt(1, usuarioId);  // Establecemos el ID del usuario
        try (ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                // Si existe el usuario, creamos un objeto con los datos
                usuario = new Usuario(
                    rs.getInt("usuario_id"),
                    rs.getString("nombre"),
                    rs.getString("dni"),
                    rs.getString("telefono"),
                    rs.getString("direccion"),
                    rs.getString("usuario"),
                    rs.getString("pass"),
                    rs.getString("rol")
                );
            }
        }
    }
    return usuario;
}

    
    public boolean actualizarUsuario(Usuario usuario) throws ClassNotFoundException {
    boolean actualizado = false;
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String query = "UPDATE Usuarios SET nombre = ?, dni = ?, telefono = ?, direccion = ?, usuario = ?, pass = ?, rol = ? WHERE usuario_id = ?";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        
        // Asignar los parámetros a la consulta
        sentencia.setString(1, usuario.getNombre());
        sentencia.setString(2, usuario.getDni());
        sentencia.setString(3, usuario.getTelefono());
        sentencia.setString(4, usuario.getDireccion());
        sentencia.setString(5, usuario.getUsuario());
        sentencia.setString(6, usuario.getPass());  // Este campo no se está editando en el JSP, pero se mantiene aquí para la actualización
        sentencia.setString(7, usuario.getRol());
        sentencia.setInt(8, usuario.getUsuario_id());

        // Ejecutar la actualización
        int filasActualizadas = sentencia.executeUpdate();
        if (filasActualizadas > 0) {
            actualizado = true;
        }

        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return actualizado;
}

    
public Usuario verUsuario(String usr) throws ClassNotFoundException {
    Usuario usuario = null;
    try {
        Conexion c = new Conexion();
        Connection cnx = c.conecta();
        String query = "SELECT * FROM Usuarios WHERE usuario = ?";
        PreparedStatement sentencia = cnx.prepareStatement(query);
        sentencia.setString(1, usr);
        ResultSet rs = sentencia.executeQuery();

        if (rs.next()) {
            usuario = new Usuario();
            usuario.setUsuario_id(rs.getInt("usuario_id"));
            usuario.setNombre(rs.getString("nombre"));
            usuario.setDni(rs.getString("dni"));
            usuario.setTelefono(rs.getString("telefono"));
            usuario.setDireccion(rs.getString("direccion"));
            usuario.setUsuario(rs.getString("usuario"));
            usuario.setPass(rs.getString("pass"));
            usuario.setRol(rs.getString("rol"));
        }

        rs.close();
        sentencia.close();
        cnx.close();
    } catch (SQLException e) {
        System.out.println(e.getMessage());
    }
    return usuario;
}

 // Método para actualizar los datos del usuario en la base de datos
    public boolean actualizarUsuario() throws SQLException, ClassNotFoundException {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = Conexion.conecta(); // Obtener la conexión
            String query = "UPDATE usuarios SET nombre = ?, dni = ?, telefono = ?, direccion = ?, usuario = ?, pass = ?, rol = ? WHERE usuario_id = ?";

            // Preparar la consulta SQL
            stmt = conn.prepareStatement(query);
            stmt.setString(1, this.nombre);
            stmt.setString(2, this.dni);
            stmt.setString(3, this.telefono);
            stmt.setString(4, this.direccion);
            stmt.setString(5, this.usuario);
            stmt.setString(6, this.pass);
            stmt.setString(7, this.rol);
            stmt.setInt(8, this.usuario_id);

            // Ejecutar la actualización
            int filasAfectadas = stmt.executeUpdate();

            // Si se ha actualizado al menos una fila, la actualización fue exitosa
            return filasAfectadas > 0;
        } finally {
            // Cerrar los recursos
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    }
    
    public void crearUsuario() throws ClassNotFoundException {
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            String query = "INSERT INTO Usuarios (nombre, usuario, pass, direccion, dni, telefono, rol) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement sentencia = cnx.prepareStatement(query);
            sentencia.setString(1, this.nombre); // Nombre completo
            sentencia.setString(2, this.usuario); // Nombre de usuario
            sentencia.setString(3, this.pass); // Contraseña
            sentencia.setString(4, this.direccion); // Dirección
            sentencia.setString(5, this.dni); // DNI
            sentencia.setString(6, this.telefono); // Teléfono
            sentencia.setString(7, this.rol); // Rol

            sentencia.executeUpdate();
            sentencia.close();
            cnx.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}

    



