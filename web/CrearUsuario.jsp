<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.FoodTruck.Usuario"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title>Crear Usuario</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Crear Nuevo Usuario</h2>
        <form action="CrearUsuarioServlet" method="post">
            
            <div class="mb-3">
                <label for="usuario" class="form-label">Nombre de Usuario</label>
                <input type="text" class="form-control" id="usuario" name="usuario" required />
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" required />
            </div>

            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre Completo</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required />
            </div>

            <div class="mb-3">
                <label for="dni" class="form-label">DNI</label>
                <input type="text" class="form-control" id="dni" name="dni" required maxlength="8" />
            </div>

            <div class="mb-3">
                <label for="telefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="telefono" name="telefono" required maxlength="15" />
            </div>

            <div class="mb-3">
                <label for="direccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="direccion" name="direccion" required />
            </div>

            <div class="mb-3">
                <label for="rol" class="form-label">Rol</label>
                <select class="form-control" id="rol" name="rol" required>
                    <option value="Administrador">Administrador</option>
                    <option value="Empleado">Empleado</option>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Crear Usuario</button>
            <a href="ColaUsuarios.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
