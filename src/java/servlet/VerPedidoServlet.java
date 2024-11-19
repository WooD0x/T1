
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
import beans.FoodTruck.Producto;
import beans.FoodTruck.ProductoDAO;
import beans.FoodTruck.PedidoDAO;
import beans.FoodTruck.Pedido;
import beans.FoodTruck.Conexion;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/VerPedidoServlet")
public class VerPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del pedido desde los parámetros de la URL
        int pedidoId = Integer.parseInt(request.getParameter("pedidoId"));

        // Crear una instancia del DAO
        PedidoDAO dao = new PedidoDAO();
        // Obtener el pedido por ID
        Pedido pedido = dao.obtenerPedidoPorId(pedidoId);

        // Verificar si el pedido fue encontrado
        if (pedido != null) {
            // Enviar el objeto Pedido a la JSP
            request.setAttribute("pedido", pedido);
            request.getRequestDispatcher("VerPedido.jsp").forward(request, response);
        } else {
            // Si no se encuentra el pedido, redirigir a una página de error o lista de pedidos
            request.setAttribute("error", "Pedido no encontrado.");
            request.getRequestDispatcher("ColaPedidos.jsp").forward(request, response);
        }
    }
}
