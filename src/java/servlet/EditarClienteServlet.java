package servlet;

import beans.FoodTruck.Cliente;  // Asegúrate de que la clase Cliente está en el paquete correcto
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/EditarClienteServlet")
public class EditarClienteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario de la JSP
        int cliente_id = Integer.parseInt(request.getParameter("cliente_id"));
        String nombre = request.getParameter("nombre");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String usuario = request.getParameter("usuario");
        String pass = request.getParameter("pass");

        // Crear un objeto Cliente y llamar al método editarCliente
        Cliente clienteObj = new Cliente();
        try {
            // Llamar al método editarCliente de la clase Cliente para actualizar los datos
            clienteObj.editarCliente(cliente_id, nombre, dni, telefono, direccion, usuario, pass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir a la página donde se lista la cola de clientes (o donde necesites redirigir)
        response.sendRedirect("ColaClientes.jsp");
    }
}
