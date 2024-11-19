package servlet;

import beans.FoodTruck.Cliente;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CrearClienteServlet")
public class CrearClienteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recoger parámetros del formulario
        String nombre = request.getParameter("nombre");
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        String telefono = request.getParameter("telefono");

        // Crear un objeto Cliente y asignar los valores
        Cliente nuevoCliente = new Cliente();
        nuevoCliente.setNombre(nombre);
        nuevoCliente.setUsuario(usuario);
        nuevoCliente.setPass(password);
        nuevoCliente.setDireccion(direccion);
        nuevoCliente.setDni(dni);
        nuevoCliente.setTelefono(telefono);

        try {
            // Llamar al método para crear el cliente en la base de datos
            nuevoCliente.crearCliente();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Manejar el error (opcional)
        }

        // Redirigir al listado de clientes
        response.sendRedirect("ColaClientes.jsp");
    }
}
