<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Categoria"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Crear Categoría</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Crear Nueva Categoría</h2>
        <form action="CrearCategoriaServlet" method="post">
            
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre de Categoría</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required />
            </div>

            <button type="submit" class="btn btn-primary">Crear Categoría</button>
            <a href="ColaCategorias.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
