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

@WebServlet("/EditarPedidoServlet")
public class EditarPedidoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del pedido desde la URL
        String pedidoIdParam = request.getParameter("pedidoId");
        
        if (pedidoIdParam != null && !pedidoIdParam.isEmpty()) {
            try {
                int pedidoId = Integer.parseInt(pedidoIdParam); // Convertir el ID de pedido a entero

                // Crear el objeto PedidoDAO
                PedidoDAO dao = new PedidoDAO();
                // Obtener el pedido por ID
                Pedido pedido = dao.obtenerPedidoPorId(pedidoId);

                // Verificar si el pedido existe
                if (pedido != null) {
                    // Enviar el objeto Pedido a la JSP para mostrar los detalles
                    request.setAttribute("pedido", pedido);
                    request.getRequestDispatcher("EditarPedido.jsp").forward(request, response);
                } else {
                    // Si no se encuentra el pedido, redirigir con mensaje de error
                    request.setAttribute("error", "Pedido no encontrado.");
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

    // Método para manejar POST (cuando se envía el formulario de edición)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del formulario de edición
        int pedidoId = Integer.parseInt(request.getParameter("pedidoId"));
        int clienteId = Integer.parseInt(request.getParameter("clienteId"));
        String estado = request.getParameter("estado");
        double total = Double.parseDouble(request.getParameter("total"));

        // Crear el objeto Pedido con los datos editados
        Pedido pedido = new Pedido(pedidoId, clienteId, null, total, estado);

        // Actualizar el pedido en la base de datos
        PedidoDAO dao = new PedidoDAO();
        boolean exito = dao.actualizarPedido(pedido);

        // Redirigir a la lista de pedidos o mostrar un mensaje de éxito
        if (exito) {
            response.sendRedirect("ColaPedidos.jsp");  // Redirigir después de la actualización
        } else {
            request.setAttribute("error", "Error al actualizar el pedido.");
            request.getRequestDispatcher("EditarPedido.jsp").forward(request, response);
        }
    }
}
