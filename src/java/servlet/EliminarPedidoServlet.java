/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

@WebServlet("/EliminarPedidoServlet")
public class EliminarPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del pedido desde la URL
        String pedidoIdParam = request.getParameter("pedidoId");

        if (pedidoIdParam != null && !pedidoIdParam.isEmpty()) {
            try {
                int pedidoId = Integer.parseInt(pedidoIdParam); // Convertir el ID de pedido a entero

                // Crear el objeto PedidoDAO
                PedidoDAO dao = new PedidoDAO();
                // Eliminar el pedido por ID
                boolean exito = dao.eliminarPedido(pedidoId);

                // Verificar si la eliminación fue exitosa
                if (exito) {
                    response.sendRedirect("ColaPedidos.jsp");  // Redirigir a la lista de pedidos
                } else {
                    request.setAttribute("error", "Error al eliminar el pedido.");
                    request.getRequestDispatcher("ColaPedidos.jsp").forward(request, response);
                }
            } catch (NumberFormatException e) {
                // Si el ID no es válido, redirigir con mensaje de error
                request.setAttribute("error", "ID de pedido inválido.");
                request.getRequestDispatcher("ColaPedidos.jsp").forward(request, response);
            }
        } else {
            // Si no se ha proporcionado un ID de pedido, redirigir con mensaje de error
            request.setAttribute("error", "No se ha proporcionado un ID de pedido.");
            request.getRequestDispatcher("ColaPedidos.jsp").forward(request, response);
        }
    }
}
