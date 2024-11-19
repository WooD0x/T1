package servlet;

import beans.FoodTruck.Usuario;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EditarUsuarioServlet")
public class EditarUsuarioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario de la JSP
        int usuario_id = Integer.parseInt(request.getParameter("usuario_id"));
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String usuario = request.getParameter("usuario");
        String pass = request.getParameter("pass");
        String rol = request.getParameter("rol");

        // Crear un objeto Usuario y llamar al método editarUsuario
        Usuario usuarioObj = new Usuario();
        try {
            // Llamar al método editarUsuario de la clase Usuario para actualizar los datos
            usuarioObj.editarUsuario(usuario_id, nombre, dni, telefono, direccion, usuario, pass, rol);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir a la página donde se lista la cola de usuarios
        response.sendRedirect("ColaUsuarios.jsp");
    }
}
