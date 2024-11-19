package servlet;

import beans.FoodTruck.Usuario;
import beans.FoodTruck.Conexion;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EliminarUsuarioServlet")
public class EliminarUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EliminarUsuarioServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtén el usuario_id desde la solicitud
        int usuarioId = Integer.parseInt(request.getParameter("usuario_id"));
        
        // Crear una instancia de Usuario y eliminarlo
        Usuario usuario = new Usuario();
        boolean eliminado = false;
        try {
            eliminado = usuario.eliminarUsuarioPorId(usuarioId);  // Llamamos al método para eliminar al usuario
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        if (eliminado) {
            // Si la eliminación fue exitosa, redirige a la página de lista de usuarios o donde sea apropiado
            response.sendRedirect("ColaUsuarios.jsp");  // Redirigir a la página de usuarios
        } else {
            // Si hubo un error, puedes mostrar un mensaje o redirigir a una página de error
            request.setAttribute("mensaje", "Error al eliminar el usuario.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
