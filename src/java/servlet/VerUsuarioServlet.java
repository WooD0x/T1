package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.Usuario;

@WebServlet("/VerUsuarioServlet")
public class VerUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        Usuario u = new Usuario();
        try {
            Usuario usuarioDetails = u.verUsuario(usuario);
            request.setAttribute("usuarioDetails", usuarioDetails);
            request.getRequestDispatcher("verUsuario.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("ColaUsuarios.jsp?error=Error al recuperar usuario");
        }
    }
}
