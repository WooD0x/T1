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
import beans.FoodTruck.Conexion;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/CrearProductoServlet")

public class CrearProductoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del formulario
        String nombre = request.getParameter("nombre");
        double precio = Double.parseDouble(request.getParameter("precio"));
        int categoriaId = Integer.parseInt(request.getParameter("categoria_id"));

        // Crear el objeto Producto
        Producto nuevoProducto = new Producto();
        nuevoProducto.setNombre(nombre);
        nuevoProducto.setPrecio(precio);
        nuevoProducto.setCategoriaId(categoriaId);

        // Crear un objeto ProductoDAO para insertar el producto
        ProductoDAO productoDAO = new ProductoDAO();
        boolean productoCreado = productoDAO.crearProducto(nuevoProducto);

        // Si la creación fue exitosa, redirigir a la lista de productos
        if (productoCreado) {
            response.sendRedirect("ColaProductos.jsp");
        } else {
            // Si hubo un error, mostrar mensaje de error
            request.setAttribute("errorMessage", "Error al crear el producto.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("CrearProducto.jsp");
            dispatcher.forward(request, response);
        }
    }
}