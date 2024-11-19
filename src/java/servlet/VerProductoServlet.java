package servlet;

import beans.FoodTruck.Producto;
import beans.FoodTruck.ProductoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import beans.FoodTruck.Conexion;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/VerProductoServlet")
public class VerProductoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el ID del producto desde los parámetros
        String idParam = request.getParameter("producto_id");
        
        try {
            int productoId = Integer.parseInt(idParam); // Convertir a entero
            ProductoDAO productoDAO = new ProductoDAO();
            
            // Buscar el producto en la base de datos
            Producto productoDetails = productoDAO.verProducto(productoId);
            
            if (productoDetails != null) {
                // Pasar los detalles del producto al JSP
                request.setAttribute("productoDetails", productoDetails);
                request.getRequestDispatcher("verProducto.jsp").forward(request, response);
            } else {
                // Si no se encuentra el producto, redirigir con un mensaje de error
                response.sendRedirect("ColaProductos.jsp?error=Producto no encontrado");
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendRedirect("ColaProductos.jsp?error=ID de producto inválido");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("ColaProductos.jsp?error=Error al acceder a la base de datos");
        }
    }
}
