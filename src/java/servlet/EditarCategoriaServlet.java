package servlet;

import beans.FoodTruck.Categoria;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EditarCategoriaServlet")
public class EditarCategoriaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario de la JSP
        int categoria_id = Integer.parseInt(request.getParameter("categoria_id"));
        String nombre = request.getParameter("nombre");

        // Crear un objeto Categoria y llamar al método editarCategoria
        Categoria categoriaObj = new Categoria();
        try {
            // Llamar al método editarCategoria de la clase Categoria para actualizar los datos
            categoriaObj.editarCategoria(categoria_id, nombre);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir a la página donde se lista la cola de categorías (o donde necesites redirigir)
        response.sendRedirect("ColaCategorias.jsp");
    }
}
