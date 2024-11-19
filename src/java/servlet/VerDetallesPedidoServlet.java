package servlet;

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

@WebServlet("/VerDetallesPedidoServlet")
public class VerDetallesPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del pedido desde los parámetros de la URL
        int pedidoId = Integer.parseInt(request.getParameter("pedidoId"));

        // Crear una instancia del DAO
        DetallesPedidoDAO detallesDAO = new DetallesPedidoDAO();
        // Obtener los detalles del pedido por ID
        List<DetallesPedido> listaDetallesPedido = detallesDAO.obtenerDetallesPorPedidoId(pedidoId);

        // Verificar si se encontraron detalles
        if (!listaDetallesPedido.isEmpty()) {
            // Enviar la lista de detalles del pedido a la JSP
            request.setAttribute("listaDetallesPedido", listaDetallesPedido);
            request.getRequestDispatcher("VerDetallesPedido.jsp").forward(request, response);
        } else {
            // Si no se encuentran detalles, redirigir a una página de error o lista de pedidos
            request.setAttribute("error", "No se encontraron detalles para este pedido.");
            request.getRequestDispatcher("ColaPedidos.jsp").forward(request, response);
        }
    }
}
