package servlet;

import beans.FoodTruck.Categoria;  // Asegúrate de que la clase Categoria está en el paquete correcto
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EliminarCategoriaServlet")
public class EliminarCategoriaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EliminarCategoriaServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el categoria_id desde la solicitud
        int categoriaId = Integer.parseInt(request.getParameter("categoria_id"));

        // Crear una instancia de Categoria y eliminarla
        Categoria categoria = new Categoria();
        boolean eliminado = false;
        try {
            // Llamamos al método para eliminar la categoría
            eliminado = categoria.eliminarCategoriaPorId(categoriaId);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (eliminado) {
            // Si la eliminación fue exitosa, redirige a la página de lista de categorías
            response.sendRedirect("ColaCategorias.jsp");  // Redirigir a la página de categorías
        } else {
            // Si hubo un error, muestra un mensaje o redirige a una página de error
            request.setAttribute("mensaje", "Error al eliminar la categoría.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
