<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Detalle de Pedido</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Crear Detalle de Pedido</h2>

        <!-- Mostrar mensaje si la operación fue exitosa o no -->
        <%
            String mensaje = (String) request.getAttribute("mensaje");
            if (mensaje != null) {
        %>
            <div class="alert alert-info">
                <%= mensaje %>
            </div>
        <% } %>

        <!-- Formulario para agregar un nuevo detalle de pedido -->
        <form action="CrearDetallesPedidoServlet" method="post">
            <div class="form-group">
                <label for="pedidoId">ID del Pedido:</label>
                <input type="text" class="form-control" id="pedidoId" name="pedidoId" required>
            </div>

            <div class="form-group">
                <label for="productoId">ID del Producto:</label>
                <input type="text" class="form-control" id="productoId" name="productoId" required>
            </div>

            <div class="form-group">
                <label for="cantidad">Cantidad:</label>
                <input type="number" class="form-control" id="cantidad" name="cantidad" required>
            </div>

            <div class="form-group">
                <label for="subtotal">Subtotal:</label>
                <input type="text" class="form-control" id="subtotal" name="subtotal" required>
            </div>

            <button type="submit" class="btn btn-primary">Agregar Detalle</button>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
