package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.Producto;
import beans.FoodTruck.ProductoDAO;

@WebServlet("/ActualizarProductoServlet")
public class ActualizarProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productoId = Integer.parseInt(request.getParameter("productoId"));
        String nombre = request.getParameter("nombre");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int categoriaId = Integer.parseInt(request.getParameter("categoriaId"));

        Producto producto = new Producto();
        producto.setProductoId(productoId);
        producto.setNombre(nombre);
        producto.setPrecio(precio);
        producto.setCategoriaId(categoriaId);

        ProductoDAO productoDAO = new ProductoDAO();
        try {
            // Actualizar el producto en la base de datos
            boolean actualizado = productoDAO.actualizarProducto(producto);

            if (actualizado) {
                response.sendRedirect("ColaProductos.jsp?success=Producto actualizado correctamente");
            } else {
                response.sendRedirect("EditarProducto.jsp?productoId=" + productoId + "&error=Error al actualizar el producto");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("EditarProducto.jsp?productoId=" + productoId + "&error=Error al actualizar el producto");
        }
    }
}
