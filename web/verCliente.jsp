<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Cliente"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Detalles del Cliente</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Detalles del Cliente</h3>
            </div>
            <div class="card-body">
                <%
                    // Obtener los detalles del cliente pasados desde el servlet
                    Cliente clienteDetails = (Cliente) request.getAttribute("clienteDetails");
                    if (clienteDetails != null) {
                %>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><strong>ID:</strong> <%= clienteDetails.getClienteId() %></li>
                    <li class="list-group-item"><strong>Usuario:</strong> <%= clienteDetails.getUsuario() %></li>
                    <li class="list-group-item"><strong>Contraseña:</strong> <%= clienteDetails.getPass() %></li>
                    <li class="list-group-item"><strong>Dirección:</strong> <%= clienteDetails.getDireccion() %></li>
                    <li class="list-group-item"><strong>DNI:</strong> <%= clienteDetails.getDni() %></li>
                    <li class="list-group-item"><strong>Teléfono:</strong> <%= clienteDetails.getTelefono() %></li>
                </ul>
                <%
                    } else {
                %>
                <div class="alert alert-danger" role="alert">
                    No se encontró información del cliente.
                </div>
                <%
                    }
                %>
            </div>
            <div class="card-footer text-end">
                <a href="ColaClientes.jsp" class="btn btn-secondary">Volver</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
