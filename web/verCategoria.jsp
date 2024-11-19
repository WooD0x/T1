<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Categoria"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Detalles de la Categoría</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Detalles de la Categoría</h3>
            </div>
            <div class="card-body">
                <%
                    // Obtener los detalles de la categoría pasados desde el servlet
                    Categoria categoriaDetails = (Categoria) request.getAttribute("categoriaDetails");
                    if (categoriaDetails != null) {
                %>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><strong>ID:</strong> <%= categoriaDetails.getCategoria_id() %></li>
                    <li class="list-group-item"><strong>Nombre:</strong> <%= categoriaDetails.getNombre() %></li>
                </ul>
                <%
                    } else {
                %>
                <div class="alert alert-danger" role="alert">
                    No se encontró información de la categoría.
                </div>
                <%
                    }
                %>
            </div>
            <div class="card-footer text-end">
                <a href="ColaCategorias.jsp" class="btn btn-secondary">Volver</a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
