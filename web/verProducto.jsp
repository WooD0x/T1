<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Producto"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Detalles del Producto</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Detalles del Producto</h3>
            </div>
            <div class="card-body">
                <%
                    // Obtener los detalles del producto pasados desde el servlet
                    Producto productoDetails = (Producto) request.getAttribute("productoDetails");
                    if (productoDetails != null) {
                %>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><strong>ID:</strong> <%= productoDetails.getProductoId() %></li>
                    <li class="list-group-item"><strong>Nombre:</strong> <%= productoDetails.getNombre() %></li>
                    <li class="list-group-item"><strong>Precio:</strong> S/. <%= productoDetails.getPrecio() %></li>
                    <li class="list-group-item"><strong>Categoría ID:</strong> <%= productoDetails.getCategoriaId() %></li>
                </ul>
                <%
                    } else {
                %>
                <div class="alert alert-danger" role="alert">
                    No se encontró información del producto.
                </div>
                <%
                    }
                %>
            </div>
            <div class="card-footer text-end">
                <a href="ColaProductos.jsp" class="btn btn-secondary">Volver</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
