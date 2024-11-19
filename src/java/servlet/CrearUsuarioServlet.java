package servlet;

import beans.FoodTruck.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CrearUsuarioServlet")
public class CrearUsuarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recoger parámetros del formulario
        String nombre = request.getParameter("nombre");
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String rol = request.getParameter("rol");

        // Crear un objeto Usuario y asignar los valores
        Usuario nuevoUsuario = new Usuario();
        nuevoUsuario.setNombre(nombre);
        nuevoUsuario.setUsuario(usuario);
        nuevoUsuario.setPass(password);
        nuevoUsuario.setDireccion(direccion);
        nuevoUsuario.setDni(dni);
        nuevoUsuario.setTelefono(telefono);
        nuevoUsuario.setRol(rol);

        try {
            // Llamar al método para crear el usuario en la base de datos
            nuevoUsuario.crearUsuario();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir al listado de usuarios
        response.sendRedirect("ColaUsuarios.jsp");
    }
}
