package servlet;

import beans.FoodTruck.Cliente; // Importa la clase Cliente
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EliminarClienteServlet")
public class EliminarClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EliminarClienteServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el cliente_id desde la solicitud
        int clienteId = Integer.parseInt(request.getParameter("cliente_id"));

        // Crear una instancia de Cliente y eliminarlo
        Cliente cliente = new Cliente();
        boolean eliminado = false;
        try {
            // Llamamos al método para eliminar el cliente
            eliminado = cliente.eliminarClientePorId(clienteId);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (eliminado) {
            // Si la eliminación fue exitosa, redirige a la página de lista de clientes
            response.sendRedirect("ColaClientes.jsp");  // Redirigir a la página de clientes
        } else {
            // Si hubo un error, muestra un mensaje o redirige a una página de error
            request.setAttribute("mensaje", "Error al eliminar el cliente.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
