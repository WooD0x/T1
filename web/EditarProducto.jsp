<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Producto"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Editar Producto</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-warning text-white">
                <h3 class="mb-0">Editar Producto</h3>
            </div>
            <div class="card-body">
                <%
                    Producto productoDetails = (Producto) request.getAttribute("productoDetails");
                    if (productoDetails != null) {
                %>
                <form action="ActualizarProductoServlet" method="POST">
                    <input type="hidden" name="productoId" value="<%= productoDetails.getProductoId() %>" />

                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="<%= productoDetails.getNombre() %>" required />
                    </div>

                    <div class="mb-3">
                        <label for="precio" class="form-label">Precio</label>
                        <input type="number" step="0.01" class="form-control" id="precio" name="precio" value="<%= productoDetails.getPrecio() %>" required />
                    </div>

                    <div class="mb-3">
                        <label for="categoriaId" class="form-label">Categoría ID</label>
                        <input type="number" class="form-control" id="categoriaId" name="categoriaId" value="<%= productoDetails.getCategoriaId() %>" required />
                    </div>

                    <button type="submit" class="btn btn-success">Guardar Cambios</button>
                    <a href="ColaProductos.jsp" class="btn btn-secondary">Cancelar</a>
                </form>
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
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
