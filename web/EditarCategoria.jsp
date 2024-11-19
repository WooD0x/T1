<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Categoria"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Editar Categoría</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Editar Categoría</h2>
        <%
            // Obtener el ID de la categoría a editar desde la URL
            String categoriaParam = request.getParameter("categoria");
            Categoria c = new Categoria();
            // Llamar al método verCategoria para obtener los datos de la categoría
            Categoria categoria = c.verCategoria(categoriaParam);
        %>
        <form action="EditarCategoriaServlet" method="post">
            <!-- Pasar el ID de la categoría de manera oculta para la actualización -->
            <input type="hidden" name="categoria_id" value="<%= categoria.getCategoria_id() %>" />
            
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre de Categoría</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="<%= categoria.getNombre() %>" required />
            </div>

            <button type="submit" class="btn btn-primary">Actualizar Categoría</button>
            <a href="ColaCategorias.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
