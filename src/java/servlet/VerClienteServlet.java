package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.FoodTruck.Cliente;

@WebServlet("/VerClienteServlet")
public class VerClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el cliente (usuario) desde los parámetros de la solicitud
        String cliente = request.getParameter("cliente");

        Cliente c = new Cliente(); // Instancia de Cliente
        try {
            // Llamar al método para obtener los detalles del cliente
            Cliente clienteDetails = c.verCliente(cliente);
            // Pasar los detalles del cliente como atributo
            request.setAttribute("clienteDetails", clienteDetails);
            // Redirigir a la página verCliente.jsp con los detalles del cliente
            request.getRequestDispatcher("verCliente.jsp").forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Redirigir a ColaClientes.jsp con un mensaje de error si ocurre un problema
            response.sendRedirect("ColaClientes.jsp?error=Error al recuperar cliente");
        }
    }
}
