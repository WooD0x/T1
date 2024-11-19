package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.Categoria;

@WebServlet("/VerCategoriaServlet")
public class VerCategoriaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener la categoría desde los parámetros de la solicitud
        String categoria = request.getParameter("categoria");

        Categoria c = new Categoria(); // Instancia de Categoria
        try {
            // Llamar al método para obtener los detalles de la categoría
            Categoria categoriaDetails = c.verCategoria(categoria);
            // Pasar los detalles de la categoría como atributo
            request.setAttribute("categoriaDetails", categoriaDetails);
            // Redirigir a la página verCategoria.jsp con los detalles de la categoría
            request.getRequestDispatcher("verCategoria.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Redirigir a ColaCategorias.jsp con un mensaje de error si ocurre un problema
            response.sendRedirect("ColaCategorias.jsp?error=Error al recuperar categoría");
        }
    }
}
