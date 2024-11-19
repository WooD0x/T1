package servlet;

import beans.FoodTruck.DetallesPedido;
import beans.FoodTruck.DetallesPedidoDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CrearDetallesPedidoServlet")
public class CrearDetallesPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CrearDetallesPedidoServlet() {
        super();
    }

    // Maneja la solicitud POST (cuando se envíen los datos del formulario)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del formulario
        int pedidoId = Integer.parseInt(request.getParameter("pedidoId"));
        int productoId = Integer.parseInt(request.getParameter("productoId"));
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));
        double subtotal = Double.parseDouble(request.getParameter("subtotal"));

        // Crear un objeto DetallesPedido con los datos recibidos
        DetallesPedido detalle = new DetallesPedido();
        detalle.setPedidoId(pedidoId);
        detalle.setProductoId(productoId);
        detalle.setCantidad(cantidad);
        detalle.setSubtotal(subtotal);

        // Usar el DAO para agregar el detalle de pedido
        DetallesPedidoDAO detallesPedidoDAO = new DetallesPedidoDAO();
        boolean resultado = detallesPedidoDAO.agregarDetallePedido(detalle);

        // Enviar un mensaje al usuario basado en el resultado
        if (resultado) {
            request.setAttribute("mensaje", "Detalle de pedido agregado exitosamente.");
        } else {
            request.setAttribute("mensaje", "Error al agregar el detalle de pedido.");
        }

        // Redirigir a la página de detalles del pedido o mostrar el mensaje
        request.getRequestDispatcher("CrearDetallesPedido.jsp").forward(request, response);
    }
}
