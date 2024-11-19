package servlet;

import beans.FoodTruck.Categoria;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CrearCategoriaServlet")
public class CrearCategoriaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recoger parámetros del formulario
        String nombre = request.getParameter("nombre");

        // Crear un objeto Categoria y asignar los valores
        Categoria nuevaCategoria = new Categoria();
        nuevaCategoria.setNombre(nombre);

        try {
            // Llamar al método para crear la categoría en la base de datos
            nuevaCategoria.crearCategoria();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir al listado de categorías
        response.sendRedirect("ColaCategorias.jsp");
    }
}
