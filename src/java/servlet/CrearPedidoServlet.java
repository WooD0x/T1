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

@WebServlet("/CrearPedidoServlet")
public class CrearPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario (supón que el cliente ya está autenticado)
        int clienteId = Integer.parseInt(request.getParameter("clienteId"));
        Timestamp fecha = new Timestamp(System.currentTimeMillis());  // Fecha actual
        double total = Double.parseDouble(request.getParameter("total"));
        String estado = request.getParameter("estado");

        // Crear objeto Pedido con los datos obtenidos del formulario
        Pedido nuevoPedido = new Pedido();
        nuevoPedido.setClienteId(clienteId);
        nuevoPedido.setFecha(fecha);
        nuevoPedido.setTotal(total);
        nuevoPedido.setEstado(estado);

        // Llamar al DAO para crear el pedido en la base de datos
        PedidoDAO dao = new PedidoDAO();
        boolean pedidoCreado = dao.crearPedido(nuevoPedido);

        if (pedidoCreado) {
            // Redirigir a una página de confirmación o listado de pedidos
            response.sendRedirect("ColaPedidos.jsp");
        } else {
            // Mostrar error si no se pudo crear el pedido
            request.setAttribute("error", "Error al crear el pedido.");
            request.getRequestDispatcher("CrearPedido.jsp").forward(request, response);
        }
    }
}


