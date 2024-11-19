<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="beans.FoodTruck.Producto"%>
<%@page import="beans.FoodTruck.Categoria"%>
<%@page import="beans.FoodTruck.Categoria"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Crear Producto</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Crear Nuevo Producto</h2>
        
        <% 
            // Obtener las categorías de la base de datos
            Categoria categoriaDAO = new Categoria();
            List<Categoria> categorias = categoriaDAO.listarCategorias();
        %>

        <form action="CrearProductoServlet" method="post">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre del Producto</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required />
            </div>

            <div class="mb-3">
                <label for="precio" class="form-label">Precio</label>
                <input type="number" class="form-control" id="precio" name="precio" step="0.01" required />
            </div>

            <div class="mb-3">
                <label for="categoria" class="form-label">Categoría</label>
                <select class="form-select" id="categoria" name="categoria_id" required>
                    <option value="" disabled selected>Seleccione una categoría</option>
                    <% 
                        // Llenar el select con las categorías obtenidas
                        for (Categoria categoria : categorias) {
                    %>
                        <option value="<%= categoria.getCategoria_id() %>"><%= categoria.getNombre() %></option>
                    <% 
                        }
                    %>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Crear Producto</button>
            <a href="ColaProductos.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
