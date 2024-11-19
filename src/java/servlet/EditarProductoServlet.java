package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.Producto;
import beans.FoodTruck.ProductoDAO;

@WebServlet("/EditarProductoServlet")
public class EditarProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productoId = Integer.parseInt(request.getParameter("productoId")); // ID del producto

        ProductoDAO productoDAO = new ProductoDAO();
        try {
            // Obtener detalles del producto
            Producto producto = productoDAO.verProducto(productoId);
            request.setAttribute("productoDetails", producto);

            // Redirigir al formulario de edición
            request.getRequestDispatcher("EditarProducto.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ColaProductos.jsp?error=Error al cargar el producto para editar");
        }
    }
}
