package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.ProductoDAO;

@WebServlet("/EliminarProductoServlet")
public class EliminarProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productoId = Integer.parseInt(request.getParameter("productoId")); // Obtener el ID del producto

        ProductoDAO productoDAO = new ProductoDAO();
        try {
            // Eliminar el producto
            boolean eliminado = productoDAO.eliminarProducto(productoId);

            if (eliminado) {
                response.sendRedirect("ColaProductos.jsp?success=Producto eliminado correctamente");
            } else {
                response.sendRedirect("ColaProductos.jsp?error=Error al eliminar el producto");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ColaProductos.jsp?error=Error al eliminar el producto");
        }
    }
}
