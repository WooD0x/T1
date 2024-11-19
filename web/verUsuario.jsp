<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Usuario"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Detalles del Usuario</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Detalles del Usuario</h3>
            </div>
            <div class="card-body">
                <%
                    // Obtener los detalles del usuario pasados desde el servlet
                    Usuario usuarioDetails = (Usuario) request.getAttribute("usuarioDetails");
                    if (usuarioDetails != null) {
                %>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><strong>ID:</strong> <%= usuarioDetails.getUsuario_id() %></li>
                    <li class="list-group-item"><strong>Usuario:</strong> <%= usuarioDetails.getUsuario() %></li>
                    <li class="list-group-item"><strong>Contraseña:</strong> <%= usuarioDetails.getPass() %></li>
                    <li class="list-group-item"><strong>Dirección:</strong> <%= usuarioDetails.getDireccion() %></li>
                    <li class="list-group-item"><strong>DNI:</strong> <%= usuarioDetails.getDni() %></li>
                    <li class="list-group-item"><strong>Teléfono:</strong> <%= usuarioDetails.getTelefono() %></li>
                    <li class="list-group-item"><strong>Rol:</strong> <%= usuarioDetails.getRol() %></li>
                </ul>
                <%
                    } else {
                %>
                <div class="alert alert-danger" role="alert">
                    No se encontró información del usuario.
                </div>
                <%
                    }
                %>
            </div>
            <div class="card-footer text-end">
                <a href="ColaUsuarios.jsp" class="btn btn-secondary">Volver</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

