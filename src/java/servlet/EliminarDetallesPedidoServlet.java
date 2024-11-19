import beans.FoodTruck.Conexion;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.DetallesPedido;
import beans.FoodTruck.DetallesPedidoDAO;

@WebServlet("/EliminarDetallesPedidoServlet")
public class EliminarDetallesPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del detalle del pedido desde la URL
        String detalleIdParam = request.getParameter("detalleId");

        if (detalleIdParam != null && !detalleIdParam.isEmpty()) {
            try {
                int detalleId = Integer.parseInt(detalleIdParam); // Convertir el ID de detalle a entero

                // Crear el objeto DetallesPedidoDAO
                DetallesPedidoDAO dao = new DetallesPedidoDAO();
                // Eliminar el detalle del pedido por ID
                boolean exito = dao.eliminarDetallePedido(detalleId);

                // Verificar si la eliminación fue exitosa
                if (exito) {
                    response.sendRedirect("ColaDetallesPedidos.jsp");  // Redirigir a la página de detalles del pedido
                } else {
                    request.setAttribute("error", "Error al eliminar el detalle del pedido.");
                    request.getRequestDispatcher("ColaDetallesPedidos.jsp").forward(request, response);
                }
            } catch (NumberFormatException e) {
                // Si el ID no es válido, redirigir con mensaje de error
                request.setAttribute("error", "ID de detalle de pedido inválido.");
                request.getRequestDispatcher("ColaDetallesPedidos.jsp").forward(request, response);
            }
        } else {
            // Si no se ha proporcionado un ID de detalle de pedido, redirigir con mensaje de error
            request.setAttribute("error", "No se ha proporcionado un ID de detalle de pedido.");
            request.getRequestDispatcher("ColaDetallesPedidos.jsp").forward(request, response);
        }
    }
}